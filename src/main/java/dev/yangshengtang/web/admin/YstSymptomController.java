package dev.yangshengtang.web.admin;
import dev.yangshengtang.domain.YstSymptom;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = YstSymptom.class)
@Controller
@RequestMapping("/ystsymptoms")
public class YstSymptomController {
}
