package com.assetmanager.service.dao;

import com.assetmanager.model.core.DomainEntity;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.memcache.MemcacheService;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.Collection;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: zhuhome
 * Date: 13-8-12
 * Time: 11:24AM
 * To change this template use File | Settings | File Templates.
 */
@Repository(GenericDAO.BEAN_NAME)
@Transactional(readOnly = false)
public class GenericDAO {
    public static final String BEAN_NAME = "GenericDAO";

    /**
     * The datastore service.
     */
    @Resource
    private DatastoreService datastoreService;

    /**
     * The memcache service.
     */
    @Resource
    private MemcacheService memcacheService;

    /**
     * The entity manager.
     */
    @PersistenceContext
    private transient EntityManager entityManager;

    @Transactional(readOnly = true)
    public <T extends DomainEntity> T findByKey(Class<T> clazz, Key id) {
        T entity = (T) entityManager.find(clazz, id);

        if (entity == null) {
            throw new ObjectRetrievalFailureException(clazz, id);
        }
        return entity;
    }

    @Transactional(readOnly = true)
    public <T extends DomainEntity> Collection<T> findAll(Class<T> clazz) {
        String sql = "from " + clazz.getName();
        return (Collection<T>) entityManager.createQuery(sql).getResultList();
    }

    @Transactional
    @SuppressWarnings("unchecked")
    public <T extends DomainEntity> void remove(T domainObj) {
        entityManager.remove(domainObj);
    }

    @Transactional(readOnly = true)
    public <T extends DomainEntity> Collection<T> findByNamedQuery(Class<T> clazz, String namedQuery, Map<String, Object> values) {
        Query query = entityManager.createNamedQuery(namedQuery);
        for (Map.Entry<String, Object> entry : values.entrySet()) {
            query.setParameter(entry.getKey(), entry.getValue());
        }
        return (Collection<T>) query.getResultList();
    }

    @Transactional
    public <T extends DomainEntity> T save(T domainObj) {
        entityManager.persist(domainObj);
        return domainObj;
    }

    @Transactional
    public void flush() {
        entityManager.flush();
    }

    @Transactional
    public <T extends DomainEntity> void refresh(T domainObj) {
        entityManager.refresh(domainObj);
    }

    @Transactional(readOnly = true)
    public <T extends DomainEntity> Collection<T> findByQuery(String namedQuery, Map<String, Object> values) {
        Query query = entityManager.createQuery(namedQuery);
        for (Map.Entry<String, Object> entry : values.entrySet()) {
            query.setParameter(entry.getKey(), entry.getValue());
        }
        return (Collection<T>) query.getResultList();
    }
}
