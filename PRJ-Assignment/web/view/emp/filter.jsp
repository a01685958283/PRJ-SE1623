<%-- 
    Document   : filter
    Created on : Jun 21, 2022, 9:46:51 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    </head>
    <body>
        <table >
            <thead>
                <tr>
                    <th>Course</th>
                    <th>Group</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td valign='top'>
                        <div id="ctl00_mainContent_divCourse">
                            <table class="table">
                                <c:forEach items="${requestScope.courses}" var="c">
                                    <tr>
                                        <td>
                                            <c:choose>
                                                <c:when test="${param.course eq c.courseID}">
                                                    <b>${c.courseName}</b> (${c.courseID})
                                                </c:when>
                                                <c:otherwise>
                                                    <a target="_self" href="?course=${c.courseID}">${c.courseName}</a> (${c.courseID})
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </table>
                        </div>
                    </td>
                    <td valign='top'>
                        <div id="ctl00_mainContent_divGroup">
                            <table class="table">
                                <c:forEach items="${requestScope.groups}" var="g">
                                    <tr>
                                        <td>
                                            <c:choose>
                                                <c:when test="${param.group eq g.groupID}">
                                                    <b>${g.groupName}</b>
                                                </c:when>
                                                <c:otherwise>
                                                    <a target="_self" href="?course=${param.course}&group=${g.groupID}">${g.groupName}</a>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <c:if test="${students.size() gt 0}">
            <div id="ctl00_mainContent_divStudents">
                <table class="sortable table" id="id">
                    <thead>
                        <tr>
                            <th>Index</th>
                            <th>Member</th>
                            <th>Code</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>PhoneNumber</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.students}" var="s" varStatus="loop">
                            <tr>
                                <td>${loop.index + 1}</td>
                                <td>${s.studentCode}</td>
                                <td>${s.studentID}</td>
                                <td>${s.studentName}</td>
                                <td>${s.studentEmail}</td>
                                <td>${s.studentPhoneNumber}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
    </body>
</html>
