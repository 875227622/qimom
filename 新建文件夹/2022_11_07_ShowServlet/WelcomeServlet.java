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
 * Servlet implementation class Welcome
 */
@WebServlet("/WelcomeServlet")
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WelcomeServlet() {
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
		//检查Cookies中是否保存了登录信息
		Cookie[] cookies=request.getCookies();
		if(cookies!=null){
		    for(Cookie cookie:cookies){
		        if(cookie.getName().equals("myLogin")){
		            //将登录的用户名保存在session中
		            session.setAttribute("username",cookie.getValue());
		            break;
		        }
		    }
		}
	    String user=(String)session.getAttribute("username");
	    PrintWriter out=response.getWriter();
	    if(user==null){
	    	 out.println("请先登录，3秒后返回登录页面！");
	         response.setHeader("Refresh","3;URL=autoLogin.html");
	    }else{
	        out.println(user+"，欢迎登录！");
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
