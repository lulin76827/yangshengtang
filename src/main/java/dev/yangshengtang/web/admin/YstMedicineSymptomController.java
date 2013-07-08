package dev.yangshengtang.web.admin;
import dev.yangshengtang.domain.YstMedicineSymptom;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/admin/medicinesymptoms")
@Controller
@RooWebScaffold(path = "admin/medicinesymptoms", formBackingObject = YstMedicineSymptom.class)
@RooWebJson(jsonObject = YstMedicineSymptom.class)
public class YstMedicineSymptomController {
}
