/*
 * [y] hybris Platform
 *
 * Copyright (c) 2000-2016 hybris AG
 * All rights reserved.
 *
 * This software is the confidential and proprietary information of hybris
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with hybris.
 *
 *
 */
package de.hybris.platform.publicsectoracceleratoraddon.controllers.cms;

import de.hybris.platform.publicsectoracceleratoraddon.controllers.ControllerConstants;
import de.hybris.platform.publicsectorservices.model.PSSearchBoxComponentModel;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * This is PSSearchBoxComponentController controller.
 */
@Controller("PSSearchBoxComponentController")
@RequestMapping(value = ControllerConstants.Actions.Cms.PSSearchBoxComponent)

public class PSSearchBoxComponentController extends SubstitutingCMSAddOnComponentController<PSSearchBoxComponentModel>
{

	@Override
	protected void fillModel(final HttpServletRequest request, final Model model, final PSSearchBoxComponentModel component)
	{
		// YTODO Auto-generated method stub

	}

}
