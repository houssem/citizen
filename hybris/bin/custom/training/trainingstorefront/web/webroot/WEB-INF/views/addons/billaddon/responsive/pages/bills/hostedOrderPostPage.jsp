<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<spring:htmlEscape defaultHtmlEscape="true" />

<template:page pageTitle="${pageTitle}" hideHeaderLinks="true">
	<input type="hidden" id="hopDebugMode" data-hop-debug-mode="${hopDebugMode}" />
	<spring:url value="/_ui/common/images/spinner.gif" var="spinnerUrl" />
	<div id="item_container_holder">

		<div class="item_container">
			<div>
				<h3>
				 <span tabindex="0">
					<spring:theme code="checkout.multi.hostedOrderPostPage.header.wait"/>
					<img src="${commonResourcePath}/images/spinner.gif" alt="<spring:theme code="checkout.multi.hostedOrderPostPage.header.wait" />
				 </span>
				</h3>
				<hr/>
			</div>
		</div>

		<c:if test="${hopDebugMode}">
			<div class="item_container">
				<div id="debugWelcome">
					<h3>
					<span tabindex="0">
						<spring:theme code="checkout.multi.hostedOrderPostPage.header.debug"/>
					</span>
					</h3>
					<hr/>
				</div>
			</div>
		</c:if>

		<div class="item_container">
			<form:form id="hostedOrderPagePostForm" name="hostedOrderPagePostForm" action="${hostedOrderPageData.postUrl}" method="POST">
			<input type="hidden" name="source" id="source" value='${source}' /> 
				<div id="postFormItems">
					<dl>
						<c:forEach items="${hostedOrderPageData.parameters}" var="entry" varStatus="status">
							<c:choose>
								<c:when test="${hopDebugMode}">
									<dt><label for="${entry.key}" class="required"><c:out value="${entry.key}"/></label></dt>
									<dd><input type="text" id="${entry.key}" name="${entry.key}" value="${ycommerce:encodeHTML(entry.value)}" tabindex="${status.count + 1}"/></dd>
								</c:when>
								<c:otherwise>
									<input type="hidden" id="${entry.key}" name="${entry.key}" value="${ycommerce:encodeHTML(entry.value)}" />
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</dl>
				</div>
				<c:if test="${hopDebugMode}">
					<div class="rightcol">
						<spring:theme code="checkout.multi.hostedOrderPostPage.button.submit" var="submitButtonLabel"/>
						<input id="button.submit" class="submitButtonText" type="submit" title="${submitButtonLabel}" value="${submitButtonLabel}"/>
					</div>
				</c:if>
			</form:form>
		</div>
	</div>
</template:page>
