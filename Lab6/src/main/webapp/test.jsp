<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lab6</title>
</head>
<body>
<% String bn = request.getParameter("branch");
if(bn.equals("MKR")){
%>
<jsp:forward page="mkr.jsp">
	<jsp:param value="MKR" name="bn"/>
	<jsp:param value="mkr@gmail.com" name="email"/>
</jsp:forward>
<%
}else if(bn.equals("BTM")){
%>
<jsp:forward page="btm.jsp">
	<jsp:param value="BTM" name="btm"/>
	<jsp:param value="btm@gmail.com" name="email"/>
</jsp:forward>
<%
}%>
</body>
</html>