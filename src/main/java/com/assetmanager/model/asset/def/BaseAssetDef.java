package com.assetmanager.model.asset.def;

import com.google.appengine.api.datastore.Key;
import com.assetmanager.model.core.DomainEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.math.BigDecimal;
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
public class BaseAssetDef extends DomainEntity {
    /**
     * The key.
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Key key;

    private Date createOn;

    private String createBy;

    private String imageUrl;

    private Boolean valid = Boolean.TRUE;

    private String name;

    private String description;

    private String price;

    private MaterialType materialType;

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

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public Boolean getValid() {
        return valid;
    }

    public void setValid(Boolean valid) {
        this.valid = valid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public MaterialType getMaterialType()
    {
        return materialType;
    }

    public void setMaterialType(MaterialType materialType)
    {
        this.materialType = materialType;
    }
}
