// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstCategory;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect YstCategory_Roo_Json {
    
    public String YstCategory.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String YstCategory.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static YstCategory YstCategory.fromJsonToYstCategory(String json) {
        return new JSONDeserializer<YstCategory>().use(null, YstCategory.class).deserialize(json);
    }
    
    public static String YstCategory.toJsonArray(Collection<YstCategory> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String YstCategory.toJsonArray(Collection<YstCategory> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<YstCategory> YstCategory.fromJsonArrayToYstCategorys(String json) {
        return new JSONDeserializer<List<YstCategory>>().use(null, ArrayList.class).use("values", YstCategory.class).deserialize(json);
    }
    
}
