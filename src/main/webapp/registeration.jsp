<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>

<%
String student_name=request.getParameter("sname");
String gender=request.getParameter("gender");
String m="Sir";
String f="Madam";
// Date dt = new Date();
// int hours = dt.getHours();

Calendar now = Calendar.getInstance();
int hours= now.get(Calendar.HOUR);

if(hours>=1 || hours<=12){%>
	Hi <%= student_name %> Good Morning 
	
<% }else if(hours>=12 || hours<=16){%>
 
	Hi <%= student_name %> Good Afternoon

<% }else if(hours>=16 || hours<=21){%>

	Hi <%= student_name %> Good Evening

<% }else if(hours>=21 || hours<=24){%>

	Hi <%= student_name %> Good Night
<%
} 

if(gender.equals("Male")){
	out.print("Sir");
}else{
	out.print("Madom");
}
%>








	


