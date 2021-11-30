
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%!
	double findEmi(double P, int n, double r) {
		return P * r * (Math.pow(1 + r, n) / (Math.pow(1 + r, n) - 1));
	}

	/* double findEmi(double P,int n,double r){
		double ab=Math.pow(1+r,n);
		double bl=Math.pow(1+r,n)-1;
		double emi=P*r*Math.abs(ab/bl);
		return emi;
	} */
	%>
	<%
	double p = Double.parseDouble(request.getParameter("loanamt"));
	int n = Integer.parseInt(request.getParameter("pyear"));
	double r = Double.parseDouble(request.getParameter("rateofintrest"));
	int m = n * 12;
	double rt = r / (12 * 100);
	%>

	<h1>
		Your Monthly EMI is:<%=findEmi(p, m, rt)%></h1>


</body>
</html>

