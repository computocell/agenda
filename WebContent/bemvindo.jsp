<%--
  Created by IntelliJ IDEA.
  User: Jefferson
  Date: 25/10/2015
  Time: 03:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Bem Vindo</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/custom/navbar-fixed-top.css" rel="stylesheet">


</head>
<body>
<c:import url="template/menu.jsp"/>

<%-- Cpmentario em JSP aqui: nossa primeira pagina em JSP--%java.util.AbstractCollection --%>
<% String mensagem = "Bem vindo ao sistema de agenda F21!";
%>
<%out.println(mensagem); %>
<br/>

<% String desenvolvido = "Desenvolvido por (Jefferson)";
%>
<%=desenvolvido %>
<br>
<%
    System.out.println("Tudo Executado");
%>


</body>
</html>
