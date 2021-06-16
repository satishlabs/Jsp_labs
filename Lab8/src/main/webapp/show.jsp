<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lab8</title>
</head>
<body>
<jsp:useBean id="ST1" class="com.satishlabs.Student"/>
<jsp:setProperty property="sid" name="ST1"/>
<hr/>
<h1>Sid:
	<jsp:getProperty property="sid" name="ST1"/><br/>
	Name:
	<jsp:getProperty property="name" name="ST1"/><br/>
	Phone:
	<jsp:getProperty property="phone" name="ST1"/><br/>
	
	<jsp:useBean id="ST2" class="com.satishlabs.Student"/>
	<jsp:setProperty property="*" name="ST2"/>
	<hr/>
	Sid:
	<jsp:getProperty property="sid" name="ST2"/><br/>
	Name:
	<jsp:getProperty property="name" name="ST2"/><br/>
	Phone:
	<jsp:getProperty property="phone" name="ST2"/><br/>	
	
	<jsp:useBean id="ST3" class="com.satishlabs.Student"/>
	<jsp:setProperty property="*" name="ST3"/>
	<hr/>
	Sid:
	<jsp:getProperty property="sid" name="ST3"/><br/>
	Name:
	<jsp:getProperty property="name" name="ST3"/><br/>
	Phone:
	<jsp:getProperty property="phone" name="ST3"/><br/>	
</h1>
</body>
</html>