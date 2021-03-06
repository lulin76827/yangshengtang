// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstMedicine;
import dev.yangshengtang.domain.YstMedicineSymptom;
import dev.yangshengtang.domain.YstSymptom;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect YstMedicineSymptom_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "medicine", referencedColumnName = "id", nullable = false)
    private YstMedicine YstMedicineSymptom.medicine;
    
    @ManyToOne
    @JoinColumn(name = "symptomcol", referencedColumnName = "id", nullable = false)
    private YstSymptom YstMedicineSymptom.symptomcol;
    
    public YstMedicine YstMedicineSymptom.getMedicine() {
        return medicine;
    }
    
    public void YstMedicineSymptom.setMedicine(YstMedicine medicine) {
        this.medicine = medicine;
    }
    
    public YstSymptom YstMedicineSymptom.getSymptomcol() {
        return symptomcol;
    }
    
    public void YstMedicineSymptom.setSymptomcol(YstSymptom symptomcol) {
        this.symptomcol = symptomcol;
    }
    
}
