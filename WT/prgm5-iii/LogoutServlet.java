import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LogoutServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
		response.setContentType("text/html");
		Cookie cookie = new Cookie("name", "");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("Successfully Logged Out ");
		out.println("<br><a href=index.html>Home</a>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}