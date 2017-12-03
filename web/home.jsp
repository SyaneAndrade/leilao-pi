<%-- 
    Document   : Login
    Created on : 26/11/2017, 19:40:43
    Author     : THIAGO
--%>

<%@page import="javax.persistence.TypedQuery"%>
<%@page import="javax.persistence.Query"%>
<%@page import="com.mysql.jdbc.JDBC4PreparedStatement"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.util.Properties"%>
<%@page import="com.mysql.jdbc.JDBC4Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>    
        <form action="login.jsp">
            <table border="0">
                <thead>
                    <tr>
                        <th>Logar no sistema</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Login:</td>
                        <td><input type="text" name="login"></td>
                    </tr>
                    <tr>
                        <td>Senha:</td>
                        <td><input type="text" name="senha"></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Login">
        </form>
        <form action="cadastrar.jsp">
            <table border="0">
                <thead>
                    <tr>
                        <th>Cadastrar Usuario</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Login: </td>
                        <td><input type="text" name="login"></td>
                    </tr>
                    <tr>
                        <td>Senha: </td>
                        <td><input type="text" name="senha"></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Cadastrar">
        </form>
    </body>
</html>
