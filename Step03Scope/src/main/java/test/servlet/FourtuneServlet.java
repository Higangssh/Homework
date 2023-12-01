package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/fortune")
public class FourtuneServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fortune ="동쪽으로 가면 귀인을 만나요!";
		
		/*
		 * HTTPServletRequest 객체의 setAttribute (key, value) 메소드를 이용해서 응 답에 필여한
		 * 데이터를  담아 둘수 있다.
		 * 담은 데이터는 응답하기 전까지 유효하며 응답을 마친 이후에는 없어지는 1회성 데이터이다.
		 * 담은 데이터를 얻어내는 방법은
		 * HTTPServletRequest 객처의 getAttribute(key)메소드 활용하면된다.
		 * 단, 담을때 Object type 으로 받아주기 때문에 어떤 type 이든 담을수 있지만
		 * 얻어낼떄도 역시 Object type 으로 return 되기 떄문에 원래 type 을 기억하고 하고 있다가 Casting 이 필요하다
		 * 
		 * 예를 들어 fortuneToday 라는 key 값으로 String type 을 담았다면 얻어 낼때는 다음과 같은 코드가 된다
		 * 
		 * String a = (String)request.getAttribute("fortuneToday");
		 * 
		 */
		
		// .setAttribute(key , value)
		req.setAttribute("fortuneToday", fortune);
		
		//request 영역(scope) 에 key fortuneToday 에 String 타입 fortune 을 넣는다 .
		
		//webapp/test/fortun.jsp 페이지로 응답을 위임할 수 있는 요청 전달자 객체 얻어내기
		RequestDispatcher rd= req.getRequestDispatcher("/test/fortune.jsp");
		//응답 위임하기 (forward 이동, 서버내에서의 이동, 클라이언트와 상관없음)
		rd.forward(req, resp);
	}
}
