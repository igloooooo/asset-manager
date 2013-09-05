package com.assetmanager.controller;

import com.assetmanager.model.asset.def.Merchant;
import com.assetmanager.model.auth.UserAccount;
import com.assetmanager.model.dto.Response;
import com.assetmanager.service.auth.EnhancedUserDetailsService;
import com.assetmanager.service.merchant.MerchantService;
import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-12
 * Time: 下午10:07
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/merchant")
public class MerchantManageController {
    @Resource
    private MerchantService merchantService;

    @RequestMapping(method = RequestMethod.GET)
    public final String merchantManager(final ModelMap modelMap)
    {
        return "merchant/merchantManager";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public final List<Merchant> merchantList()
    {
        return merchantService.getMerchantList();
    }
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public final Response createMerchant(HttpEntity<Merchant> merchant, HttpServletRequest request)
    {
        merchantService.createMerchant(merchant.getBody());
        return new Response(true, "");
    }
}
