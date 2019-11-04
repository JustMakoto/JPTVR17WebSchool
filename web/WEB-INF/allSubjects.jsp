
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
            <h1>Предметы</h1>
            <table style="text-align: center;">

                <c:forEach var="subject" items="${listSubjects}">
               
                    Ак. Часов: ${subject.hours}<br>
                    Название передмета: <a>${subject.name}</a><br><br>
                    
                    <c:if test="${yourrole == 2}">
                        <a href="editSubject?id=${subject.id}">Edit</a><br><br><br>
                    </c:if>

                 
            </c:forEach>
        </table>
    </body>
</html>