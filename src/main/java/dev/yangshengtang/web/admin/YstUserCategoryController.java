package dev.yangshengtang.web.admin;
import dev.yangshengtang.domain.YstUserCategory;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/admin/usercategorys")
@Controller
@RooWebScaffold(path = "admin/usercategorys", formBackingObject = YstUserCategory.class)
@RooWebJson(jsonObject = YstUserCategory.class)
public class YstUserCategoryController {
}
