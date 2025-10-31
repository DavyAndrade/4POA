package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    private Connection con;
    
    public void iniciarBD() {
        try {
            String database = "jdbc:mysql://localhost:3306/empresa";
            String usuario = "root";
            String senha = "";
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(database, usuario, senha);
            
            System.out.println("Conexão estabelecida com sucesso!");
            
        } catch (ClassNotFoundException e) {
            System.out.println("Driver não encontrado: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Erro na conexão: " + e.getMessage());
        }
    }
    
    public void fecharBD() {
        try {
            if (con != null && !con.isClosed()) {
                con.close();
                System.out.println("Conexão fechada!");
            }
        } catch (SQLException e) {
            System.out.println("Erro ao fechar conexão: " + e.getMessage());
        }
    }
    
    public Connection getConexao() {
        return con;
    }
}