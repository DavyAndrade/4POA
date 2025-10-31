package com.mycompany.conexaodb;

import model.Conexao;

public class ConexaoDB {

    public static void main(String[] args) {
        System.out.println("=== TESTE DE CONEXÃO COM MYSQL ===");

        // Criar objeto da classe de conexão
        Conexao conexao = new Conexao();

        // Testar conexão
        System.out.println("Tentando conectar...");
        conexao.iniciarBD();

        // Verificar se conectou
        if (conexao.getConexao() != null) {
            System.out.println("✅ Conexão realizada com sucesso!");

            // Fechar conexão
            conexao.fecharBD();
        } else {
            System.out.println("❌ Falha na conexão!");
        }

        System.out.println("=== FIM DO TESTE ===");
    }
}
