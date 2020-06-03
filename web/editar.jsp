<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Blog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Blog blog = (Blog) request.getAttribute("blog");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <font face="Comic Sans MS,arial">
        <h1>
            <c:if test="${blog.id == 0}">Nueva Entrada </c:if>
            <c:if test="${blog.id != 0}">Editar Entrada </c:if>
        </h1>
        <form action="MainController" method="post">
           <table>
                <input type="hidden" name="id" value="${blog.id}">
                <tr>
                    <td>Fecha</td>
                    <td><input type="date" name="fecha" value="${blog.fecha}"></td>
                </tr>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="${blog.titulo}"></td>
                </tr>
                <tr>
                     <td>Contenido</td>
   <td><textarea name="contenido" rows="10" cols="40" value="${blog.contenido}">Escribe aqui tu contenido</textarea></td>
               </tr>
               <tr>
                  
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
                </font>
                
          </table> 
       </form>
    </body>
</html>
