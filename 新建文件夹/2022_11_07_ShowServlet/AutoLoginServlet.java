package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AutoLogin
 */
@WebServlet("/AutoLoginServlet")
public class AutoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AutoLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
	    String username=request.getParameter("username");
	    String password=request.getParameter("password");
	    HttpSession session=request.getSession();
	    PrintWriter out=response.getWriter();
	    if("zd".equals(username) && "123".equals(password)){
	        session.setAttribute("user",username);
	        String choice=request.getParameter("choice");
	        if(choice!=null){
	            Cookie cookie=new Cookie("myLogin",username);
	            cookie.setMaxAge(Integer.parseInt(choice));
	            response.addCookie(cookie);
	        }
	        response.sendRedirect("WelcomeServlet");
	    }else{
	        out.println("用户名或密码错误，3秒后返回登录页面！");
	        response.setHeader("Refresh","3;URL=autoLogin.html");
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
