<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
    <c:forEach items="${appointments}" var="appointment">
        <tr>
            <td>${appointment.doc_id}</td>
            <td><c:out value="${appointment.pat_id}" /></td>
            <td><c:out value="${appointment.app_id}" /></td>
            <td><fmt:formatDate type="time" value="${appointment.st_time}" /></td>
            <td><fmt:formatDate type="date" value="${appointment.date}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>