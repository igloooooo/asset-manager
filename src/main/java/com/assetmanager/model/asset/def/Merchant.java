package com.assetmanager.model.asset.def;

import com.assetmanager.model.core.DomainEntity;
import com.google.appengine.api.datastore.Key;
import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-12
 * Time: 上午10:36
 * To change this template use File | Settings | File Templates.
 */
@SuppressWarnings("serial")
@Repository
@Entity
@JsonAutoDetect
public class Merchant extends DomainEntity {
    /**
     * The key.
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Key key;

    private String name;

    private String mobile;

    private String tradeName;

    private String contactName;

    private String contactNumber;

    public Merchant() {
    }

    public Key getKey() {
        return key;
    }

    public void setKey(Key key) {
        this.key = key;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getTradeName() {
        return tradeName;
    }

    public void setTradeName(String tradeName) {
        this.tradeName = tradeName;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }
}
