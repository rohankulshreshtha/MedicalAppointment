<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.medical.model.Patient"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ForgotServlet" method="post">  
ID:<input type="text" name="id"><br>  
<input type="submit" value="submit">
<center>
  <% Patient pat = (Patient) session.getAttribute("currentSessionPatient");%>
			
            Welcome <%= pat.getName() + " " + pat.getAge() %>
         </center>  
</form> 
</body>
</html>