<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="yourrole" value="${user.people.role}"></c:set>
            <h1>Пользователи</h1>


            <c:forEach var="subject" items="${listPeople}">
                
                       
                        <c:if test="${subject.role == 0}">

                            <p> Имя пользователя: ${subject.name}<br>
                                Роль: Ученик<br>
                                                <c:if test="${yourrole == 2}">
                                                    <a href="editPerson?id=${subject.id}">Edit</a></p><br><br>
                        </c:if> 
                        </c:if>
                        <c:if test="${subject.role == 1}">
 
                            <p> Имя пользователя: ${subject.name}<br>
                                Роль: Учитель<br>
                                                   <c:if test="${yourrole == 2}">
                        <a href="editPerson?id=${subject.id}">Edit</a></p><br><br>
                    </c:if>
                        </c:if>
                            
                         <c:if test="${subject.role == 2}">
                            <p>Имя пользователя: ${subject.name}<br>
                            Роль: Админ<br>
                            <c:if test="${yourrole == 2}">
                        <a href="editPerson?id=${subject.id}">Edit</a></p><br><br>
                    </c:if>
                        </c:if> 



                 
            </c:forEach>

    </body>
</html>