package com.assetmanager.service.assetDef;

import com.assetmanager.model.asset.def.AssetDefCatalogType;
import com.assetmanager.model.asset.def.BaseAssetDefCatalog;
import com.assetmanager.service.dao.GenericDAO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AssetDefCatalogService
{
    @Resource
    private GenericDAO genericDAO;

    public List<BaseAssetDefCatalog> findAssetDefCatalogList(AssetDefCatalogType type)
    {
        if (type == null)
        {
            // return all list
            return (List<BaseAssetDefCatalog>)genericDAO.findAll(BaseAssetDefCatalog.class);
        }
        else
        {
            return (List<BaseAssetDefCatalog>)genericDAO.findByNamedQuery(BaseAssetDefCatalog.class,
                BaseAssetDefCatalog.FIND_BY_TYPE, new Object[]{type});
        }
    }
}
