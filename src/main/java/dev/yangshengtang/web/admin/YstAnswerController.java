package dev.yangshengtang.web.admin;
import dev.yangshengtang.domain.YstAnswer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/admin/answers")
@Controller
@RooWebScaffold(path = "admin/answers", formBackingObject = YstAnswer.class)
@RooWebJson(jsonObject = YstAnswer.class)
@RooWebFinder
public class YstAnswerController {
}
