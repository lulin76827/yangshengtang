// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstCategory;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

privileged aspect YstCategory_Roo_ToString {
    
    public String YstCategory.toString() {
        return new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).setExcludeFieldNames("ystMedicines", "ystPathogeneses", "ystQuestions", "ystSymptoms", "ystUserCategories").toString();
    }
    
}
