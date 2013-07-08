// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.web.admin;

import dev.yangshengtang.domain.YstCategory;
import dev.yangshengtang.web.admin.YstCategoryController;
import java.util.List;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect YstCategoryController_Roo_Controller_Json {
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> YstCategoryController.showJson(@PathVariable("id") Integer id) {
        YstCategory ystCategory = ystCategoryService.findYstCategory(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (ystCategory == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(ystCategory.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> YstCategoryController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<YstCategory> result = ystCategoryService.findAllYstCategorys();
        return new ResponseEntity<String>(YstCategory.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> YstCategoryController.createFromJson(@RequestBody String json) {
        YstCategory ystCategory = YstCategory.fromJsonToYstCategory(json);
        ystCategoryService.saveYstCategory(ystCategory);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> YstCategoryController.createFromJsonArray(@RequestBody String json) {
        for (YstCategory ystCategory: YstCategory.fromJsonArrayToYstCategorys(json)) {
            ystCategoryService.saveYstCategory(ystCategory);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> YstCategoryController.updateFromJson(@RequestBody String json, @PathVariable("id") Integer id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        YstCategory ystCategory = YstCategory.fromJsonToYstCategory(json);
        if (ystCategoryService.updateYstCategory(ystCategory) == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> YstCategoryController.deleteFromJson(@PathVariable("id") Integer id) {
        YstCategory ystCategory = ystCategoryService.findYstCategory(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (ystCategory == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        ystCategoryService.deleteYstCategory(ystCategory);
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}