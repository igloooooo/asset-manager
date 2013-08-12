package com.assetmanager.controller;

import com.assetmanager.model.auth.UserAccount;
import com.assetmanager.service.auth.EnhancedUserDetailsService;
import com.assetmanager.service.merchant.MerchantService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-12
 * Time: 下午10:07
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class MerchantManageController {
    @Resource
    private MerchantService merchantService;

    @RequestMapping(value = "/merchant", method = RequestMethod.GET)
    public final String merchantManager(final ModelMap modelMap)
    {
        return "merchant";
    }
}
