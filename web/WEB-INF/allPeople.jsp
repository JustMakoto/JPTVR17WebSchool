<%-- 
    Document   : allPeople
    Created on : Oct 7, 2019, 6:34:24 PM
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
        <h1>Пользователи</h1>

        <c:forEach var="subject" items="${listPeople}">
            ${subject.name}
                    <c:if test="${subject.role == 1}">Учитель</c:if>
        <c:if test="${subject.role == 0}">Ученик</c:if><br>
            <a href="editPerson?id=${subject.id}">Edit</a><br><br><br>
 
       </c:forEach>

    </body>
</html>
