package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart");
		if (cart == null) {
			cart = new ArrayList<String>();
		}
		request.setCharacterEncoding("UTF-8");
		String[] goods = request.getParameterValues("goods");
		int num = 0;
		if (goods != null) {
			num = goods.length;
			for (String s : goods) {
				cart.add(s);
			}
		}
		session.setAttribute("cart", cart);
		PrintWriter out = response.getWriter();
		out.println("成功将" + num + "件物品放入购物车！<br>");
		out.println("<a href=\"ShopServlet\">继续购物</a><br>");
		out.println("<a href=\"ShowServlet\">查看购物车</a><br>");
		out.println("<a href=\"LogoutServlet\">退出</a>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
