<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
	String updateQuery="update trainee_detail set branch=?, college_name=? where trainee_name=?";
	String trainee_name=request.getParameter("trainee_name");
	String branch=request.getParameter("branch");
	String college_name=request.getParameter("college_name");
	
	PreparedStatement pstmt =conn.prepareStatement(updateQuery);
	pstmt.setString(3,trainee_name);
	pstmt.setString(1,branch);
	pstmt.setString(2,college_name);
	int edit=0;
	edit=pstmt.executeUpdate();
	if(edit==0)
	{
		out.println("Error while edit the record");
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