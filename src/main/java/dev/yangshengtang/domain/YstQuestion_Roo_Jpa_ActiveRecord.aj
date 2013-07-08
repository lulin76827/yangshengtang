// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstQuestion;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect YstQuestion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager YstQuestion.entityManager;
    
    public static final EntityManager YstQuestion.entityManager() {
        EntityManager em = new YstQuestion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long YstQuestion.countYstQuestions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM YstQuestion o", Long.class).getSingleResult();
    }
    
    public static List<YstQuestion> YstQuestion.findAllYstQuestions() {
        return entityManager().createQuery("SELECT o FROM YstQuestion o", YstQuestion.class).getResultList();
    }
    
    public static YstQuestion YstQuestion.findYstQuestion(Integer id) {
        if (id == null) return null;
        return entityManager().find(YstQuestion.class, id);
    }
    
    public static List<YstQuestion> YstQuestion.findYstQuestionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM YstQuestion o", YstQuestion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void YstQuestion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void YstQuestion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            YstQuestion attached = YstQuestion.findYstQuestion(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void YstQuestion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void YstQuestion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public YstQuestion YstQuestion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        YstQuestion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
