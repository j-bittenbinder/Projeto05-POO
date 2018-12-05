
package br.com.fatecpg.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Automovel {
    private int id_automovel;
    private String placa;
    private String modelo;
    private String cor;
    private Float preco;

    public static ArrayList<Automovel> getAutomoveis() throws Exception {
        ArrayList<Automovel> list = new ArrayList<>();
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/concessionariaDB";
        String user = "grupo05", pass = "12345";
        Connection grupo05Con = DriverManager.getConnection(url, user, pass);
        Statement automovelStmt = grupo05Con.createStatement();
        String SQL = "SELECT * FROM automoveis";
        ResultSet automovelsRs = automovelStmt.executeQuery(SQL);
        while(automovelsRs.next()){
            int id_automovel = automovelsRs.getInt("id_automovel");
            String placa = automovelsRs.getString("placa");
            String modelo = automovelsRs.getString("modelo");
            String cor = automovelsRs.getString("cor");
            Float preco = automovelsRs.getFloat("preco");
            
            Automovel c = new Automovel(id_automovel, placa, modelo, cor, preco);
            list.add(c);

        }
        automovelStmt.close();
        grupo05Con.close();
        return list;
    }

    public Automovel(int id_automovel, String placa, String modelo, String cor, Float preco) {
        this.id_automovel = id_automovel;
        this.placa = placa;
        this.modelo = modelo;
        this.cor = cor;
        this.preco = preco;
    }
    

    public int getId_automovel() {
        return id_automovel;
    }

    public void setId_automovel(int id_automovel) {
        this.id_automovel = id_automovel;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public Float getPreco() {
        return preco;
    }

    public void setPreco(Float preco) {
        this.preco = preco;
    }
   
    
}