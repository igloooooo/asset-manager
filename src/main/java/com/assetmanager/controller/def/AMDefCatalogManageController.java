package com.assetmanager.controller.def;

import com.assetmanager.model.asset.def.AssetDefCatalogType;
import com.assetmanager.model.asset.def.BaseAssetDefCatalog;
import com.assetmanager.service.assetDef.AssetDefCatalogService;
import com.assetmanager.service.assetDef.AssetDefService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/amDefCatalog")
public class AMDefCatalogManageController
{
    @Resource
    private AssetDefCatalogService assetDefCatalogService;

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public List<BaseAssetDefCatalog> getCatalogList(@RequestParam("catalogType") String catalogType)
    {
        return assetDefCatalogService.findAssetDefCatalogList(AssetDefCatalogType.findTypeByName(catalogType));
    }

}
