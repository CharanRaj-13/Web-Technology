import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ProfileServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
		response.setContentType("text/html");
		Cookie[] cookies = request.getCookies();
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if("name".equals(cookie.getName())) {
					out.println("Welcome to Your Profile, "+cookie.getValue());
					out.println("<br><a href=index.html>Home</a>");
					return;
				}
			}
		}
		else {
			out.println("Please login first ...");
			out.println("<br><a href=login.html>Login</a>");
		}
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}