<%-- 
    Document   : allGrades
    Created on : Oct 7, 2019, 6:29:00 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Оценки</h1>


            <c:forEach var="journal" items="${listJournals}">
                
                Дата: ${journal.date}<br>
                    Оценка: ${journal.grade}<br>
                    Ученик: ${journal.student.name}<br>
                    Предмет: ${journal.subject.name}<br>
                    Учитель: ${journal.teacher.name}<br>
                    <a href="editGrade?id=${journal.id}">Edit</a><br><br><br>
                  
           </c:forEach>
    </body>
</html>
