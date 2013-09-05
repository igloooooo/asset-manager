package com.assetmanager.service.assetDef;

import com.assetmanager.model.asset.def.AMClampDef;
import com.assetmanager.model.asset.def.AMTipDef;
import com.assetmanager.model.asset.def.BaseAssetDef;
import com.assetmanager.service.dao.GenericDAO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AssetDefService
{
    @Resource
    private GenericDAO genericDAO;

    public BaseAssetDef createAssetDef(BaseAssetDef def)
    {
        return genericDAO.save(def);
    }

    public List<AMTipDef> getTipDefList()
    {
        return (List<AMTipDef>)genericDAO.findAll(AMTipDef.class);
    }

    public List<AMClampDef> getAmClampDefList()
    {
        return (List<AMClampDef>)genericDAO.findAll(AMClampDef.class);
    }
}
