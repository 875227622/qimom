package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ShopServlet
 */
@WebServlet("/ShopServlet")
public class ShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("username");
		PrintWriter out=response.getWriter();
		out.println(username+"，欢迎您，请挑选物品放入购物车！<br>");
		out.println("<form action=\"AddServlet\" method=\"post\">"
				+"<input type=\"checkbox\" name=\"goods\" value=\"电话\">电话"
				+"<input type=\"checkbox\" name=\"goods\" value=\"电视\">电视"
				+"<input type=\"checkbox\" name=\"goods\" value=\"微波炉\">微波炉"
				+"<input type=\"checkbox\" name=\"goods\" value=\"冰箱\">冰箱"
				+"<input type=\"checkbox\" name=\"goods\" value=\"洗衣机\">洗衣机"
				+"<input type=\"submit\" value=\"放入购物车\">"
				+"</form>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}