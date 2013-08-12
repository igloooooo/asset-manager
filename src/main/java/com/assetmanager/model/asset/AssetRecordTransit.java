package com.assetmanager.model.asset;

import com.assetmanager.model.asset.def.RecordStatus;
import com.assetmanager.model.core.DomainEntity;
import com.google.appengine.api.datastore.Key;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-12
 * Time: 10:33
 * To change this template use File | Settings | File Templates.
 */
@SuppressWarnings("serial")
@Repository
@Entity
public class AssetRecordTransit extends DomainEntity {
    /**
     * The key.
     */
    @Id
    private Key key;

    private Key assetRecordKey;

    private Date transitDate;

    private RecordStatus beforeStatus;

    private RecordStatus afterStatus;

    public AssetRecordTransit() {
    }

    public Key getKey() {
        return key;
    }

    public void setKey(Key key) {
        this.key = key;
    }
}
