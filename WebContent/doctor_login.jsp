<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="DoctorLoginServlet" method="post">  
Name:<input type="text" name="id"><br>  
Password:<input type="password" name="password"><br> 
<%
String login_msg=(String)request.getAttribute("error");  
if(login_msg!=null)
out.println("<font color=red size=4px>"+login_msg+"</font>");
%><br> 
<input type="submit" value="login">  
</form> 
</body>
</html>