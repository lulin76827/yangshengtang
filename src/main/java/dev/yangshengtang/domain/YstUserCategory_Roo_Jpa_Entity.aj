// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstUserCategory;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect YstUserCategory_Roo_Jpa_Entity {
    
    declare @type: YstUserCategory: @Entity;
    
    declare @type: YstUserCategory: @Table(name = "yst_user_category");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer YstUserCategory.id;
    
    public Integer YstUserCategory.getId() {
        return this.id;
    }
    
    public void YstUserCategory.setId(Integer id) {
        this.id = id;
    }
    
}
