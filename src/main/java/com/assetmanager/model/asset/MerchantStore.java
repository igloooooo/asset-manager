package com.assetmanager.model.asset;

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
 * Time: 上午10:49
 * To change this template use File | Settings | File Templates.
 */
@SuppressWarnings("serial")
@Repository
@Entity
public class MerchantStore extends DomainEntity {
    /**
     * The key.
     */
    @Id
    private Key key;

    private Key recordKey;

    private Key merchantKey;

    private Date createOn;

    private String createBy;

    public MerchantStore() {
    }

    public Key getKey() {
        return key;
    }

    public void setKey(Key key) {
        this.key = key;
    }

    public Key getRecordKey() {
        return recordKey;
    }

    public void setRecordKey(Key recordKey) {
        this.recordKey = recordKey;
    }

    public Key getMerchantKey() {
        return merchantKey;
    }

    public void setMerchantKey(Key merchantKey) {
        this.merchantKey = merchantKey;
    }

    public Date getCreateOn() {
        return createOn;
    }

    public void setCreateOn(Date createOn) {
        this.createOn = createOn;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }
}
