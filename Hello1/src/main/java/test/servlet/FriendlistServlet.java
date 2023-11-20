package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/friends")
public class FriendlistServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 설정
		resp.setContentType("text/html; charset=utf-8");
		
		//요청을 한 클라이언트에게 문자열을 출력할수 있는 객체에 참조값 얻어내기
		PrintWriter pw= resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset= 'utf-8'");
		pw.println("<title>친구 목록</title>");
		pw.println("</head>");
		pw.println("<body>");
		
		List<String> list = new ArrayList<String>();
		list.add("김구라");
		list.add("원숭이");
		list.add("해골");
		String friend ="" ;
		pw.println("<ul>");
		for(int i=0 ; i < list.size() ; i++) {
			friend = list.get(i);
			
			pw.println(" \t <li> "+ friend +"</li>");
			
		}
		for(String tmp : list) {
			pw.println(" \t <li> "+ tmp +"</li>");
		}
		pw.println("</ul>");
		pw.println("</body>");
		pw.println("</html>");

		pw.close();
	}
}
