<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "javax.servlet.* , com.neosoft.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
int wamt=Integer.parseInt(request.getParameter("wamt"));
//int wamount=Integer.parseInt(request.getParameter("wamt"));

String message=Account.withdraw(wamt);
%>
<h1><%= message %></h1>

<%
int balance=Account.showBalance();

%>
<h1>Your Balance is:<%= balance %></h1>

</body>
</html>