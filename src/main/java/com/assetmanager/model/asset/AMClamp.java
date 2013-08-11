package com.assetmanager.model.asset;

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
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class AMClamp extends BaseAsset {
}
