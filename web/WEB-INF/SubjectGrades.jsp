<%-- 
    Document   : SubjectGrades
    Created on : Oct 7, 2019, 9:06:15 PM
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
                
                ${journal.id}<br>
                    ${journal.date}<br>
                    ${journal.grade}<br>
                    ${journal.student.name}<br>
                    ${journal.subject.name}<br>
                    ${journal.teacher.name}<br>
                    <a href="editGrade?id=${journal.id}">Edit</a><br><br>
                
           </c:forEach>
        <a href='./'>Вернуться</a>
    </body>
</html>
