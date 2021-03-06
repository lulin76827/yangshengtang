// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.web.admin;

import dev.yangshengtang.domain.YstUser;
import dev.yangshengtang.service.YstAccountService;
import dev.yangshengtang.service.YstAnswerService;
import dev.yangshengtang.service.YstUserCategoryService;
import dev.yangshengtang.service.YstUserService;
import dev.yangshengtang.web.admin.YstUserController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect YstUserController_Roo_Controller {
    
    @Autowired
    YstUserService YstUserController.ystUserService;
    
    @Autowired
    YstAccountService YstUserController.ystAccountService;
    
    @Autowired
    YstAnswerService YstUserController.ystAnswerService;
    
    @Autowired
    YstUserCategoryService YstUserController.ystUserCategoryService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String YstUserController.create(@Valid YstUser ystUser, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ystUser);
            return "admin/users/create";
        }
        uiModel.asMap().clear();
        ystUserService.saveYstUser(ystUser);
        return "redirect:/admin/users/" + encodeUrlPathSegment(ystUser.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String YstUserController.createForm(Model uiModel) {
        populateEditForm(uiModel, new YstUser());
        return "admin/users/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String YstUserController.show(@PathVariable("id") Integer id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("ystuser", ystUserService.findYstUser(id));
        uiModel.addAttribute("itemId", id);
        return "admin/users/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String YstUserController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("ystusers", ystUserService.findYstUserEntries(firstResult, sizeNo));
            float nrOfPages = (float) ystUserService.countAllYstUsers() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ystusers", ystUserService.findAllYstUsers());
        }
        addDateTimeFormatPatterns(uiModel);
        return "admin/users/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String YstUserController.update(@Valid YstUser ystUser, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ystUser);
            return "admin/users/update";
        }
        uiModel.asMap().clear();
        ystUserService.updateYstUser(ystUser);
        return "redirect:/admin/users/" + encodeUrlPathSegment(ystUser.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String YstUserController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, ystUserService.findYstUser(id));
        return "admin/users/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String YstUserController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        YstUser ystUser = ystUserService.findYstUser(id);
        ystUserService.deleteYstUser(ystUser);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/admin/users";
    }
    
    void YstUserController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("ystUser_birthday_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void YstUserController.populateEditForm(Model uiModel, YstUser ystUser) {
        uiModel.addAttribute("ystUser", ystUser);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("ystaccounts", ystAccountService.findAllYstAccounts());
        uiModel.addAttribute("ystanswers", ystAnswerService.findAllYstAnswers());
        uiModel.addAttribute("ystusercategorys", ystUserCategoryService.findAllYstUserCategorys());
    }
    
    String YstUserController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
