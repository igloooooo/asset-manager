package com.assetmanager.model.asset.def;

import com.google.appengine.api.datastore.Key;
import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@SuppressWarnings("serial")
@Repository
@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@JsonAutoDetect
public class AMFlangeDef extends BaseAssetDef
{
    private Integer thickness;

    private Key catalog;

    public Integer getThickness()
    {
        return thickness;
    }

    public void setThickness(Integer thickness)
    {
        this.thickness = thickness;
    }

    public Key getCatalog()
    {
        return catalog;
    }

    public void setCatalog(Key catalog)
    {
        this.catalog = catalog;
    }
}
