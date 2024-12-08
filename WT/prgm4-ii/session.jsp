<!DOCTYPE html>
<html>
	<head>
		<title>Session Page</title>	
	</head>
	<body>
		<%
			String uname = request.getParameter("inputname");
			out.println("Name : " +uname);
			session.setAttribute("sessname", uname);
		%>
		<a href="output.jsp"><b>Check Output Page Here</b></a>
	</body>
</html>