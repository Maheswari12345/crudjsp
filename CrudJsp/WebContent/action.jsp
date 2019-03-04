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
	String insertQuery="Insert into trainee_detail values (?,?,?)";
	String tname=request.getParameter("name");
	String dept=request.getParameter("branch");
	String cname=request.getParameter("college");
	
	PreparedStatement pstmt =conn.prepareStatement(insertQuery);
	pstmt.setString(1,tname);
	pstmt.setString(2,dept);
	pstmt.setString(3,cname);
	int insert=0;
	insert=pstmt.executeUpdate();
	if(insert==0)
	{
		out.println("Error while insert the record");
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