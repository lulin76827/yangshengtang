// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.web.admin;

import dev.yangshengtang.domain.YstAccount;
import dev.yangshengtang.domain.YstAnswer;
import dev.yangshengtang.domain.YstCategory;
import dev.yangshengtang.domain.YstMedicine;
import dev.yangshengtang.domain.YstMedicineSymptom;
import dev.yangshengtang.domain.YstPathogenesis;
import dev.yangshengtang.domain.YstQuestion;
import dev.yangshengtang.domain.YstUser;
import dev.yangshengtang.domain.YstUserCategory;
import dev.yangshengtang.service.YstAccountService;
import dev.yangshengtang.service.YstAnswerService;
import dev.yangshengtang.service.YstCategoryService;
import dev.yangshengtang.service.YstMedicineService;
import dev.yangshengtang.service.YstMedicineSymptomService;
import dev.yangshengtang.service.YstPathogenesisService;
import dev.yangshengtang.service.YstQuestionService;
import dev.yangshengtang.service.YstUserCategoryService;
import dev.yangshengtang.service.YstUserService;
import dev.yangshengtang.web.admin.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    YstAccountService ApplicationConversionServiceFactoryBean.ystAccountService;
    
    @Autowired
    YstAnswerService ApplicationConversionServiceFactoryBean.ystAnswerService;
    
    @Autowired
    YstCategoryService ApplicationConversionServiceFactoryBean.ystCategoryService;
    
    @Autowired
    YstMedicineService ApplicationConversionServiceFactoryBean.ystMedicineService;
    
    @Autowired
    YstMedicineSymptomService ApplicationConversionServiceFactoryBean.ystMedicineSymptomService;
    
    @Autowired
    YstPathogenesisService ApplicationConversionServiceFactoryBean.ystPathogenesisService;
    
    @Autowired
    YstQuestionService ApplicationConversionServiceFactoryBean.ystQuestionService;
    
    @Autowired
    YstUserService ApplicationConversionServiceFactoryBean.ystUserService;
    
    @Autowired
    YstUserCategoryService ApplicationConversionServiceFactoryBean.ystUserCategoryService;
    
    public Converter<YstAccount, String> ApplicationConversionServiceFactoryBean.getYstAccountToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<dev.yangshengtang.domain.YstAccount, java.lang.String>() {
            public String convert(YstAccount ystAccount) {
                return new StringBuilder().append(ystAccount.getUsername()).append(' ').append(ystAccount.getPassword()).toString();
            }
        };
    }
    
    public Converter<Integer, YstAccount> ApplicationConversionServiceFactoryBean.getIdToYstAccountConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, dev.yangshengtang.domain.YstAccount>() {
            public dev.yangshengtang.domain.YstAccount convert(java.lang.Integer id) {
                return ystAccountService.findYstAccount(id);
            }
        };
    }
    
    public Converter<String, YstAccount> ApplicationConversionServiceFactoryBean.getStringToYstAccountConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, dev.yangshengtang.domain.YstAccount>() {
            public dev.yangshengtang.domain.YstAccount convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), YstAccount.class);
            }
        };
    }
    
    public Converter<YstAnswer, String> ApplicationConversionServiceFactoryBean.getYstAnswerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<dev.yangshengtang.domain.YstAnswer, java.lang.String>() {
            public String convert(YstAnswer ystAnswer) {
                return new StringBuilder().append(ystAnswer.getRecord()).toString();
            }
        };
    }
    
    public Converter<Integer, YstAnswer> ApplicationConversionServiceFactoryBean.getIdToYstAnswerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, dev.yangshengtang.domain.YstAnswer>() {
            public dev.yangshengtang.domain.YstAnswer convert(java.lang.Integer id) {
                return ystAnswerService.findYstAnswer(id);
            }
        };
    }
    
    public Converter<String, YstAnswer> ApplicationConversionServiceFactoryBean.getStringToYstAnswerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, dev.yangshengtang.domain.YstAnswer>() {
            public dev.yangshengtang.domain.YstAnswer convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), YstAnswer.class);
            }
        };
    }
    
    public Converter<YstCategory, String> ApplicationConversionServiceFactoryBean.getYstCategoryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<dev.yangshengtang.domain.YstCategory, java.lang.String>() {
            public String convert(YstCategory ystCategory) {
                return new StringBuilder().append(ystCategory.getCategory()).append(' ').append(ystCategory.getDescrib()).toString();
            }
        };
    }
    
    public Converter<Integer, YstCategory> ApplicationConversionServiceFactoryBean.getIdToYstCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, dev.yangshengtang.domain.YstCategory>() {
            public dev.yangshengtang.domain.YstCategory convert(java.lang.Integer id) {
                return ystCategoryService.findYstCategory(id);
            }
        };
    }
    
    public Converter<String, YstCategory> ApplicationConversionServiceFactoryBean.getStringToYstCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, dev.yangshengtang.domain.YstCategory>() {
            public dev.yangshengtang.domain.YstCategory convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), YstCategory.class);
            }
        };
    }
    
    public Converter<YstMedicine, String> ApplicationConversionServiceFactoryBean.getYstMedicineToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<dev.yangshengtang.domain.YstMedicine, java.lang.String>() {
            public String convert(YstMedicine ystMedicine) {
                return new StringBuilder().append(ystMedicine.getMedicine()).append(' ').append(ystMedicine.getDescrib()).toString();
            }
        };
    }
    
    public Converter<Integer, YstMedicine> ApplicationConversionServiceFactoryBean.getIdToYstMedicineConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, dev.yangshengtang.domain.YstMedicine>() {
            public dev.yangshengtang.domain.YstMedicine convert(java.lang.Integer id) {
                return ystMedicineService.findYstMedicine(id);
            }
        };
    }
    
    public Converter<String, YstMedicine> ApplicationConversionServiceFactoryBean.getStringToYstMedicineConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, dev.yangshengtang.domain.YstMedicine>() {
            public dev.yangshengtang.domain.YstMedicine convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), YstMedicine.class);
            }
        };
    }
    
    public Converter<YstMedicineSymptom, String> ApplicationConversionServiceFactoryBean.getYstMedicineSymptomToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<dev.yangshengtang.domain.YstMedicineSymptom, java.lang.String>() {
            public String convert(YstMedicineSymptom ystMedicineSymptom) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Integer, YstMedicineSymptom> ApplicationConversionServiceFactoryBean.getIdToYstMedicineSymptomConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, dev.yangshengtang.domain.YstMedicineSymptom>() {
            public dev.yangshengtang.domain.YstMedicineSymptom convert(java.lang.Integer id) {
                return ystMedicineSymptomService.findYstMedicineSymptom(id);
            }
        };
    }
    
    public Converter<String, YstMedicineSymptom> ApplicationConversionServiceFactoryBean.getStringToYstMedicineSymptomConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, dev.yangshengtang.domain.YstMedicineSymptom>() {
            public dev.yangshengtang.domain.YstMedicineSymptom convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), YstMedicineSymptom.class);
            }
        };
    }
    
    public Converter<YstPathogenesis, String> ApplicationConversionServiceFactoryBean.getYstPathogenesisToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<dev.yangshengtang.domain.YstPathogenesis, java.lang.String>() {
            public String convert(YstPathogenesis ystPathogenesis) {
                return new StringBuilder().append(ystPathogenesis.getPathogenesis()).append(' ').append(ystPathogenesis.getDescrib()).toString();
            }
        };
    }
    
    public Converter<Integer, YstPathogenesis> ApplicationConversionServiceFactoryBean.getIdToYstPathogenesisConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, dev.yangshengtang.domain.YstPathogenesis>() {
            public dev.yangshengtang.domain.YstPathogenesis convert(java.lang.Integer id) {
                return ystPathogenesisService.findYstPathogenesis(id);
            }
        };
    }
    
    public Converter<String, YstPathogenesis> ApplicationConversionServiceFactoryBean.getStringToYstPathogenesisConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, dev.yangshengtang.domain.YstPathogenesis>() {
            public dev.yangshengtang.domain.YstPathogenesis convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), YstPathogenesis.class);
            }
        };
    }
    
    public Converter<YstQuestion, String> ApplicationConversionServiceFactoryBean.getYstQuestionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<dev.yangshengtang.domain.YstQuestion, java.lang.String>() {
            public String convert(YstQuestion ystQuestion) {
                return new StringBuilder().append(ystQuestion.getQuestion()).toString();
            }
        };
    }
    
    public Converter<Integer, YstQuestion> ApplicationConversionServiceFactoryBean.getIdToYstQuestionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, dev.yangshengtang.domain.YstQuestion>() {
            public dev.yangshengtang.domain.YstQuestion convert(java.lang.Integer id) {
                return ystQuestionService.findYstQuestion(id);
            }
        };
    }
    
    public Converter<String, YstQuestion> ApplicationConversionServiceFactoryBean.getStringToYstQuestionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, dev.yangshengtang.domain.YstQuestion>() {
            public dev.yangshengtang.domain.YstQuestion convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), YstQuestion.class);
            }
        };
    }
    
    public Converter<YstUser, String> ApplicationConversionServiceFactoryBean.getYstUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<dev.yangshengtang.domain.YstUser, java.lang.String>() {
            public String convert(YstUser ystUser) {
                return new StringBuilder().append(ystUser.getName()).append(' ').append(ystUser.getSex()).append(' ').append(ystUser.getEmail()).append(' ').append(ystUser.getMobile()).toString();
            }
        };
    }
    
    public Converter<Integer, YstUser> ApplicationConversionServiceFactoryBean.getIdToYstUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, dev.yangshengtang.domain.YstUser>() {
            public dev.yangshengtang.domain.YstUser convert(java.lang.Integer id) {
                return ystUserService.findYstUser(id);
            }
        };
    }
    
    public Converter<String, YstUser> ApplicationConversionServiceFactoryBean.getStringToYstUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, dev.yangshengtang.domain.YstUser>() {
            public dev.yangshengtang.domain.YstUser convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), YstUser.class);
            }
        };
    }
    
    public Converter<YstUserCategory, String> ApplicationConversionServiceFactoryBean.getYstUserCategoryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<dev.yangshengtang.domain.YstUserCategory, java.lang.String>() {
            public String convert(YstUserCategory ystUserCategory) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Integer, YstUserCategory> ApplicationConversionServiceFactoryBean.getIdToYstUserCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, dev.yangshengtang.domain.YstUserCategory>() {
            public dev.yangshengtang.domain.YstUserCategory convert(java.lang.Integer id) {
                return ystUserCategoryService.findYstUserCategory(id);
            }
        };
    }
    
    public Converter<String, YstUserCategory> ApplicationConversionServiceFactoryBean.getStringToYstUserCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, dev.yangshengtang.domain.YstUserCategory>() {
            public dev.yangshengtang.domain.YstUserCategory convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), YstUserCategory.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getYstAccountToStringConverter());
        registry.addConverter(getIdToYstAccountConverter());
        registry.addConverter(getStringToYstAccountConverter());
        registry.addConverter(getYstAnswerToStringConverter());
        registry.addConverter(getIdToYstAnswerConverter());
        registry.addConverter(getStringToYstAnswerConverter());
        registry.addConverter(getYstCategoryToStringConverter());
        registry.addConverter(getIdToYstCategoryConverter());
        registry.addConverter(getStringToYstCategoryConverter());
        registry.addConverter(getYstMedicineToStringConverter());
        registry.addConverter(getIdToYstMedicineConverter());
        registry.addConverter(getStringToYstMedicineConverter());
        registry.addConverter(getYstMedicineSymptomToStringConverter());
        registry.addConverter(getIdToYstMedicineSymptomConverter());
        registry.addConverter(getStringToYstMedicineSymptomConverter());
        registry.addConverter(getYstPathogenesisToStringConverter());
        registry.addConverter(getIdToYstPathogenesisConverter());
        registry.addConverter(getStringToYstPathogenesisConverter());
        registry.addConverter(getYstQuestionToStringConverter());
        registry.addConverter(getIdToYstQuestionConverter());
        registry.addConverter(getStringToYstQuestionConverter());
        registry.addConverter(getYstUserToStringConverter());
        registry.addConverter(getIdToYstUserConverter());
        registry.addConverter(getStringToYstUserConverter());
        registry.addConverter(getYstUserCategoryToStringConverter());
        registry.addConverter(getIdToYstUserCategoryConverter());
        registry.addConverter(getStringToYstUserCategoryConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
