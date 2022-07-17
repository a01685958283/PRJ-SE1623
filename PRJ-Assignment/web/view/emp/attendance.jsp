<%-- 
    Document   : attendance
    Created on : 28-Jun-2022, 20:27:04
    Author     : DAT
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="now" class="java.util.Date" />
        
        <fmt:formatDate var="recordtime" type="both" value="${now}" pattern="HH:mm:ss" />
        
        <form action = "Attendance" method = "POST">
            
            <table  margin: 0;
                    padding: 0 ;cellspacing="5" width=80% height="500" border="2">
                <tr>
                    <td valign="top">No</td>
                    <td valign="top">Group</td>
                    <td valign="top">Code</td>
                    <td valign="top">Name</td>
                    <td valign="top">Status</td>
                    <td valign="top">Comment</td>
                </tr>
                <c:forEach items="${requestScope.listStudent.st}" var="list" varStatus="loop">
                    <input type="hidden" name="recordtime_${list.studentID}" value="${recordtime}"/>
                    <tr>
                        <td hidden><input type="text" name="studentID" value="${list.studentID}"/></td>
                        <td valign="top">${loop.index+1}</td>
                        <td valign="top"><span style="color: blue">${listStudent.groupName}</span></td>
                        <td valign="top"><span style="color: blue">${list.studentID}</span></td>
                        <td valign="top"><span style="color: blue">${list.studentName}</span></td>
                        <td valign="top">
                            <input type="radio" name="status_${list.studentID}" checked value="absent"/>Absent</br>
                            <input type="radio" name="status_${list.studentID}" value="present"/>Present</br>
                        </td>
                        <td valign="top"><input type="text" name="comment_${list.studentID}"/></td>
                    </tr>
                </c:forEach>
            </table>
            <input type="submit"  value="Save">
        </form>
    </body>
</html>
