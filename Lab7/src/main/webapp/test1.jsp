<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.satishlabs.Student" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lab7</title>
</head>
<body>
<h1>
	<%
		Student stud = new Student();
	stud.setSid(99);
	stud.setName("Prasad");
	stud.setPhone(88888888);
	session.setAttribute("STUD", stud);
	%>
	<hr/>
	<%
		Student std = (Student)session.getAttribute("STUD");
	%>
	Sid: <%=std.getSid()%><br/>
	Name:<%=std.getName()%><br/>
	Phone:<%=std.getPhone()%><br/>
</h1>
</body>
</html>