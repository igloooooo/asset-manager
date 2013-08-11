package com.assetmanager.model.asset;

import com.google.appengine.api.datastore.Key;
import com.assetmanager.model.core.DomainEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-10
 * Time: 下午3:47
 * To change this template use File | Settings | File Templates.
 */
@SuppressWarnings("serial")
@Repository
@Entity
@MappedSuperclass
public class BaseAsset extends DomainEntity {
    /**
     * The key.
     */
    @Id
    private Key key;

    private Date createOn;

    private String createBy;

    private String imageUrl;

    private Boolean valid = Boolean.TRUE;


    @Override
    public final Key getKey() {
        return key;
    }

    @Override
    public final void setKey(Key key) {
        this.key = key;
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
