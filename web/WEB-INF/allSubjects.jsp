<%-- 
    Document   : allSubjects
    Created on : Oct 7, 2019, 6:30:10 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Предметы</h1>
 
        <c:forEach var="subject" items="${listSubjects}">
            <c:if test="${subject.name != null}">
            ${subject.name}<br>
            Академ. Ч. ${subject.hours} <br>
            <a href="editSubject?id=${subject.id}">Edit</a> <br><br><br>
            </c:if>
       </c:forEach>
    </body>
</html>
