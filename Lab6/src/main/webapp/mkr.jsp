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
This is mkr.jsp Home Page<br>
Which shows ${param.bn} branch details
Contact Email : ${param.email}
<jsp:include page="footer.jsp">
	<jsp:param value="Satish Labs" name="cname"/>
</jsp:include>
</body>
</html>