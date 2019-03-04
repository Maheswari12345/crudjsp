<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Table content</title>
</head>
<body>
<a href="home.jsp">Home</a>
 
  
  <table border="1">
    <tr>
         <th>T.No</th>
         <th>Trainee Name</th>
         <th>Department</th>
         <th>college Name</th>
         <th>Actions</th>
    </tr>
<% 
        try{
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    		Statement stmt =conn.createStatement();
    		ResultSet rs=stmt.executeQuery("SELECT * FROM trainee_detail");
    		int i=0;
    		while(rs.next()){ 	
        	
        	
   %>
    <tr>
         <td><%=i++ %></td>
         <td><%=rs.getString(1) %></td>
         <td><%=rs.getString(2) %></td>
         <td><%=rs.getString(3) %></td>
         <td><a href="edit.jsp?trainee_name=<%=rs.getString(1) %>">Edit </a>|| <a href="delete.jsp?trainee_name=<%=rs.getString(1) %>">Delete</a></td>
    </tr>
    <%
    		}
    		 rs.close();
    		 stmt.close();
    		 conn.close();
        }
         catch(Exception e)
{
        	 out.println(e.getMessage());
}
        

    		 
    
    
    %>
    
   
 
    
  
    
    
   </table>
  

</body>
</html>