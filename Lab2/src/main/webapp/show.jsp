<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lab2</title>
</head>
<body>
<h1>
	Hi <%=request.getAttribute("NM") %>
	<br/>You have sent request on
	<%=request.getAttribute("DT") %>
</h1>
</body>
</html>