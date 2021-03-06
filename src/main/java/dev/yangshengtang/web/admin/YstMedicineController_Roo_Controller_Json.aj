// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.web.admin;

import dev.yangshengtang.domain.YstCategory;
import dev.yangshengtang.domain.YstMedicine;
import dev.yangshengtang.web.admin.YstMedicineController;
import java.util.List;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect YstMedicineController_Roo_Controller_Json {
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> YstMedicineController.showJson(@PathVariable("id") Integer id) {
        YstMedicine ystMedicine = ystMedicineService.findYstMedicine(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (ystMedicine == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(ystMedicine.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> YstMedicineController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<YstMedicine> result = ystMedicineService.findAllYstMedicines();
        return new ResponseEntity<String>(YstMedicine.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> YstMedicineController.createFromJson(@RequestBody String json) {
        YstMedicine ystMedicine = YstMedicine.fromJsonToYstMedicine(json);
        ystMedicineService.saveYstMedicine(ystMedicine);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> YstMedicineController.createFromJsonArray(@RequestBody String json) {
        for (YstMedicine ystMedicine: YstMedicine.fromJsonArrayToYstMedicines(json)) {
            ystMedicineService.saveYstMedicine(ystMedicine);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> YstMedicineController.updateFromJson(@RequestBody String json, @PathVariable("id") Integer id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        YstMedicine ystMedicine = YstMedicine.fromJsonToYstMedicine(json);
        if (ystMedicineService.updateYstMedicine(ystMedicine) == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> YstMedicineController.deleteFromJson(@PathVariable("id") Integer id) {
        YstMedicine ystMedicine = ystMedicineService.findYstMedicine(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (ystMedicine == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        ystMedicineService.deleteYstMedicine(ystMedicine);
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(params = "find=ByCategory", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> YstMedicineController.jsonFindYstMedicinesByCategory(@RequestParam("category") YstCategory category) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        return new ResponseEntity<String>(YstMedicine.toJsonArray(YstMedicine.findYstMedicinesByCategory(category).getResultList()), headers, HttpStatus.OK);
    }
    
}
