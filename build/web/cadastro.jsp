<%-- 
    Document   : cadastro
    Created on : 22/11/2017, 15:44:15
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
        <form action="cadastramento.jsp">
            <table>
                <tr>
                    <td>Nome: </td>
                    <td><input type="text" namef="name"></td> 
                </tr>
                <tr>
                    <td>Login:</td>
                    <td><input type="text" name="login"></td> 
                </tr>
                <tr>
                    <td>Senha:</td>
                    <td><input type="text" name="senha"</td>
                </tr>
                <tr>
                    <td><input type="submit" value="cadastrar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
