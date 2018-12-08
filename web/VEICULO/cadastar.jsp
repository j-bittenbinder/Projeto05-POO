<%-- 
    Document   : cadastarVeiculo
    Created on : 12/10/2018, 20:34:14
    Author     : Positivo
--%>
<%@page import="br.com.fatecpg.db.Automovel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
            String error = null;
                if (request.getParameter("cadastrar") != null) {
                    String placa = request.getParameter("placa");
                    String renavam = request.getParameter("renavam");
                    int ano = Integer.parseInt(request.getParameter("ano"));
                    String marca = request.getParameter("marca");
                    String modelo = request.getParameter("modelo");
                    String cor = request.getParameter("cor");
                    String preco = request.getParameter("preco"); 
                    
                    double p = Double.parseDouble(preco);
                    Automovel.addAutomovel(placa,renavam, ano, marca, modelo, cor, p);
                    response.sendRedirect("listar.jsp");
                    
                    
                }
%>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 5 - Cadastrar Veículo</title>
    </head>
    <body style="padding-bottom: 30px;">
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Cadastrar Veículo </h1>
        </div>      
            <form class="container">
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="inputPlaca">Placa</label>
                      <input type="text" class="form-control" name="placa" placeholder="Placa">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="inputRenavam">Renavam</label>
                      <input type="text" class="form-control" name="renavam" placeholder="Renavam">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="inputAno">Ano</label>
                      <input type="text" class="form-control" name="ano" placeholder="Ano">
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputMarca">Marca</label>
                      <input type="text" class="form-control" name="marca" placeholder="Marca">
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputModelo">Modelo</label>
                      <input type="text" class="form-control" name="modelo" placeholder="Modelo">
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputCor">Cor</label>
                      <input type="text" class="form-control" name="cor" placeholder="Cor">
                    </div>    
                    <div class="form-group col-md-6">
                      <label for="inputPreco">Preço</label>
                      <input type="number" class="form-control" name="preco" placeholder="Preço">
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
