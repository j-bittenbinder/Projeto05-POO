<%-- 
    Document   : listarVeiculo
    Created on : 12/10/2018, 20:34:42
    Author     : Positivo
--%>

<%@page import="br.com.fatecpg.db.Automovel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                        <th>Placa</th>
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
                    <td><%= c.getPlaca()%></td>
                    <td><%= c.getMarca()%></td>
                    <td><%= c.getModelo()%></td>
                    <td><%= c.getCor()%></td>
                    <td><%= c.getPreco()%></td>
                    <td>
                        <a href="alterarVeiculo.jsp?i=<%=c%>"><button type="button" class="btn btn-light">Alterar</button></a>
                        <a href="excluirVeiculo.jsp?i=<%=c%>"><button type="button" class="btn btn-dark">Excluir</button></a>
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