<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jefferson
  Date: 27/10/2015
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Mostra Idade</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/custom/navbar-fixed-top.css" rel="stylesheet">

</head>
<body>
<c:import url="template/menu.jsp"/>

<div class="container">


    <h1>Mostra Idade</h1>


    <div class="row"><%-- Leaute - Linha--%>

        <div class="col-md-12"> <%--Leauate -grid 12--%>
            <div class="col-md-4"><%--Leauate -grid 4--%> </div>

            <div class="col-md-4"> O parametro digitado foi ${param.idade} </div>
            <div class="col-md-4"><%--Leauate -grid 4--%> </div>

        </div>


    </div>


</div>
<!-- Fim Container -->
<c:import url="template/rodape.jsp"/>