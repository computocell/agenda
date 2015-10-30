<%--
  Created by IntelliJ IDEA.
  User: Jefferson
  Date: 25/10/2015
  Time: 03:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bem vindo JSP</title>
</head>
<body>
<%-- Cpmentario em JSP aqui: nossa primeira pagina em JSP--%java.util.AbstractCollection --%>
<% String mensagem = "Bem vindo ao sistema de agenda F21!";
%>
<%out.println(mensagem); %>
<br/>

<% String desenvolvido = "Desenvolvido por (Jefferson)";
%>
<%= desenvolvido%>; %>
<br>
<%
    System.out.println("Tudo Executado");
%>


</body>
</html>
