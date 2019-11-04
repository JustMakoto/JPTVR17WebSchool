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
        <table style='text-align: center;'>
            <c:forEach var="journal" items="${listJournals}">
                
                
                    Дата оценки: ${journal.date}<br>
                    Оценка: ${journal.grade}<br>
                    Имя ученика: ${journal.student.name}<br>
                    Название предмета: ${journal.subject.name}<br>
                    Имя учителя: ${journal.teacher.name}<br>
                    <a href="editGrade?id=${journal.id}">Edit</a><br><br><br>
                   
           </c:forEach>
        </table>
    </body>
</html>