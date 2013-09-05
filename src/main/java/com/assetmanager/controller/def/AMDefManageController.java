package com.assetmanager.controller.def;

import com.assetmanager.model.asset.def.AMClampDef;
import com.assetmanager.service.assetDef.AssetDefService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/amDef")
public class AMDefManageController
{
    @Resource
    private AssetDefService assetDefService;

    @RequestMapping(value = "/amClamp", method = RequestMethod.GET)
    @ResponseBody
    public List<AMClampDef> getClamDefList()
    {
        return assetDefService.getAmClampDefList();
    }
}
