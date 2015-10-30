package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by jefferson on 26/09/15.
 */
public class BuscaSimples {

    public static void main(String[]args) throws SQLException {
        Connection con = new ConnectionFactory().getConnection();
        PreparedStatement stmt = con.prepareStatement("SELECT * FROM contatos");

        //executa um select
        ResultSet rs =  stmt.executeQuery();

        //itera no Resultset
        while (rs.next())
        {
            String nome = rs.getString("nome");
            String email = rs.getString("email");
            String endereco = rs.getString("endereco");

            System.out.println(
                    "################ Registro {"+rs.getInt("id")+"} ######################\n" +
                    "Nome:: "+nome+"\n" +
                    "Email:: "+email+"\n"+
                    "Endereço:: "+endereco+"\n ");

        }
        rs.close();
        stmt.close();
        con.close();
    }
}
