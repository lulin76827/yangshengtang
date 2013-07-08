package dev.yangshengtang.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "yst_medicine_symptom")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "medicine", "symptomcol" })
@RooJson(deepSerialize = true)
public class YstMedicineSymptom {
}
