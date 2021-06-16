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
<hr/>
Using useBean and Other tags
<jsp:useBean id="ST" class="com.satishlabs.Student" scope="session"/>
<jsp:setProperty property="sid" name="ST" value="88"/>
<jsp:setProperty property="name" name="ST" value="Satish"/>
<jsp:setProperty property="phone" name="ST" value="7042333502"/>
<br/>
Sid: <jsp:getProperty property="sid" name="ST"/><br/>
Name: <jsp:getProperty property="name" name="ST"/><br/>
Phone: <jsp:getProperty property="phone" name="ST"/>
</body>
</html>