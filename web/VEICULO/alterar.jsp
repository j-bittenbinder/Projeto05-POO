<%-- 
    Document   : alterarVeiculo
    Created on : 12/10/2018, 20:34:28
    Author     : Positivo
--%>
<%@page import="br.com.fatecpg.db.Automovel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    long id = Long.parseLong(request.getParameter("i"));
    Automovel v = Automovel.getAutomovel(id);
    
%>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 5 - Alterar Veículo</title>
    </head>
    <body style="padding-bottom: 30px;">
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Alterar Veículo </h1>
        </div>
        

        <form class="container">
           
            <div class="form-row"> 

                <div class="form-group col-md-6">
                    <label>Placa</label>
                    <input type="text" class="form-control" name="placa" value="<%= v.getPlaca() %>" />
                </div>
                
                <div class="form-group col-md-6">
                    <label for="inputRenavam">Renavam</label>
                    <input type="text" class="form-control" name="renavam" value="">
                </div>
                
                <div class="form-group col-md-6">
                    <label for="inputAno">Ano</label>
                    <input type="text" class="form-control" name="ano" value="">
                </div>

                <div class="form-group col-md-6">
                    <label>Marca</label>
                    <input type="text" class="form-control" name="marca"  value="" />
                </div>

                <div class="form-group col-md-6">
                    <label> Modelo</label>
                    <input type="text" class="form-control" name="modelo" value="" />
                </div>

                <div class="form-group col-md-6">
                    <label>Cor</label>
                    <input type="text" class="form-control" name="cor" value='' />
                </div>
            </div>
            <center>
                <input type="submit" class="btn btn-dark" name="alterar" value="Alterar" />
                <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
            </center> 
            <br>
        </form>
    </body>
</html>
