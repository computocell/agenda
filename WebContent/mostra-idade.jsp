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
<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/agenda">Aula Caelum</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/agenda">Pagina Inicial</a></li>
                <li><a href="/agenda/adiciona-contato.html">( + ) Contato</a></li>
                <li><a href="/agenda/MinhaServlet">MinhaServlet</a></li>
                <li><a href="/agenda/bemvindo.jsp">Bem Vindo</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Scriplets <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/agenda/lista-contatos-scriptlet.jsp">Listar Contatos</a></li>
                        <li><a href="/agenda/digita-idade.jsp">Digita Idade</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>

        </div>
        <!--/.nav-collapse -->
    </div>
</nav>


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

<!-- Chama JS -->
<script src="vendor/bootstrap/js/jquery.min.js" type="text/javascript"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>