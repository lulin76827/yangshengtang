// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstUser;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect YstUser_Roo_Jpa_Entity {
    
    declare @type: YstUser: @Entity;
    
    declare @type: YstUser: @Table(name = "yst_user");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer YstUser.id;
    
    public Integer YstUser.getId() {
        return this.id;
    }
    
    public void YstUser.setId(Integer id) {
        this.id = id;
    }
    
}