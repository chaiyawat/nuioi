// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.jb.domain;

import com.sut.jb.domain.Kll;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Kll_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Kll.entityManager;
    
    public static final List<String> Kll.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Kll.entityManager() {
        EntityManager em = new Kll().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Kll.countKlls() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Kll o", Long.class).getSingleResult();
    }
    
    public static List<Kll> Kll.findAllKlls() {
        return entityManager().createQuery("SELECT o FROM Kll o", Kll.class).getResultList();
    }
    
    public static List<Kll> Kll.findAllKlls(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Kll o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Kll.class).getResultList();
    }
    
    public static Kll Kll.findKll(Long id) {
        if (id == null) return null;
        return entityManager().find(Kll.class, id);
    }
    
    public static List<Kll> Kll.findKllEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Kll o", Kll.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Kll> Kll.findKllEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Kll o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Kll.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Kll.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Kll.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Kll attached = Kll.findKll(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Kll.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Kll.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Kll Kll.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Kll merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}