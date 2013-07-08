package dev.yangshengtang.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "yst_user_category")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "category", "user" })
@RooJson(deepSerialize = true)
public class YstUserCategory {
}
