package test.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/friend/list")
public class FriendServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<String> list = new ArrayList<>();
		list.add("김구라");
		list.add("해골");
		list.add("원숭이");
		
		req.setAttribute("friends", list);
		RequestDispatcher rd = req.getRequestDispatcher("/test/friend.jsp");
		//jsp 페이지(view page)로 forward 이동해서 응답
		rd.forward(req, resp);
	}
}
