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
		<tr>
			<td>3. Collection of Collections.</td>
			
			<td>Coming Soon</td>
		</tr>
		<tr>
			<td>4. Customer or User defined class object.</td><br/>
			<br/><br/>
			<td>Cid: ${CUST.cid}<br/>
			Cname: ${sessionScope.CUST.cname}<br/>
			Email: ${sessionScope.CUST.email}<br/>
			Phone: ${sessionScope.CUST.phone}<br/>
			Accno: ${sessionScope.CUST.account.accno}<br/>
			Atype: ${sessionScope.CUST.account.atype}<br/>
			Bal: ${sessionScope.CUST.account.bal}<br/>
			Street: ${sessionScope.CUST.account.address.street}<br/>
			City: ${sessionScope.CUST.account.address.city}<br/>
		</tr>
		<tr>
			<td>5. Collection of User defined class object.</td>
			
			<td>Cid: ${CS[0].cid}<br/>
			Cname: ${sessionScope.CS[0].cname}<br/>
			Email: ${sessionScope.CS[0].email}<br/>
			Phone: ${sessionScope.CS[0].phone}<br/>
			Accno: ${sessionScope.CS[0].account.accno}<br/>
			Atype: ${sessionScope.CS[0].account.atype}<br/>
			Bal: ${sessionScope.CS[0].account.bal}<br/>
			Street: ${sessionScope.CS[0].account.address.street}<br/>
			City: ${sessionScope.CS[0].account.address.city}<br/>
			</td>
		</tr>
	</table>
</body>
</html>