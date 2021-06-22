<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lab9</title>
</head>
<body>
	<h1>Satish Labs</h1>
	<table>
		<tr>
			<td>Student Name</td>
			<td>${param.sname}</td>
		</tr>
		<tr>
			<td>Primary Email</td>
			<td>${param.email}</td>
		</tr>
		<tr>
			<td>Secondary Email</td>
			<td>${param.email}</td>
		</tr>
		<tr>
			<td>Host</td>
			<td>${header.host}</td>
		</tr>
		<tr>
			<td>Referer</td>
			<td>${header.referer}</td>
		</tr>
		<tr>
			<td>JSessionID Cookie</td>
			<td>${cookie.JESSIONID.value}</td>
		</tr>
		<tr>
			<td>Email Cookie</td>
			<td>${cookie.email.value}</td>
		</tr>
		<tr>
			<td>Phone Cookie</td>
			<td>${cookie.phone.value}</td>
		</tr>
		<tr>
			<td>CP: State</td>
			<td>${initParam.state}</td>
		</tr>
		<tr>
			<td>CP: City</td>
			<td>${initParam.city}</td>
		</tr>
		<tr>
			<td>Using PageContext</td>
			<td>${pageContext.session.id}<br/>
			${pageContext.request.remoteAddr}<br/>
			${pageContext.request.method}<br/>
			${pageContext.request.requestURI}<br/>
			${pageContext.response.contentType}<br/>
			</td>
		</tr>
	</table>
</body>
</html>