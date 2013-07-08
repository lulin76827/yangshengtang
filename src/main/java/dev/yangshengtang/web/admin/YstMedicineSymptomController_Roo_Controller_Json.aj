// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.web.admin;

import dev.yangshengtang.domain.YstMedicineSymptom;
import dev.yangshengtang.web.admin.YstMedicineSymptomController;
import java.util.List;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect YstMedicineSymptomController_Roo_Controller_Json {
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> YstMedicineSymptomController.showJson(@PathVariable("id") Integer id) {
        YstMedicineSymptom ystMedicineSymptom = ystMedicineSymptomService.findYstMedicineSymptom(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (ystMedicineSymptom == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(ystMedicineSymptom.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> YstMedicineSymptomController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<YstMedicineSymptom> result = ystMedicineSymptomService.findAllYstMedicineSymptoms();
        return new ResponseEntity<String>(YstMedicineSymptom.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> YstMedicineSymptomController.createFromJson(@RequestBody String json) {
        YstMedicineSymptom ystMedicineSymptom = YstMedicineSymptom.fromJsonToYstMedicineSymptom(json);
        ystMedicineSymptomService.saveYstMedicineSymptom(ystMedicineSymptom);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> YstMedicineSymptomController.createFromJsonArray(@RequestBody String json) {
        for (YstMedicineSymptom ystMedicineSymptom: YstMedicineSymptom.fromJsonArrayToYstMedicineSymptoms(json)) {
            ystMedicineSymptomService.saveYstMedicineSymptom(ystMedicineSymptom);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> YstMedicineSymptomController.updateFromJson(@RequestBody String json, @PathVariable("id") Integer id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        YstMedicineSymptom ystMedicineSymptom = YstMedicineSymptom.fromJsonToYstMedicineSymptom(json);
        if (ystMedicineSymptomService.updateYstMedicineSymptom(ystMedicineSymptom) == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> YstMedicineSymptomController.deleteFromJson(@PathVariable("id") Integer id) {
        YstMedicineSymptom ystMedicineSymptom = ystMedicineSymptomService.findYstMedicineSymptom(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (ystMedicineSymptom == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        ystMedicineSymptomService.deleteYstMedicineSymptom(ystMedicineSymptom);
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}