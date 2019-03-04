<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete</title>
</head>
<body>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
	String trainee_name =request.getParameter("trainee_name");
	Statement stmt =conn.createStatement();
	int delete=0;
	delete=stmt.executeUpdate("delete FROM trainee_detail where trainee_name='"+trainee_name+"'");
	if(delete==0)
	{
		out.println("Error while deleting the record");
	}else
		
	{
		response.sendRedirect("read.jsp");
	}
	
}catch(Exception e)
{
	out.println(e.getMessage());
}








%>

</body>
</html>