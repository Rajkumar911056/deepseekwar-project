package com.demo;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import com.demo.config.WebConfig;

public class Application extends AbstractAnnotationConfigDispatcherServletInitializer {
    
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class<?>[]{WebConfig.class};
    }
    
    @Override
    protected Class<?>[] getServletConfigClasses() {
        return null;
    }
    
    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }
}
