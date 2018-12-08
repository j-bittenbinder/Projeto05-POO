<%-- 
    Document   : listar
    Created on : 08/12/2018, 02:27:36
    Author     : Julio
--%>

<%@page import="br.com.fatecpg.db.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%         
    /*if (request.getParameter("excluir") != null) {
        long id = Long.parseLong(request.getParameter("id"));
        Automovel.removeAutomovel(id);
    } */
%>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 5 - Listar Clientes</title>
    </head>
    <body style="padding-bottom: 30px;">
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Listar Clientes </h1>
        </div>
        
        <div class="container">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>E-mail</th>
                        <th>Telefone</th>                        
                        <th>Comandos</th>

                    </tr>
                </thead>
                <% try {
                for(Cliente c : Cliente.getClientes()){%>
                <tr>
                    <td><%= c.getId_cliente()%></td>
                    <td><%= c.getNome()%></td>
                    <td><%= c.getCpf()%></td>
                    <td><%= c.getEmail()%></td>
                    <td><%= c.getTelefone()%></td>
                    <td>
                        <form>
                            <input type="hidden" name="id" value="<%= c.getId_cliente()%>">
                            <input type="submit" name="alterar" class="btn btn-dark" value="Alterar">
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
