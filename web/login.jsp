<%-- 
    Document   : login
    Created on : 25-05-2020, 03:39:39 PM
    Author     : lizAraziel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <font color="" face="Comic Sans MS,arial,Verdana">
        <div style="text-align:center;">
        <h1>Login</h1>
        
        <form action="LoginControlador" method="post">
            <label>Usuario</label>
            <td><input type="text" name="usuario"></td>
            <br><br>
            <label>Password</label>
            <td><input type="password" name="password"></td>
            <br><br>
            <input type="submit" value="Ingresar">
            
        </form>
        </div>
        </font>
    </body>
</html>
