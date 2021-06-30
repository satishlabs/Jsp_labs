<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lab10</title>
</head>
<body>
	<h1>Satish Labs</h1>
	<table>
		<tr>
			<td>1. Strings, Wrapper and Date.</td>
			
			<td>${requestScope.EM}<br /> ${requestScope.PH}<br />
				${requestScope.DOB}<br /></td>
		</tr>
		<tr>
			<td>2. Collection of Strings, Wrapper and Date.</td>
			
			<td>${requestScope.AL[1]}<br />
			    ${requestScope.AL[2]}<br /> 
				${requestScope.AL[3]}<br />
				${requestScope.AL[4]}<br />
				${requestScope.STR[0]}<br />
				${requestScope.STR[1]}<br />
				${requestScope.STR[2]}<br />
				${requestScope.STR[3]}<br />
				</td>
		</tr>
	</table>
</body>
</html>