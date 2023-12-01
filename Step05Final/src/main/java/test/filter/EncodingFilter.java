package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/*
 *  요청을 중간에 가로채서 encoding 설정을 해주는Filter 만들기
 */

//이 context 에 들어오는 모든 요청에 대해서 필터링을 수행하겠다는 의미
@WebFilter("/*")
public class EncodingFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {	
		System.out.println("EncodingFilter");
		if(request.getCharacterEncoding()==null) {
			request.setCharacterEncoding("utf-8");
		}
		
		chain.doFilter(request, response);
	}
	
}
