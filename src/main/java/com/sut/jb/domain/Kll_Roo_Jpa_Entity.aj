// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.jb.domain;

import com.sut.jb.domain.Kll;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Kll_Roo_Jpa_Entity {
    
    declare @type: Kll: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Kll.id;
    
    @Version
    @Column(name = "version")
    private Integer Kll.version;
    
    public Long Kll.getId() {
        return this.id;
    }
    
    public void Kll.setId(Long id) {
        this.id = id;
    }
    
    public Integer Kll.getVersion() {
        return this.version;
    }
    
    public void Kll.setVersion(Integer version) {
        this.version = version;
    }
    
}
