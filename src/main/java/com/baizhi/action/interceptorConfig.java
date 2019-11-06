package com.baizhi.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Component
public class interceptorConfig extends WebMvcConfigurerAdapter {
    @Autowired
    private Interceptor interceptor
            ;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(interceptor)
                .addPathPatterns("/**")//定义拦截路径
                .excludePathPatterns("/admin/login");//排除拦截路径  也可以不排除
    }

}
