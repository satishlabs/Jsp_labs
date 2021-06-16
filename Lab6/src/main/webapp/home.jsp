<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lab6</title>
</head>
<body>
<jsp:include page="header.jsp">
	<jsp:param value="Satish Labs" name="cname"/>
</jsp:include>
<form action="test">
<h1>Select the Branch</h1>
<select name="branch">
<option value="MKR">Mathikere</option>
<option value="BTM">BTM Layout</option>
</select>
<input type="submit" value="Submit"/>
</form>
<jsp:include page="footer.jsp">
	<jsp:param value="Satish Labs" name="cname"/>
</jsp:include>
</body>
</html>