<%-- 
    Document   : editPerson
    Created on : Oct 7, 2019, 6:34:45 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Person</h1>
        <form action="changePerson" method="POST">
            <input type="hidden" name="id" value="${person.id}">
            Имя: <input type="text" name="name" value="${person.name}"><br><br>
            Роль:<select name="role">

                <option value="0">Ученик</option>
                <option value="1">Учитель</option>
                <option value="2">Админ</option>
            </select>
            <input type="submit" value="Сохранить">
        </form>
    </body>
</html>
