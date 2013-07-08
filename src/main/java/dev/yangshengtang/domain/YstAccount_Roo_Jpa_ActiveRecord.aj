// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstAccount;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect YstAccount_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager YstAccount.entityManager;
    
    public static final EntityManager YstAccount.entityManager() {
        EntityManager em = new YstAccount().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long YstAccount.countYstAccounts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM YstAccount o", Long.class).getSingleResult();
    }
    
    public static List<YstAccount> YstAccount.findAllYstAccounts() {
        return entityManager().createQuery("SELECT o FROM YstAccount o", YstAccount.class).getResultList();
    }
    
    public static YstAccount YstAccount.findYstAccount(Integer id) {
        if (id == null) return null;
        return entityManager().find(YstAccount.class, id);
    }
    
    public static List<YstAccount> YstAccount.findYstAccountEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM YstAccount o", YstAccount.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void YstAccount.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void YstAccount.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            YstAccount attached = YstAccount.findYstAccount(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void YstAccount.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void YstAccount.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public YstAccount YstAccount.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        YstAccount merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
