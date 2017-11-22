<%-- 
    Document   : login
    Created on : 22/11/2017, 15:38:40
    Author     : Syane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Leilao</title>
    </head>
    <body>
        <% try{
             String logout = request.getParameter("logout");
            if(logout.equals("logout")){
                session.invalidate();
             }
            }
            catch(Exception e){
            }
           %>
        <form action="">
                <table>
                    <tr>
                        <td>Login: </td>
                        <td><input type="text" name="id"></td> 
                    </tr>
                    <tr>
                        <td>Senha</td>
                        <td><input type="text" name="senha"></td> 
                    </tr>
                    <tr>
                        <td><input type="submit" value="login"></td>
                    </tr>
                </table>
            </form>
        <form action="cadastro.jsp">
            <input type="submit" value="inscrever-se">
        </form>
    </body>
</html>
