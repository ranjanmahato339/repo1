<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String rollno=request.getParameter("number");
String rating=request.getParameter("rating");
String course=request.getParameter("course");
String[] liking=request.getParameterValues("likness");
String fname = name.substring(0,1).toUpperCase()+name.substring(1);
out.println(fname+" whose email is "+email+" and roll no is "+rollno+" rated "+rating+" for our collage.");
%>		
<br>
<% 
out.println(fname+"'s favrioute course is "+course+".");
%>
<br>
<%  
out.print(fname+" likes ");
if (liking.length==2)
{
	for(int i =0; i<liking.length-1;i++)
		 out.print(liking[i]+" ");
}else{
	for(int i =0; i<liking.length-1;i++)
		if (i==1)
		{
			out.print(liking[i]+" ");
		}else{
			out.print(liking[i]+", ");
		}		 
} 
if (liking.length==1)
 {
	 out.print(liking[liking.length-1]+" of our college.");
 }else{
	 out.print("and "+liking[liking.length-1]+" of our college.");
 }
 
%>
</body>
</html>