
			<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert page</title>
</head>
<body>
	<h1 align="center">add a new record</h1>
	<form action="action.jsp">
		<table>
			<tr>
				<th>column name</th>
				<th>value</th>
			</tr>
			<tr>
				<td>name</td>
				<td><input type="text" name="name" required="required"
					placeholder="enter the name"></td>
			</tr>
			<tr>
				<td>branch</td>
				<td><input type="text" name="branch" required="required">
				</td>
			</tr>
			<tr>
				<td>college</td>
				<td><input type="text" name="college" required="required">
				</td>
			</tr>
		
			<tr>
				<td><input type="reset" value="clear"></td>
				<td><input type="submit" value="submit"></td>
			</tr>

	

		</table>
	</form>

</body>
</html>