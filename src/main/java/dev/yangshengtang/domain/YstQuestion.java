package dev.yangshengtang.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ystAnswers", "category" })
@RooJpaActiveRecord(versionField = "", table = "yst_question", finders = { "findYstQuestionsByCategory" })
@RooJson(deepSerialize = true)
public class YstQuestion {
}
