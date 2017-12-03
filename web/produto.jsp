<%-- 
    Document   : produto
    Created on : 03/12/2017, 18:58:55
    Author     : Syane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Produto</title>
    </head>
    <body>
        <form action="cadastrarproduto.jsp">
            <table border="0">
                    <thead>
                        <tr>
                            <th>Cadastro</th>
                            <th> do Produto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Descrição: </td>
                            <td><input type="text" name="descricao"></td>
                        </tr>
                        <tr>
                            <td>Lance Minimo: </td>
                            <td><input type="text" name="lance"></td>
                        </tr>
                        <tr>
                            <td>Status: </td>
                            <td><input type="text" name="status"></td>
                        </tr>
                    </tbody>
                </table>
            <input type="submit" value="Cadastrar">
    </form>
    <form action="logout.jsp">
        <input type="submit" value="Logout">
    </form>
    </body>
</html>
