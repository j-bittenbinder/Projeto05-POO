<%-- 
    Document   : cadastrar
    Created on : 08/12/2018, 02:42:01
    Author     : Julio
--%>

<%@page import="br.com.fatecpg.db.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
            String error = null;
                if (request.getParameter("cadastrar") != null) {
                    String nome = request.getParameter("nome");
                    String cpf = request.getParameter("cpf");
                    String email = request.getParameter("email");
                    String telefone = request.getParameter("telefone"); 
                    
                    Cliente.addCliente(nome, cpf, email, telefone);
                    response.sendRedirect("listar.jsp");
                }
%>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 5 - Cadastrar Cliente</title>
    </head>
    <body style="padding-bottom: 30px;">
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Cadastrar Cliente</h1>
        </div>      
            <form class="container">
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="inputNome">Nome</label>
                      <input type="text" class="form-control" name="nome" placeholder="Nome">
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputCPF">CPF</label>
                      <input type="text" class="form-control" name="cpf" placeholder="CPF">
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputEmail">E-Mail</label>
                      <input type="text" class="form-control" name="email" placeholder="E-Mail">
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputTelefone">Telefone</label>
                      <input type="text" class="form-control" name="telefone" placeholder="Telefone">
                    </div>  
                </div> 
                <center>
                    <button type="submit" class="btn btn-dark" name="cadastrar">Cadastrar</button>
                    <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                </center>
                <br>
          </form>
    </body>
</html>
