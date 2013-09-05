package com.assetmanager.model.asset.def;

public enum AssetDefCatalogType
{
    Pipe, Flange, Clamp, Tip, Muffler;

    public static AssetDefCatalogType findTypeByName(String name)
    {
        for(AssetDefCatalogType type : AssetDefCatalogType.values())
        {
            if(type.name().equals(name))
            {
                return type;
            }
        }
        return null;
    }
}
