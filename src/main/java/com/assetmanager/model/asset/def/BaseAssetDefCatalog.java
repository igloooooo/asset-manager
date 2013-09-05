package com.assetmanager.model.asset.def;

import com.assetmanager.model.core.DomainEntity;
import com.google.appengine.api.datastore.Key;
import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@SuppressWarnings("serial")
@Repository
@Entity
@JsonAutoDetect
@NamedQueries({
    @NamedQuery(name = BaseAssetDefCatalog.FIND_BY_TYPE,
        query = "select badc from BaseAssetDefCatalog badc where badc.type = :type")
})
public class BaseAssetDefCatalog extends DomainEntity
{
    public static final String FIND_BY_TYPE = "BaseAssetDefCatalog.findByType";
    /**
     * The key.
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Key key;
    private String name;
    private String description;
    private String imageURL;
    private AssetDefCatalogType type;

    public BaseAssetDefCatalog()
    {

    }

    public Key getKey()
    {
        return key;
    }

    public void setKey(Key key)
    {
        this.key = key;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getDescription()
    {
        return description;
    }

    public void setDescription(String description)
    {
        this.description = description;
    }

    public String getImageURL()
    {
        return imageURL;
    }

    public void setImageURL(String imageURL)
    {
        this.imageURL = imageURL;
    }

    public AssetDefCatalogType getType()
    {
        return type;
    }

    public void setType(AssetDefCatalogType type)
    {
        this.type = type;
    }
}