// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstUserCategory;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect YstUserCategory_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager YstUserCategory.entityManager;
    
    public static final EntityManager YstUserCategory.entityManager() {
        EntityManager em = new YstUserCategory().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long YstUserCategory.countYstUserCategorys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM YstUserCategory o", Long.class).getSingleResult();
    }
    
    public static List<YstUserCategory> YstUserCategory.findAllYstUserCategorys() {
        return entityManager().createQuery("SELECT o FROM YstUserCategory o", YstUserCategory.class).getResultList();
    }
    
    public static YstUserCategory YstUserCategory.findYstUserCategory(Integer id) {
        if (id == null) return null;
        return entityManager().find(YstUserCategory.class, id);
    }
    
    public static List<YstUserCategory> YstUserCategory.findYstUserCategoryEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM YstUserCategory o", YstUserCategory.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void YstUserCategory.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void YstUserCategory.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            YstUserCategory attached = YstUserCategory.findYstUserCategory(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void YstUserCategory.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void YstUserCategory.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public YstUserCategory YstUserCategory.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        YstUserCategory merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
