<%-- 
    Document   : leilao
    Created on : 03/12/2017, 17:05:37
    Author     : Syane
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.jdbc.JDBC4Connection"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Leilao</title>
    </head>
    <body>
        <%
            Properties properties = new Properties();
            properties.put("user", "root");
            properties.put("password", "syane"); 
            Connection connection = new JDBC4Connection("localhost", 3306, properties, "leilao", "");
            int a = (Integer)session.getAttribute("id");
            try {
                 
                String consulta = "SELECT * FROM leilao";
                
                PreparedStatement ps = connection.prepareStatement(consulta);
                ResultSet rs = ps.executeQuery();
                out.print("<table border=\"1\">"
                        + "<thead><tr>"+
                            "<th> Descrição </th>"+
                            "<th> Último Lance </th>"
                        +   "<th>Dar Lance (+10)</th> </tr><thead>");
                while(rs.next()){
                    if(rs.getInt("status") == 1){
                    out.print("<tr><form action=\"fazerLance.jsp\">"  +
                                "<td>" + rs.getString("descricao_produto") +"</td>" +
                                "<td>" +rs.getFloat("valorLance") + "</td>"
                                + "<input type=\"hidden\" value="+rs.getInt("id")+" name=\"numero\">"
                                + "<td><input type=\"submit\" value=\"Dar Lance\"></td>" +
                            "</form>");
                    if(a == 4){
                        out.print("<form action=\"encerrarLeilao.jsp\">"+
                            "<input type=\"hidden\" value="+rs.getInt("id")+" name=\"numero\">"+
                            "<td><input type=\"submit\" value=\"Encerrar\"></td>"+
                            "</form></tr>");
                    }
                    }
                }
                out.print("</table>");
                ps.close();
            }
            
            finally {
    
                connection.close();
            }
            if(a == 4){
                out.print("<form action = \"produto.jsp\">" +
                           "<input type=\"submit\" value =\"Cadastrar Produto\">" +
                           "</form>");
            }

            %>
            <form action="lance.jsp">
                <input type="submit" value="Lance">
            </form>
            <script>
                function lance(int n){
                    Properties properties = new Properties();
                    properties.put("user", "admin");
                    properties.put("password", "1234"); 
                    Connection connection = new JDBC4Connection("localhost", 3306, properties, "leilao", "");
                    
                    try{
                        
                        String sql = "UPDATE leilao SET valorLance=valorLance+10 WHERE id = n"
                        Statement statement = connection.createStatement();
                        PreparedStatement ps2 = connection.prepareStatement(consulta);
                        ps2.executeQuery();
                        
                    }
                    finally{
                        connection.close();
                    }
                    
                    response.sendRedirect("leilao.jsp");
                    
                }
            </script>
            <form action="logout.jsp">
                <input type="submit" value="Logout">
            </form>
    </body>
</html>
