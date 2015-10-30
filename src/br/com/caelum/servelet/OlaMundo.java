package br.com.caelum.servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OlaMundo extends HttpServlet{
	protected void service (HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		//Escreve o texto em html
		out.println("<html>");
		out.println("<body>");
		out.println("Primeira servelet");
		out.println("</body>");
		out.println("<html>");
	}
	
}
