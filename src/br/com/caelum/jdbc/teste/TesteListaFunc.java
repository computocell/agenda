package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.dao.FuncionariosDao;
import br.com.caelum.jdbc.modelo.Contato;
import br.com.caelum.jdbc.modelo.Funcionarios;

import java.util.List;

/**
 * Created by jefferson on 26/09/15.
 */
public class TesteListaFunc {

    public static void main(String[]args){
        FuncionariosDao dao = new FuncionariosDao();
        List<Funcionarios> funcionarios = dao.getLista();

        for(Funcionarios funcionario : funcionarios){
            System.out.println("Nome: "+funcionario.getNome());
            System.out.println("Usuario: "+funcionario.getUsuario());
            System.out.println("Senha: "+funcionario.getSenha());
            System.out.println("--: \n");
        }

    }
}
