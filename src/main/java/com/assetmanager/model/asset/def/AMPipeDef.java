package com.assetmanager.model.asset.def;

import com.google.appengine.api.datastore.Key;
import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-11
 * Time: 7:37AM
 * To change this template use File | Settings | File Templates.
 */
@SuppressWarnings("serial")
@Repository
@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@JsonAutoDetect
public class AMPipeDef extends BaseAssetDef {
    private Key catalog;

    public Key getCatalog()
    {
        return catalog;
    }

    public void setCatalog(Key catalog)
    {
        this.catalog = catalog;
    }
}
