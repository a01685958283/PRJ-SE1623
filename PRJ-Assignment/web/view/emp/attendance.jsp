<%-- 
    Document   : attendance
    Created on : 28-Jun-2022, 20:27:04
    Author     : DAT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <table  margin: 0;
                    padding: 0 ;cellspacing="5" width=80% height="500" border="2">
                <tr>
                <strong>Attendenced for PRJ391 with lecture sonnt5 at slot 5 on Monday 20/06/2022</strong>        
                </tr>
                <tr>
                    <td valign="top">No</td>
                    <td valign="top">Group</td>
                    <td valign="top">Code</td>
                    <td valign="top">Name</td>
                    <td valign="top">Status</td>
                    <td valign="top">Comment</td>
                </tr>
                <c:forEach items="${requestScope.group.st}" var="g" varStatus="loop">
                <tr>
                    <td valign="top">${loop.index+1}</td>
                    <td valign="top"><span style="color: blue">${requestScope.group.groupName}</span></td>
                    <td valign="top"><span style="color: blue">${g.studentID}</span></td>
                    <td valign="top"><span style="color: blue">${g.studentName}</span></td>
                    <td valign="top">
                        <input type="radio" name="attendence" value="absent"/>Absent</br>
                        <input type="radio" name="attendence" value="present"/>Present
                    </td>
                    <td valign="top">
                        <input type="text" name="note"/><br/>
                    </td>
                </tr>
                </c:forEach>
            </table>
            <input type="submit"  value="Save">
        </form>
    </body>
</html>
