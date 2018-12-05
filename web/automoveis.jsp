<%-- 
    Document   : automoveis
    Created on : 05/12/2018, 14:24:29
    Author     : Julio
--%>

<%@page import="br.com.fatecpg.db.Automovel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Automovel</title>
    </head>
    <body>
        <h1>Listar Automoveis</h1>
        <h2>Automoveis</h2>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Placa</th>
                <th>Modelo</th>
                <th>Cor</th>
                <th>Preço</th>
            </tr>
            <% try {
                for(Automovel c : Automovel.getAutomoveis()){%>
                <tr>
                    <td><%= c.getId_automovel()%></td>
                    <td><%= c.getPlaca()%></td>
                    <td><%= c.getModelo()%></td>
                    <td><%= c.getCor()%></td>
                    <td><%= c.getPreco()%></td>
                </tr>
               <%}%>
                
            <%}catch(Exception e){ %>
            <tr>
                <td colspan="3"><%= e.getMessage()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
