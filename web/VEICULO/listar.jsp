<%-- 
    Document   : listarVeiculo
    Created on : 12/10/2018, 20:34:42
    Author     : Positivo
--%>

<%@page import="br.com.fatecpg.db.Automovel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%         
    if (request.getParameter("excluir") != null) {
        long id = Long.parseLong(request.getParameter("id"));
        Automovel.removeAutomovel(id);
    }
%>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 5 - Listar Veículos</title>
    </head>
    <body style="padding-bottom: 30px;">
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Listar Veículos </h1>
        </div>
        
        <div class="container">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Placa</th>
                        <th>Renavam</th>
                        <th>Ano</th>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Cor</th>
                        <th>Preço</th>                        
                        <th>Comandos</th>

                    </tr>
                </thead>
                <% try {
                for(Automovel c : Automovel.getAutomoveis()){%>
                <tr>
                    <td><%= c.getId_automovel()%></td>
                    <td><%= c.getPlaca()%></td>
                    <td><%= c.getRenavam()%></td>
                    <td><%= c.getAno()%></td>
                    <td><%= c.getMarca()%></td>
                    <td><%= c.getModelo()%></td>
                    <td><%= c.getCor()%></td>
                    <td><%= c.getPreco()%></td>
                    <td>
                        <form>
                            <input type="hidden" name="id" value="<%= c.getId_automovel()%>">
                            <a href="alterar.jsp?i=<%= c.getId_automovel()%>"><button type="button" class="btn btn-light">Alterar</button></a>
                            <input type="submit" name="excluir" class="btn btn-dark" value="Excluir">
                        </form>
                    </td>
                </tr>
               <%}%>
                
            <%}catch(Exception e){ %>
            <tr>
                <td colspan="3"><%= e.getMessage()%></td>
            </tr>
            <%}%>
            </table><br>
        </div>
    </body>
</html>
