<%@ page language="java" contentType="text/html" import="java.sql.*" %>
<html>
	<head>
		<title>Mark List</title>
	</head>
	<body>
		<h2>Examination Result</h2>
		<%
			String regno = request.getParameter("regno");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "23271307");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM marks WHERE regno = "+regno);
			while(rs.next()){
		%>
			Register Number : <%=rs.getObject(1) %><br>
			Name : <%=rs.getObject(2) %><br>
			<table border="1">
				<thead>
					<tr>
						<th>Subject</th>
						<th>Marks</th>
					</tr>
				</thead>
				<tr><td>Computer Networks</td><td><%=rs.getObject(3) %></td></tr>
				<tr><td>Web Technology</td><td><%=rs.getObject(4) %></td></tr>
				<tr><td>Scripting Language</td><td><%=rs.getObject(5) %></td></tr>
			</table>
		<%
			}
		%>
		<br>
		<a href="stud.html">Back</a>
	</body>
</html>