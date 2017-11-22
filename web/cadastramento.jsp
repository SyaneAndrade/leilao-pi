<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : cadastramento
    Created on : 22/11/2017, 16:30:25
    Author     : Syane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="">
            <%
                String nome = request.getParameter("name");
                String login = request.getParameter("login");
                String senha = request.getParameter("senha");
%>
                
<sql:update var="usuario" dataSource="jdbc/leilao">
INSERT INTO usuario (nome, login,senha)
VALUES (nome, login,senha)
                                </sql:update>

            <h1>Cadastramento feito com sucesso</h1>
        </form>
        <h1>Hello World!</h1>
    </body>
</html>
