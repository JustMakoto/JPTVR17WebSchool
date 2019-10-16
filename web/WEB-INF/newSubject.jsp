<%-- 
    Document   : newSubject
    Created on : Oct 3, 2019, 9:34:45 AM
    Author     : pupil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Школа</title>
    </head>
    <body>
        <h1>Создание предмета</h1>
        <form action="newSubject" method="POST">
            Название: <input type="text" name="subjectName"><br>
            Количество часов: <input type="number" name="subjectHours" min="1" max="1000"><br>
            <input type="submit" value="Создать">
        </form>
        Создан предмет: ${subject.name} ${subject.hours} Академ ч.
    </body>
</html>
