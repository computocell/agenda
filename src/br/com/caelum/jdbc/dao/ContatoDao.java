package br.com.caelum.jdbc.dao;

import br.com.caelum.jdbc.ConnectionFactory;
import br.com.caelum.jdbc.modelo.Contato;

import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * Created by jefferson on 26/09/15.
 */
public class ContatoDao {

    /* A conexão com o banco de dados*/
    private final Connection connection;

    public ContatoDao()
    {
        this.connection = new ConnectionFactory().getConnection();
    }


    public void adciona(Contato contato) {
        String sql = "insert into contatos" +
                "(nome,email,endereco,dataNascimento)" + "values(?,?,?,?)";
        try {
            //prepared statement para inserção
            PreparedStatement stmt = connection.prepareStatement(sql);

            /*Setando os valores*/

            stmt.setString(1, contato.getNome());
            stmt.setString(2, contato.getEmail());
            stmt.setString(3, contato.getEndereco());
            //stmt.setDate(4, new Date(contato.getDataNascimento().getTimeInMillis()));
            stmt.setDate(4, new Date(
                    contato.getDataNascimento().getTimeInMillis()));
            System.out.println(stmt);

            /*Executa */
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public List<Contato> getLista() {
        try {
            List<Contato> contatos = new ArrayList<Contato>();
            PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM contatos");

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
            /*Criando Objeto Contato*/
                Contato contato = new Contato();
                contato.setId(rs.getLong("id"));
                contato.setNome(rs.getString("nome"));
                contato.setEmail(rs.getString("email"));
                contato.setEndereco(rs.getString("endereco"));

            /*montando a data através do Calendar*/

                Calendar data = Calendar.getInstance();
                data.setTime(rs.getDate("DataNascimento"));
                contato.setDataNascimento(data);

            /*adicionando o obj à lista*/
                contatos.add(contato);
            }
            rs.close();
            stmt.close();
            return contatos;
            } catch (SQLException e) {
                throw new RuntimeException(e);
        }

    }

    public void altera(Contato contato){
        String sql ="UPDATE contatos SET nome=?,email=?,endereco=?," +
                "dataNascimento=? where id= ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1,contato.getNome());
            stmt.setString(2,contato.getEmail());
            stmt.setString(3,contato.getEndereco());
            stmt.setDate(4, new Date(contato.getDataNascimento().getTimeInMillis()));
            stmt.setLong(5,contato.getId());
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void delete(Contato contato){
        try {
            PreparedStatement stmt = connection.prepareStatement("DELETE FROM contatos WHERE id=?");
                stmt.setLong(1,contato.getId());
                stmt.execute();
                stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
