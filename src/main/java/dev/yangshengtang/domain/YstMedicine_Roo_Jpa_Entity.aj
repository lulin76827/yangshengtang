// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstMedicine;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect YstMedicine_Roo_Jpa_Entity {
    
    declare @type: YstMedicine: @Entity;
    
    declare @type: YstMedicine: @Table(name = "yst_medicine");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer YstMedicine.id;
    
    public Integer YstMedicine.getId() {
        return this.id;
    }
    
    public void YstMedicine.setId(Integer id) {
        this.id = id;
    }
    
}
