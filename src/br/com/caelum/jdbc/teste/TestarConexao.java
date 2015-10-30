package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.ConnectionFactory;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by jefferson on 26/09/15.
 */
public class TestarConexao {

    public static void main(String[]args) throws SQLException {
        Connection connection = new ConnectionFactory().getConnection();
        System.out.println("Conexão aberta!");
        connection.close();
    }
}
