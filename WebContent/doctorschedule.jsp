<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.medical.model.Patient"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Patient pat = (Patient) session.getAttribute("currentSessionPatient");%>
<c:forEach items="${schedules}" var="schedule">
        <tr>
            <td>${schedule.doc_id}</td>
          <td><fmt:formatDate type="date" value="${schedule.date}" /></td>
          <c:forEach items="${schedule.mor_list}" var="mor" >
          <tr>
          <td><a href="BookAppointment?doc_id=${schedule.doc_id}&date=${schedule.date}&st_time=${mor}&pat_id=pat.getId()">
          <button><fmt:formatDate type="time" value="${mor}" /></button></a></td>  
          
        </tr>
        </c:forEach>
        <c:forEach items="${schedule.eve_list}" var="eve" >
          <tr>
          <td><a href="BookAppointment?doc_id=${schedule.doc_id}&date=${schedule.date}
          &st_time=${eve}&pat_id=pat.getId()">
          <button><fmt:formatDate type="time" value="${eve}" /></button></a></td>  
        </tr>
        </c:forEach>
        </tr>
    </c:forEach>
</body>
</html>