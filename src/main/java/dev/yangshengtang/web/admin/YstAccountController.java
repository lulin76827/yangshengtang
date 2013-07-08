package dev.yangshengtang.web.admin;
import dev.yangshengtang.domain.YstAccount;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/admin/accounts")
@Controller
@RooWebScaffold(path = "admin/accounts", formBackingObject = YstAccount.class)
@RooWebJson(jsonObject = YstAccount.class)
public class YstAccountController {
}
