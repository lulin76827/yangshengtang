// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstAnswer;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect YstAnswer_Roo_Jpa_Entity {
    
    declare @type: YstAnswer: @Entity;
    
    declare @type: YstAnswer: @Table(name = "yst_answer");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer YstAnswer.id;
    
    public Integer YstAnswer.getId() {
        return this.id;
    }
    
    public void YstAnswer.setId(Integer id) {
        this.id = id;
    }
    
}