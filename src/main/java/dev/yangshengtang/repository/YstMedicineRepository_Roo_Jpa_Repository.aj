// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.repository;

import dev.yangshengtang.domain.YstMedicine;
import dev.yangshengtang.repository.YstMedicineRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect YstMedicineRepository_Roo_Jpa_Repository {
    
    declare parents: YstMedicineRepository extends JpaRepository<YstMedicine, Integer>;
    
    declare parents: YstMedicineRepository extends JpaSpecificationExecutor<YstMedicine>;
    
    declare @type: YstMedicineRepository: @Repository;
    
}
