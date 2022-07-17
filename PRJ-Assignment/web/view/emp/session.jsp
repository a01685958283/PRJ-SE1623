<%-- 
    Document   : choose
    Created on : 15-Jul-2022, 16:24:58
    Author     : DAT
--%>

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
           
        </style>
    </head>
    <body>

        <form action = "attendance" method = "POST">
            <div class="table-responsive">
                <table>
                        <tr class="bg-light-gray">
                            <th class="text-uppercase"></th>
                            <th class="text-uppercase">Time</th>
                            <th class="text-uppercase">Room</th>
                            <th class="text-uppercase">Group</th>
                            <th class="text-uppercase">Course</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${requestScope.sessions}" var="se" varStatus="loop">
                            <tr>
                                <td>
                                    ${se.timeSlotID.timeSlotID}
                                </td>
                                <td>
                                    ${se.timeSlotID.timeSlotBegin} - ${se.timeSlotID.timeSlotEnd} </br>
                                    (${se.sessionDate})
                                </td>
                                <td>
                                    ${se.roomID.roomID}
                                </td>
                                <td>
                                    <span style="color: blue">${se.groupID.groupName}</span>
                                </td>
                                <td>
                                    ${se.groupID.courseID.courseName} (${se.groupID.courseID.courseID})
                                </td>
                                <td>
                                    <a href="Attendance?groupID=${se.groupID.groupID}&sessionID=${se.sessionID}"> Take </a>
                                </td>
                            </tr>

                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </form>
    </body>
</html>
