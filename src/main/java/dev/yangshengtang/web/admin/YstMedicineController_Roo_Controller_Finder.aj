// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.web.admin;

import dev.yangshengtang.domain.YstCategory;
import dev.yangshengtang.domain.YstMedicine;
import dev.yangshengtang.web.admin.YstMedicineController;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect YstMedicineController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByCategory", "form" }, method = RequestMethod.GET)
    public String YstMedicineController.findYstMedicinesByCategoryForm(Model uiModel) {
        uiModel.addAttribute("ystcategorys", ystCategoryService.findAllYstCategorys());
        return "admin/medicines/findYstMedicinesByCategory";
    }
    
    @RequestMapping(params = "find=ByCategory", method = RequestMethod.GET)
    public String YstMedicineController.findYstMedicinesByCategory(@RequestParam("category") YstCategory category, Model uiModel) {
        uiModel.addAttribute("ystmedicines", YstMedicine.findYstMedicinesByCategory(category).getResultList());
        return "admin/medicines/list";
    }
    
}
