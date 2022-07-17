<%-- 
    Document   : login
    Created on : Jul 14, 2022, 9:45:25 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
        function logout(){
            window.location.href='Logout';
        } 
    </script>
    </head>
    <body>
        <form method="POST" action="Login">
            Username: <input type="text" name="username"/> <br/>
            Password: <input type="password" name="password"/> <br/>
            <input type="submit" value="Login"/>
            <input type="button" value="Logout" onclick="logout()"/>
        </form>
    </body>
</html>
