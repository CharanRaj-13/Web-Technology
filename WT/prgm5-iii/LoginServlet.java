import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		if("admin123".equals(password)) {
			response.addCookie(new Cookie("name", name));
			out.println("welcome "+name);
			out.println("<br><a href='ProfileServlet'>Go To Profile</a>");
		}
		else {
			out.println("Invalid Login ...");
			out.println("<br><a href=login.html>Home</a>");
		}
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}