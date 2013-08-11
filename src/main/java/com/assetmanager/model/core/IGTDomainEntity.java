package com.assetmanager.model.core;

import com.google.appengine.api.datastore.Key;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-10
 * Time: 3:43 PM
 * Base Domain
 */
public interface IGTDomainEntity extends Serializable {
    Key getKey();

    void setKey(Key key);
}
