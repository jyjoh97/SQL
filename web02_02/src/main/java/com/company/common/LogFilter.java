package com.company.common;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


@WebFilter(filterName = "LogFilter1", urlPatterns = { "/logFilter1" })
public class LogFilter implements Filter {

	
    public LogFilter() {
        
    }


	public void destroy() {
		System.out.println("접속종료");
	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String ipAddress = request.getRemoteAddr();
		System.out.println("IP : "+ipAddress+", Time : "+new Date().toString());
		chain.doFilter(request, response);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("접속하였음");
	}

}
