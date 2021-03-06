<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags/addons/publicsectoracceleratoraddon/responsive/user"%>

<sec:authorize access="hasRole('ROLE_ANONYMOUS')">
	<c:url value="/login/checkout/guest" var="guestCheckoutUrl" />
	<c:url value="/login/checkout/unidentified" var="unidentifiedCheckoutUrl" />
	<user:guestCheckout actionNameKey="checkout.login.guestCheckout" action="${guestCheckoutUrl}" />
</sec:authorize>

