<%-- 
    Document   : choose
    Created on : 15-Jul-2022, 16:24:58
    Author     : DAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action = "attendance" method = "POST">
            <div class="table-responsive">
                <table class="table table-bordered text-center">
                    <thead>
                        <tr class="bg-light-gray">
                            <th class="text-uppercase">No</th>
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
                                    ${se.timeSlotID.timeSlotBegin} - ${se.timeSlotID.timeSlotEnd} ${se.sessionDate}
                                </td>
                                <td>
                                    ${se.roomID.roomID}
                                </td>
                                <td>
                                    ${se.groupID.groupName}
                                </td>
                                <td>
                                    ${se.groupID.courseID.courseName} (${se.groupID.courseID.courseID})
                                </td>
                                <c:if test="${not requestScope.check[loop.index]}">
                                    <td>
                                        <a href="Attendance?group=${se.groupID.groupID}&session=${se.sessionID}"> Take </a>
                                    </td>
                                </c:if>
                                <c:if test="${requestScope.check[loop.index]}">
                                    <td>
                                        <a href="View?session=${se.sessionID}"> View </a>
                                    </td>
                                </c:if>
                            </tr>

                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </form>
    </body>
</html>
