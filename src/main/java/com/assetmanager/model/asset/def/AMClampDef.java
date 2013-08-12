package com.assetmanager.model.asset.def;

import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-11
 * Time: 7:39 AM
 * To change this template use File | Settings | File Templates.
 */
@SuppressWarnings("serial")
@Repository
@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class AMClampDef extends BaseAssetDef {
}
