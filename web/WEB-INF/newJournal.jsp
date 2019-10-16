<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Школа</title>
    </head>
    <body>
       <form action="newJournal" method="POST">
        <h1>Выставление оценки</h1>
        Выберите ученика: 
        <select name="student">
            <c:forEach var="student" items="${listStudents}">
                    <option value="${student.id}">${student.name}</option>      
                    </c:forEach>
        </select><br><br>
        
        Выберите учителя:
        <select name="teacher">
            <c:forEach var="teacher" items="${listTeachers}">
                    <option value="${teacher.id}">${teacher.name}</option>    
                    </c:forEach>
        </select><br><br>
        
        Выберите предмет:
        <select name="subject">
            <c:forEach var="subject" items="${listSubjects}">
                <c:if test="${subject.name != null}">
                    <option value="${subject.id}">${subject.name}</option>
                   </c:if>
            </c:forEach>
        </select><br><br>
        
        Выберите оценку:
        <select name="grade">
            <option value="!" required>!</option>
        <option  value="1">1</option>
        <option  value="2">2</option>
        <option  value="3">3</option>
        <option  value="4">4</option>
        <option value="5">5</option>
        </select>
        <br>
        <input type="submit" vlaue="Поставить оценку">
    </form>
    </body>
</html>
