package br.com.caelum.servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
		name = "oiServelet3",
		urlPatterns = {"/ola/*","/oi/"},
		initParams = {
				@WebInitParam(name ="param1",value ="1"),
				@WebInitParam(name ="param2",value ="2")
		}
		
		)
public class OiServlet3 extends HttpServlet{
		
		private String parametro1;
		private String parametro2;
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		this.parametro1 = config.getInitParameter("param1");
		this.parametro2 = config.getInitParameter("param2");
		
	}

	public void service(HttpServletRequest request,
			HttpServletResponse response)  throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h2>Exemplo com InitParam Servet</h2>");
		ServletConfig config = getServletConfig();
		
		String parametro1= config.getInitParameter("param1");
		out.println("Valor do parâmetro 1: " + parametro1) ;
		
		String parametro2= config.getInitParameter("param2");
		out.println("Valor do parâmetro 1: " + parametro2) ;
		
		out.println("Valor do parâmetro 1-direto : "
				+ getServletConfig().getInitParameter("param1"));
		out.close();
	}

}
