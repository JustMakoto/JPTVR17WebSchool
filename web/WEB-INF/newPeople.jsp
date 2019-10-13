

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Школа</title>
    </head>
    <body>
        <h1>Новая учетная запись</h1>
        <form action="newPeople" method="POST">
            Имя: <input type="text" name="name"><br><br>
            Роль:
            <select name="role">
                <option value="1"> Teacher</option><br>
            <option  value="0"> Student</option><br><br>
            </select>
            <input type="submit" value="Подтвердить">
        </form>
        Создан пользователь: ${people.name} 

        
    </body>
</html>