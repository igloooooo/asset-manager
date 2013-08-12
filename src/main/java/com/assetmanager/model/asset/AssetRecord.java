package com.assetmanager.model.asset;

import com.assetmanager.model.asset.def.RecordStatus;
import com.assetmanager.model.core.DomainEntity;
import com.google.appengine.api.datastore.Key;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-12
 * Time: 上午10:26
 * To change this template use File | Settings | File Templates.
 */
@SuppressWarnings("serial")
@Repository
@Entity
public class AssetRecord extends DomainEntity {
    /**
     * The key.
     */
    @Id
    private Key key;

    private Key defKey;

    private Date createOn;

    private String createBy;

    private RecordStatus recordStatus = RecordStatus.StoreIn;

    public AssetRecord() {
    }

    public Key getKey() {
        return key;
    }

    public void setKey(Key key) {
        this.key = key;
    }

    public Key getDefKey() {
        return defKey;
    }

    public void setDefKey(Key defKey) {
        this.defKey = defKey;
    }
}
