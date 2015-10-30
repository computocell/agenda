package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

import java.util.List;

/**
 * Created by jefferson on 26/09/15.
 */
public class TesteLista {

    public static void main(String[]args){
        ContatoDao dao = new ContatoDao();
        List<Contato> contatos = dao.getLista();

        for(Contato contato : contatos){
            System.out.println("Nome: "+contato.getNome());
            System.out.println("Email: "+contato.getEmail());
            System.out.println("Endereço: "+contato.getEndereco());
            System.out.println("Data de Nascimento: "+contato.getDataNascimento().getTime()+"\n");
        }

    }
}
