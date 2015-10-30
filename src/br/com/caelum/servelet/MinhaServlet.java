package br.com.caelum.servelet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Jefferson on 14/10/2015.
 */
@WebServlet("/MinhaServlet")
public class MinhaServlet extends HttpServlet{
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
        log("Iniciando a Servlet");
    }
    public void destroy(){
        super.destroy();
        log("Destruindo a servlet");
    }
    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException
    {
        PrintWriter out = response.getWriter();

        //imprime o nome do contato adcionado
        out.println("<html>");
        out.println("<body>");

        out.println("Minha Servlet");
        out.println("</body>");
        out.println("</html>");
    }
}
