package dev.yangshengtang.web.admin;
import dev.yangshengtang.domain.YstCategory;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/admin/categorys")
@Controller
@RooWebScaffold(path = "admin/categorys", formBackingObject = YstCategory.class)
@RooWebJson(jsonObject = YstCategory.class)
public class YstCategoryController {
}
