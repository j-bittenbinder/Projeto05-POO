
package br.com.fatecpg.db;

import java.util.ArrayList;

public class Automovel {
    private long id_automovel;
    private String placa;
    private String renavam;
    private int ano;
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
                    (int) row[3],
                    (String) row[4],
                    (String) row[5],
                    (String) row[6],
                    (Double) row[7]);
                    
            automovel.add(a);  
        }  
        return automovel;  
    }
    public static Automovel getAutomovel(long id) throws Exception {
        String SQL = "SELECT * FROM automoveis WHERE ID_AUTOMOVEL = ?";        
        ArrayList<Object[]> list = DatabaseConncector.getQuery(SQL, new Object[]{id});
        
        if(list.isEmpty()){
            return null;
        }else{
            Object row[] = list.get(0);
            Automovel a = new Automovel(
                    (long) row[0],
                    (String) row[1],
                    (String) row[2],
                    (int) row[3],
                    (String) row[4],
                    (String) row[5],
                    (String) row[6],
                    (Double) row[7]);
                    
            return a; 
        }
    }
    
    public static void addAutomovel(String placa, String renavam, int ano, String marca, String modelo, String cor, Double preco) throws Exception{
        String sql = "INSERT INTO automoveis VALUES("
                + "default"
                + ",?"
                + ",?"
                + ",?"
                + ",?"
                + ",?"
                + ",?"
                + ",?)";
        Object parameters[] = {placa, renavam, ano, marca, modelo, cor, preco};
        
        DatabaseConncector.execute(sql, parameters);
    }
    public static void removeAutomovel(long id) throws Exception{
        String sql = "delete from automoveis where ID_AUTOMOVEL = ?";
        Object parameters[] = {id};
        
        DatabaseConncector.execute(sql, parameters);
    
    }
    
    public static void editAutomovel(String placa, String marca, String modelo, String cor, Double preco, long id) throws Exception{
        String sql = "UPDATE automoveis SET"
                + "placa = ?"
                + ", marca = ?"
                + ", modelo = ?"
                + ", cor = ?"
                + ", preco = ?"
                + "WHERE ID_AUTOMOVEL = ?";
        Object parameters[] = {placa, marca, modelo, cor, preco, id};
        
        DatabaseConncector.execute(sql, parameters);
    }

    public Automovel(long id_automovel, String placa, String renavam, int ano, String marca, String modelo, String cor, Double preco) {
        this.id_automovel = id_automovel;
        this.placa = placa;
        this.renavam = renavam;
        this.ano = ano;
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

    public String getRenavam() {
        return renavam;
    }

    public void setRenavam(String renavam) {
        this.renavam = renavam;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }
   
    
}