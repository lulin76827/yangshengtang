// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstUser;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect YstUser_Roo_Json {
    
    public String YstUser.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String YstUser.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static YstUser YstUser.fromJsonToYstUser(String json) {
        return new JSONDeserializer<YstUser>().use(null, YstUser.class).deserialize(json);
    }
    
    public static String YstUser.toJsonArray(Collection<YstUser> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String YstUser.toJsonArray(Collection<YstUser> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<YstUser> YstUser.fromJsonArrayToYstUsers(String json) {
        return new JSONDeserializer<List<YstUser>>().use(null, ArrayList.class).use("values", YstUser.class).deserialize(json);
    }
    
}