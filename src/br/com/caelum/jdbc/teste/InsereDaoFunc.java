package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.dao.FuncionariosDao;
import br.com.caelum.jdbc.modelo.Contato;
import br.com.caelum.jdbc.modelo.Funcionarios;

import java.util.Calendar;

/**
 * Created by jefferson on 26/09/15.
 */
public class InsereDaoFunc
{
    public static void main (String[]args) {
        /*Chamar o bean*/
        Funcionarios funcionarios = new Funcionarios();
        funcionarios.setNome("Jefferson");
        funcionarios.setUsuario("Admin");
        funcionarios.setSenha("12345");

        /*Gravar nessa sessão - auxilixar DAO*/
        FuncionariosDao dao = new FuncionariosDao();
        /*Metodo elegante de inserção*/
        dao.adciona(funcionarios);
        System.out.println("Gravado!");

    }
}
