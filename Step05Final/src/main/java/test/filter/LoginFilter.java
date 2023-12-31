package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebFilter("/user/protected/*")
public class LoginFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//1. 로그인된 클라이언트인지 확인한다
		//부모 타입을 자식 타입 으로 casting
		HttpServletRequest req=(HttpServletRequest)request;
		HttpSession session= req.getSession();
		String id=(String)session.getAttribute("id");
		//2. 만일 로그인을 했으면 관여하지 않고 요청의 흐름을 이어간다.
		if(id != null) {
			chain.doFilter(request, response);
		}else {//3. 로그인을 하지 않았으면 로그인 폼으로 이동할 수 있도록 리다일렉트 응답을 준다.
			//절대 경로 이동을 위해 context path 도 읽어온다.
			String cPath = req.getContextPath();
			HttpServletResponse res=(HttpServletResponse)response;
			//리다일렉트 응답
			res.sendRedirect(cPath+"/user/loginform.jsp");

		}
	}
	
}
