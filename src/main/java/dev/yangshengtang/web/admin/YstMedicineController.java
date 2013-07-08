package dev.yangshengtang.web.admin;
import dev.yangshengtang.domain.YstMedicine;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/admin/medicines")
@Controller
@RooWebScaffold(path = "admin/medicines", formBackingObject = YstMedicine.class)
@RooWebJson(jsonObject = YstMedicine.class)
@RooWebFinder
public class YstMedicineController {
}
