package com.assetmanager.service.merchant;

import com.assetmanager.model.asset.def.Merchant;
import com.assetmanager.model.core.DomainEntity;
import com.assetmanager.service.dao.GenericDAO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-12
 * Time: 下午3:31
 * To change this template use File | Settings | File Templates.
 */
@Service
public class MerchantService {
    @Resource
    private GenericDAO genericDAO;

    public Merchant createMerchant(Merchant merchant)
    {
        return genericDAO.save(merchant);
    }

    public List<Merchant> getMerchantList()
    {
        return (List<Merchant>)genericDAO.findByQuery("SELECT m from Merchant m", null, Merchant.class);
    }

}
