package br.com.caelum.servelet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;
/**
 * Created by Jefferson on 07/10/2015.
 */
@WebServlet("/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet{
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        PrintWriter out = response.getWriter();

        //Pegand os pârametros do Request
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String email = request.getParameter("email");
        String dataEmTexto = request
                .getParameter("dataNascimento");
        Calendar dataNascimento = null;
        //Fazendo a conversão da data
        try {
            Date date = new SimpleDateFormat("dd/MM/yyyy")
                    .parse(dataEmTexto);
            dataNascimento = Calendar.getInstance();
            dataNascimento.setTime(date);
        } catch (ParseException e) {
            out.println("Erro de Conversão da data");
            return;//para a execução do método
        }

        //monta um objeto contato
        Contato contato = new Contato();
        contato.setNome(nome);
        contato.setEmail(email);
        contato.setEndereco(endereco);
        contato.setDataNascimento(dataNascimento);

        //Salva o contato
        ContatoDao dao = new ContatoDao();
        dao.adciona(contato);

        //imprime o nome do contato adcionado
        out.println("<html>");
        out.println("<body>");

        out.println("Contato "+contato.getNome()+
                " adicionado com sucesso");
        out.println("<a href='../adiciona-contato.html'>Voltar</a>");
        out.println("</body>");
        out.println("</html>");
    }
/*

    protected void service(HttpServletRequest request,
                           HttpServletResponse response)
            throws IOException, ServletException {

        PrintWriter out = response.getWriter();

        //Pegand os pârametros do Request
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String email = request.getParameter("email");
        String dataEmTexto = request
                .getParameter("dataNascimento");
        Calendar dataNascimento = null;
        //Fazendo a conversão da data
        try {
            Date date = new SimpleDateFormat("dd/MM/yyyy")
                    .parse(dataEmTexto);
            dataNascimento = Calendar.getInstance();
            dataNascimento.setTime(date);
        } catch (ParseException e) {
            out.println("Erro de Conversão da data");
            return;//para a execução do método
        }



        //monta um objeto contato
        Contato contato = new Contato();
        contato.setNome(nome);
        contato.setEmail(email);
        contato.setEndereco(endereco);
        contato.setDataNascimento(dataNascimento);

        //Salva o contato
        ContatoDao dao = new ContatoDao();
        dao.adciona(contato);

        //imprime o nome do contato adcionado
        out.println("<html>");
        out.println("<body>");

        out.println("Contato "+contato.getNome()+
            " adicionado com sucesso");
        out.println("</body>");
        out.println("</html>");

    }
*/





}
