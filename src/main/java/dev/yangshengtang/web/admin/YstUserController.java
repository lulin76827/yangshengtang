package dev.yangshengtang.web.admin;
import dev.yangshengtang.domain.YstUser;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/admin/users")
@Controller
@RooWebScaffold(path = "admin/users", formBackingObject = YstUser.class)
@RooWebJson(jsonObject = YstUser.class)
public class YstUserController {
}
