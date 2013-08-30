package com.assetmanager.model.asset;

import com.assetmanager.model.asset.def.RecordStatus;
import com.assetmanager.model.core.DomainEntity;
import com.google.appengine.api.datastore.Key;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Key key;

    private Key defKey;

    private Date createOn;

    private String createBy;

    private RecordStatus recordStatus = RecordStatus.StoreIn;

    private Integer amount;

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

    public Date getCreateOn()
    {
        return createOn;
    }

    public void setCreateOn(Date createOn)
    {
        this.createOn = createOn;
    }

    public String getCreateBy()
    {
        return createBy;
    }

    public void setCreateBy(String createBy)
    {
        this.createBy = createBy;
    }

    public RecordStatus getRecordStatus()
    {
        return recordStatus;
    }

    public void setRecordStatus(RecordStatus recordStatus)
    {
        this.recordStatus = recordStatus;
    }

    public Integer getAmount()
    {
        return amount;
    }

    public void setAmount(Integer amount)
    {
        this.amount = amount;
    }
}
