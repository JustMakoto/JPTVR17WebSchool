<%-- 
    Document   : StudentGrades
    Created on : Oct 7, 2019, 9:07:09 PM
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
        <h1>Оценки</h1>


            <c:forEach var="journal" items="${listJournals}">
                Дата оценки: ${journal.date}<br>
                    Оценка: ${journal.grade}<br>
                    Имя ученика: ${journal.student.name}<br>
                    Название предмета: ${journal.subject.name}<br>
                    Имя учителя: ${journal.teacher.name}<br><br>
                    
                    <c:if test="${yourrole == 1}">
                        <a href="editGrade?id=${journal.id}">Edit</a><br><br>
                    </c:if>
           </c:forEach>

    </body>
</html>
