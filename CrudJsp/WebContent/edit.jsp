<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>edit record</title>
</head>
<body>
	<h1 align="center">add a new record</h1>
	<form action="editaction.jsp">
		<table>
			<tr>
				<th>column name</th>
				<th>value</th>
			</tr>
			<%
				String tname = request.getParameter("trainee_name");
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery("SELECT * FROM trainee_detail where trainee_name='"+ tname +"'");
					int i = 0;
					if (rs.next()) {
			%>


			<tr>
				<td>trainee_name</td>
				<td><input type="text" name="trainee_name"
					value="<%=rs.getString(1)%>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>branch</td>
				<td><input type="text" name="branch" value="<%=rs.getString(2)%>"></td>
			</tr>
			<tr>
				<td>college_name</td>
				<td><input type="text" name="college_name" value="<%=rs.getString(3)%>"></td>
			</tr>
			<tr>
				<td><input type="reset" value="clear"></td>
				<td><input type="submit" value="update"></td>
			</tr>
				
			


			<%
				}
					rs.close();
					stmt.close();
					conn.close();
					
					
				} catch (Exception e) {
					out.println(e.getMessage());
				}
			%>
	</table>
	</form>
</body>
</html>