<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<body>
	 <%
	 	System.out.println("hmmm");
	 	if ("POST".equalsIgnoreCase(request.getMethod())) {
	 		String uname = request.getParameter("uname");
	 		out.println("You input the username: " + uname + "<br>");
	 		String userid=request.getParameter("uname"); 
	 		String pass=request.getParameter("pass"); 
	 		Class.forName("com.mysql.jdbc.Driver"); 
	 		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test","username","secretPassword"); 
	 		Statement st= con.createStatement(); 
	 		ResultSet rs=st.executeQuery("select * from users where username='"+userid+"'"); 
	 		if(rs.next()) { 				
	 			if(rs.getString("password").equals( (pass) )) { 
	 				session.setAttribute("authenticated", userid);
	 				response.sendRedirect("home.jsp");
	 			}else { 
	 				out.println("Invalid password try again"); 
	 			}
	 		}
		}
	 %>

	<form action="" method="POST">
	  Username: <input type="text" name="uname"><br>
	  Password: <input type="text" name="pass"><br>
	  <input type="submit" value="Submit">
	</form>
</body>
</html>
