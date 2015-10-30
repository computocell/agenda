package br.com.caelum.servelet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Jefferson on 25/10/2015.
 */
@WebServlet("/contador")
public class Contador extends HttpServlet
{
    private int contador = 0;//instancia variavel contador

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        log("Iniciado a servlet");
    }

    @Override
    public void destroy() {
        super.destroy();
        log("Destruindo a servlet");
    }

    protected void service(HttpServletRequest request,
                           HttpServletResponse response)
                                throws ServletException, IOException
    {
        contador++;
        PrintWriter out = response.getWriter();

        //Escreva o texto
        out.println("<html>");
        out.println("<body>");


        out.println("Contador agora é: "+contador);

        out.println("</body>");

        out.println("<html>");

    };

}
