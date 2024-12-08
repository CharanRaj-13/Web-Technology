import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Servlet1 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		out.println("Your Entered Name : " +name);
	}
}