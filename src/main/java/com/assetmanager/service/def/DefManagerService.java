package com.assetmanager.service.def;

import com.assetmanager.model.asset.def.BaseAssetDef;
import com.assetmanager.service.dao.GenericDAO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-12
 * Time: 下午3:25
 * To change this template use File | Settings | File Templates.
 */
@Service
public class DefManagerService {
    @Resource
    private GenericDAO genericDAO;
   public List<BaseAssetDef> getAssetDefList(){
       return (List<BaseAssetDef>)genericDAO.findAll(BaseAssetDef.class);
   }

    public <T extends BaseAssetDef> List<T> getAssertDefList(Class<T> clazz)
    {
        String sql = "from " + clazz.getName();
        return(List<T>) genericDAO.findByQuery(sql, null, clazz);
    }

    public <T extends BaseAssetDef> T createAssetDef(T def)
    {
        return genericDAO.save(def);
    }
}
