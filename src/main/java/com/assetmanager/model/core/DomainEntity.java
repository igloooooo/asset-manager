package com.assetmanager.model.core;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-10
 * Time: 3:32 PM
 * Base Entity.
 */
public abstract class DomainEntity implements IGTDomainEntity {

    public DomainEntity() {

    }

    @Override
    public String toString() {
        return "Key: " + getKey().toString();
    }
}
