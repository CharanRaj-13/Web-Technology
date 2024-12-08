<html>
	<head>
		<title>Output Page</title>
	</head>
	<body>
		<%
			String name = (String)session.getAttribute("sessname");
			out.println("Hello User ... \n Your Name is "+name);
		%>
	</body>
</html>