
package br.com.fatecpg.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Automovel {
    private long id_automovel;
    private String placa;
    private String marca;
    private String modelo;
    private String cor;
    private Double preco;

    public static ArrayList<Automovel> getAutomoveis() throws Exception {
        ArrayList<Automovel> automovel = new ArrayList<>();
        String SQL = "SELECT * FROM automoveis";        
        ArrayList<Object[]> list = DatabaseConncector.getQuery(SQL, new Object[]{});
        for(int i = 0; i < list.size(); i++){
            Object row[] = list.get(i);
            Automovel a = new Automovel(
                    (long) row[0],
                    (String) row[1],
                    (String) row[2],
                    (String) row[3],
                    (String) row[4],
                    (Double) row[5]);
                    
            automovel.add(a);  
        }  
        return automovel;  
    }

    public Automovel(long id_automovel, String placa, String marca, String modelo, String cor, Double preco) {
        this.id_automovel = id_automovel;
        this.placa = placa;
        this.marca = marca;
        this.modelo = modelo;
        this.cor = cor;
        this.preco = preco;
    }
    
    
    public long getId_automovel() {
        return id_automovel;
    }

    public void setId_automovel(long id_automovel) {
        this.id_automovel = id_automovel;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }
    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
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

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }
   
    
}