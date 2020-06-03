<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Blog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
List<Blog> lista = (List<Blog>) request.getAttribute("lista");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <font color="" face="courier,arial,Brush Script MT">
        <h1 align="center">Blog de salud</h1>
       
        <style type="text/css">
	nav {
	background-color: orange;
	text-align: center;
	clear: both;}
        nav li {display: inline-block; padding: 10px;}
        nav li a {color: black;}
        .leermas {text-align: right; display: inline-block;
	padding: 10px;}
        </style>
        <nav>
		<ul>
			<li><a href="MainController?op=nuevo">Nueva entrada</a></li>
			<li><a href="http://virtual.emergentes.tk/">Salir</a></li>
		</ul>
	 </nav>
         </font>
        <font face="courier,arial,Copperplate">
        <section> 
            
            <article>
                <c:forEach var="blog" items="${lista}">
                
                    
                    <p>${blog.fecha}</p>
                    <h1>${blog.titulo}</h1>
                    <h3>${blog.contenido}</h3>
                    
                 
                    
 <p><a href="MainController?op=editar&id=${blog.id}">Editar</a>
 <a href="MainController?op=eliminar&id=${blog.id}"onclick="return(confirm('esta seguro??'))">Eliminar</a></p>
 &copy; Administrador
                
             </article>  
             <hr>
 
        </section>
       </c:forEach>
           </font>
    </body>
</html>
