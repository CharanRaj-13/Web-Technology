<%@page contentType="text/html" language="java" import="java.sql.*"%>
<html>
	<head>
		<title>Exam Server</title>
		<style type="text/css">
			body{background-color: "white"; color: "red"}
		</style>
	</head>
	<body>
		<h2 style="text-align: center">Online Exam</h2>
		<p><a href="ExamClient.html">Back</a></p>
		<%
			String str1 = request.getParameter("ans1");
			String str2 = request.getParameter("ans2");
			String str3 = request.getParameter("ans3");
			int mark = 0;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "23271307");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM answers");
			int i = 1;
			while(rs.next()){
				if(i==1){
					String dbans1 = rs.getString(1);
					if(str1.equals(dbans1)){
						mark = mark + 5;
					}
				}
				if(i==2){
					String dbans2 = rs.getString(1);
					if(str2.equals(dbans2)){
						mark = mark + 5;
					}
				}
				if(i==3){
					String dbans3 = rs.getString(1);
					if(str3.equals(dbans3)){
						mark = mark + 5;
					}
				}
				i++;
			}
			if(mark > 10){
				out.println("<h4>Your Mark is :"+mark+"</h4>");
				out.println("<h4>You are Elligible for the next round</h4>");
			}
			else{
				out.println("<h4>Your Mark is :"+mark+"</h4>");
				out.println("<h4>You are Not 	elligible for the next round</h4>");

			}
		%>
	</body>
</html>