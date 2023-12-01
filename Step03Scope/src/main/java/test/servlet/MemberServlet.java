package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dto.MemberDto;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDto dto = new MemberDto(1, "김구라", "노량진");
		
		req.setAttribute("MemberDto", dto);
		RequestDispatcher rd = req.getRequestDispatcher("/test/member.jsp");
		rd.forward(req,resp);
	}
}
