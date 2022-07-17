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
        <style type="text/css">
            table, th, td{
                border:1px solid #868585;
            }
            table{
                border-collapse:collapse;
                width:100%;
            }
            th, td{
                text-align:left;
                padding:10px;
            }
            table tr:nth-child(odd){
                background-color:#eee;
            }
            table tr:nth-child(even){
                background-color:white;
            }
            table tr:nth-child(1){
                background-color:skyblue;
            }
        </style>
    </head>
    <body>

        <jsp:useBean id="now" class="java.util.Date" />

        <fmt:formatDate var="recordtime" type="both" value="${now}" pattern="HH:mm:ss" />

        <form action="Attendance" method="POST">
            <table>
                <tr>
                    <td class="text-uppercase">No</td>
                    <td class="text-uppercase">Group</td>
                    <td class="text-uppercase">Code</td>
                    <td class="text-uppercase">Name</td>
                    <td class="text-uppercase">Status</td>
                    <td class="text-uppercase">Comment</td>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.listStudent.st}" var="list" varStatus="loop">
                    <input type="hidden" name="recordtime_${list.studentID}" value="${recordtime}"/>
                    <tr>
                        <td hidden><input type="text" name="studentID" value="${list.studentID}"/></td>
                        <td valign="top">${loop.index+1}</td>
                        <td valign="top">${listStudent.groupName}</td>
                        <td valign="top"><span style="color: blue">${list.studentID}</span></td>
                        <td valign="top">${list.studentName}</td>
                        <td valign="top">
                            <input type="radio" name="status_${list.studentID}" checked value="absent"/>Absent</br>
                            <input type="radio" name="status_${list.studentID}" value="present"/>Present</br>
                        </td>
                        <td valign="top"><input type="text" name="comment_${list.studentID}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <input type="submit"  value="Save">
    </form>
</body>
</html>
