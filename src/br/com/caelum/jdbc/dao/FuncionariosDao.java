package br.com.caelum.jdbc.dao;

import br.com.caelum.jdbc.ConnectionFactory;
import br.com.caelum.jdbc.modelo.Funcionarios;

import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * Created by jefferson on 26/09/15.
 */
public class FuncionariosDao {

    /* A conexão com o banco de dados*/
    private final Connection connection;

    public FuncionariosDao()
    {
        this.connection = new ConnectionFactory().getConnection();
    }


    public void adciona(Funcionarios funcionarios) {
        String sql = "insert into funcionarios" +
                "(nome,usuario,senha)" + "values(?,?,?)";
        try {
            //prepared statement para inserção
            PreparedStatement stmt = connection.prepareStatement(sql);

            /*Setando os valores*/

            stmt.setString(1, funcionarios.getNome());
            stmt.setString(2, funcionarios.getUsuario());
            stmt.setString(3, funcionarios.getSenha());

            /*Executa */
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public List<Funcionarios> getLista() {
        try {
            List<Funcionarios> funcionarios = new ArrayList<Funcionarios>();
            PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM funcionarios");

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
            /*Criando Objeto Contato*/
                Funcionarios funcionario = new Funcionarios();

                funcionario.setId(rs.getLong("id"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setUsuario(rs.getString("usuario"));
                funcionario.setSenha(rs.getString("senha"));



            /*adicionando o obj à lista*/
                funcionarios.add(funcionario);
                funcionarios.add(funcionario);
            }
            rs.close();
            stmt.close();
            return funcionarios;
            } catch (SQLException e) {
                throw new RuntimeException(e);
        }

    }

    public void altera(Funcionarios funcionarios){
        String sql ="UPDATE funcionarios SET nome=?,usuario=?, senha=? where id= ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1,funcionarios.getNome());
            stmt.setString(2,funcionarios.getUsuario());
            stmt.setString(3, funcionarios.getSenha());
            stmt.setLong(4,funcionarios.getId());
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void delete(Funcionarios funcionarios){
        try {
            PreparedStatement stmt = connection.prepareStatement("DELETE FROM funcionarios WHERE id=?");
                stmt.setLong(1,funcionarios.getId());
                stmt.execute();
                stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
