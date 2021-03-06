// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstSymptom;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect YstSymptom_Roo_Json {
    
    public String YstSymptom.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String YstSymptom.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static YstSymptom YstSymptom.fromJsonToYstSymptom(String json) {
        return new JSONDeserializer<YstSymptom>().use(null, YstSymptom.class).deserialize(json);
    }
    
    public static String YstSymptom.toJsonArray(Collection<YstSymptom> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String YstSymptom.toJsonArray(Collection<YstSymptom> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<YstSymptom> YstSymptom.fromJsonArrayToYstSymptoms(String json) {
        return new JSONDeserializer<List<YstSymptom>>().use(null, ArrayList.class).use("values", YstSymptom.class).deserialize(json);
    }
    
}
