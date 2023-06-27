 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="soham"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/cust.css">

<title> </title>
</head>
<body><jsp:include page="Top.jsp"></jsp:include>
<%

String userid=String.valueOf(session.getAttribute("userid"));
String usertype=String.valueOf(session.getAttribute("usertype"));
if(!userid.equalsIgnoreCase("null")){	
	
session.setMaxInactiveInterval(10*60);
 
%>
<h2>Documents</h2>
<hr>

<table class="table table-bordered">
<tr style="background-color:seashell">
<th>Docid</th>
<th>Title</th>
 
<th>Total Parts</th>
<th colspan="4">Part Names</th>  
<th colspan="2">Server Names</th>  
</tr>


<soham:forEach items="${std}" var="rec">

<tr>
<td>${rec.docid}</td>
<td>${rec.title}</td>
 
 <td>4</td>
 <td>enc_${rec.docid}_Part1</td> 
  <td>enc_${rec.docid}_Part2</td> 
  <td>enc_${rec.docid}_Part3</td> 
  <td>enc_${rec.docid}_Part4</td> 
  <td colspan="2">${rec.dhash}</td> 
</tr>

</soham:forEach>
</table>

<%
if(usertype.equals("admin")){
%> 
<%
}
else{	%>
	 
<%
	}
	
}
else{
	%>
	<h2>Invalid Session...Login again</h2>
	<br>
	<a href="index.jsp">Login</a>
	
	<%
}

%>
</body>
</html>