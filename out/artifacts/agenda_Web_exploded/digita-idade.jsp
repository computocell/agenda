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

    <title> Digita Idade</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/custom/navbar-fixed-top.css" rel="stylesheet">

</head>
<body>
<c:import url="template/menu.jsp"/>

<div class="container">
    <h1>Digita Idade</h1>

    <div class="row"><%-- Leaute - Linha--%>

        <div class="col-md-12"> <%--Leauate -grid 12--%>
            <div class="col-md-4"><%--Leauate -grid 4--%> </div>
            <div class="col-md-8">

                <form class="form-horizontal" action="mostra-idade.jsp">
                    <fieldset>

                        <!-- Form Name -->
                        <legend>Digita Idade</legend>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="idade">Digite a Idade</label>

                            <div class="col-md-4">
                                <input id="idade" list="time_life" name="idade" type="number" min="0" max="100"
                                       placeholder="Digite sua idade" class="form-control input-md" required="">
                                <datalist id="time_life">
                                    <option value="10">
                                    <option value="15">
                                    <option value="20">
                                    <option value="25">
                                    <option value="30">
                                    <option value="35">
                                    <option value="40">
                                    <option value="45">
                                    <option value="50">
                                </datalist>

                            </div>
                        </div>

                        <!-- Button -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="envia"></label>

                            <div class="col-md-4">
                                <button id="envia" name="envia" class="btn btn-default" type="submit">
                                    <span class="glyphicon glyphicon glyphicon-ok"></span>
                                    Envia
                                </button>
                            </div>
                        </div>

                    </fieldset>
                </form>


            </div>


        </div>


    </div>


</div>
<!-- Fim Container -->

<!-- Chama JS -->
<script src="vendor/bootstrap/js/jquery.min.js" type="text/javascript"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>