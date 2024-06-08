package com.election.mainapp.filters;

import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.http.HttpServletRequest;

public class LanguageFilter  implements Filter {
	

    @Override
    public void init(FilterConfig config) throws ServletException {
        //
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;          
        if(request.getParameter("language")==null) {
              String userLocale = request.getHeader("Accept-Language");
              Locale locale = request.getLocale();
              String requestURI = request.getRequestURI();

              // put your logic for userLocale and redirect accordingly          

             }
    }

    @Override
    public void destroy() {
        //
    }
	

}
