package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

import java.util.Calendar;

/**
 * Created by jefferson on 26/09/15.
 */
public class InsereDao
{
    public static void main (String[]args) {
        /*Chamar o bean*/
        Contato contao = new Contato();
        contao.setNome("Fernanda");
        contao.setEmail("fernanda@exemplo.com.br");
        contao.setEndereco("R. Amedronsa Ferreira, 98 - SP");
        contao.setDataNascimento(Calendar.getInstance());

        /*Gravar nessa sessão - auxilixar DAO*/
        ContatoDao dao = new ContatoDao();

        /*Metodo elegante de inserção*/
        dao.adciona(contao);
        System.out.println("Gravado!");

    }
}
