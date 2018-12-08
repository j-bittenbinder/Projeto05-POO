/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.db;

import java.util.ArrayList;

/**
 *
 * @author Julio
 */
public class Cliente {
    private long id_cliente;
    private String nome;
    private String cpf;
    private String email;
    private String telefone;
    
    public static ArrayList<Cliente> getClientes() throws Exception {
        ArrayList<Cliente> cliente = new ArrayList<>();
        String SQL = "SELECT * FROM cliente";        
        ArrayList<Object[]> list = DatabaseConncector.getQuery(SQL, new Object[]{});
        for(int i = 0; i < list.size(); i++){
            Object row[] = list.get(i);
            Cliente c = new Cliente(
                    (long) row[0],
                    (String) row[1],
                    (String) row[2],
                    (String) row[3],
                    (String) row[4]);
                    
            cliente.add(c);  
        }  
        return cliente;  
    }

    public static void removeCliente(long id) throws Exception{
        String sql = "delete from cliente where ID_CLIENTE = ?";
        Object parameters[] = {id};
        
        DatabaseConncector.execute(sql, parameters);
    }
    
    public static void addCliente(String nome, String cpf, String email, String telefone) throws Exception{
        String sql = "INSERT INTO cliente VALUES("
                + "default"
                + ",?"
                + ",?"
                + ",?"
                + ",?)";
        Object parameters[] = {nome, cpf, email, telefone};
        
        DatabaseConncector.execute(sql, parameters);
    }
    
    public Cliente(long id_cliente, String nome, String cpf, String email, String telefone) {
        this.id_cliente = id_cliente;
        this.nome = nome;
        this.cpf = cpf;
        this.email = email;
        this.telefone = telefone;
    }
    
        public long getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(long id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
}
