// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstSymptom;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect YstSymptom_Roo_Jpa_Entity {
    
    declare @type: YstSymptom: @Entity;
    
    declare @type: YstSymptom: @Table(name = "yst_symptom");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer YstSymptom.id;
    
    public Integer YstSymptom.getId() {
        return this.id;
    }
    
    public void YstSymptom.setId(Integer id) {
        this.id = id;
    }
    
}