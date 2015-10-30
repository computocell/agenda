package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;

/**
 * Created by jefferson on 26/09/15.
 */
public class JDBCInsere {
    public static void main(String[]args) throws SQLException {

        Connection con = null;
        try
        {
            /*Abre a conexao*/
            con = new ConnectionFactory().getConnection();
            String sql = "insert into contatos"+
                    "(nome,email,endereco,dataNascimento)"+
                    "values(?,?,?,?)";
           /* Cria um preparedStatement*/
            PreparedStatement stmt = con.prepareStatement(sql);
            /*Preeenche com valores*/
        stmt.setString(1,"Frederico");
        stmt.setString(2,"frederico@golle.com.br");
        stmt.setString(3,"Rua luiz lage 45");
        stmt.setDate(4,new java.sql.Date(Calendar.getInstance().getTimeInMillis()));

            /*Ecutavao*/

        stmt.execute();
        stmt.close();

            System.out.println("Gravado no Banco com sucesso!");
        }catch (SQLException e)
        {
            System.out.println(e);
        }
        finally {

            con.close();
        }
    }
}
