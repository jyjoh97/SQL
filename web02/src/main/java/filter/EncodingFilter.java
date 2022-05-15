package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {
	
	private String encoding = null;
	
	public void init(FilterConfig config) throws ServletException {
		System.out.println("ChangeEncodingFilter INIT");
		
		encoding = config.getInitParameter("encoding");		// UTF-8
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("1. ChangeEncodingFilter IN");
		request.setCharacterEncoding(encoding);
		
		chain.doFilter(request, response);
		
		System.out.println("1. ChangeEncodingFilter OUT");
	}

	public void destroy() {
		System.out.println("CharacterEncodingFilter 종료");
	}
	

}

/*
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");
	다 하고 나면 위 두 문장으로 적용함
*/