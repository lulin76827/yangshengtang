// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.web.admin;

import dev.yangshengtang.domain.YstAccount;
import dev.yangshengtang.web.admin.YstAccountController;
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

privileged aspect YstAccountController_Roo_Controller_Json {
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> YstAccountController.showJson(@PathVariable("id") Integer id) {
        YstAccount ystAccount = ystAccountService.findYstAccount(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (ystAccount == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(ystAccount.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> YstAccountController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<YstAccount> result = ystAccountService.findAllYstAccounts();
        return new ResponseEntity<String>(YstAccount.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> YstAccountController.createFromJson(@RequestBody String json) {
        YstAccount ystAccount = YstAccount.fromJsonToYstAccount(json);
        ystAccountService.saveYstAccount(ystAccount);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> YstAccountController.createFromJsonArray(@RequestBody String json) {
        for (YstAccount ystAccount: YstAccount.fromJsonArrayToYstAccounts(json)) {
            ystAccountService.saveYstAccount(ystAccount);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> YstAccountController.updateFromJson(@RequestBody String json, @PathVariable("id") Integer id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        YstAccount ystAccount = YstAccount.fromJsonToYstAccount(json);
        if (ystAccountService.updateYstAccount(ystAccount) == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> YstAccountController.deleteFromJson(@PathVariable("id") Integer id) {
        YstAccount ystAccount = ystAccountService.findYstAccount(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (ystAccount == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        ystAccountService.deleteYstAccount(ystAccount);
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(params = "find=ByUsernameEquals", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> YstAccountController.jsonFindYstAccountsByUsernameEquals(@RequestParam("username") String username) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        return new ResponseEntity<String>(YstAccount.toJsonArray(YstAccount.findYstAccountsByUsernameEquals(username).getResultList()), headers, HttpStatus.OK);
    }
    
}
