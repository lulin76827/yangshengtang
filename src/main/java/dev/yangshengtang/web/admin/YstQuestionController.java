package dev.yangshengtang.web.admin;
import dev.yangshengtang.domain.YstQuestion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/admin/questions")
@Controller
@RooWebScaffold(path = "admin/questions", formBackingObject = YstQuestion.class)
@RooWebJson(jsonObject = YstQuestion.class)
@RooWebFinder
public class YstQuestionController {
}
