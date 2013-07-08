package dev.yangshengtang.web.admin;
import dev.yangshengtang.domain.YstPathogenesis;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/admin/pathogeneses")
@Controller
@RooWebScaffold(path = "admin/pathogeneses", formBackingObject = YstPathogenesis.class)
@RooWebJson(jsonObject = YstPathogenesis.class)
@RooWebFinder
public class YstPathogenesisController {
}
