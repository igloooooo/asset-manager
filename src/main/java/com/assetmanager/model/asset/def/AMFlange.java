package com.assetmanager.model.asset.def;

import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@SuppressWarnings("serial")
@Repository
@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class AMFlange extends BaseAssetDef
{
    private Integer thickness;

    public Integer getThickness()
    {
        return thickness;
    }

    public void setThickness(Integer thickness)
    {
        this.thickness = thickness;
    }
}
