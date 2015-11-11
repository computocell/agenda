<%@ page import="java.text.SimpleDateFormat" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao"/>
<jsp:useBean id="contato" class="br.com.caelum.jdbc.modelo.Contato"/>
<%--
  Created by IntelliJ IDEA.
  User: Jefferson
  Date: 25/10/2015
  Time: 03:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Listagem de usuarios</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/custom/navbar-fixed-top.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/custom/table_base.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/custom/dataTables.bootstrap.min.css" rel="stylesheet">

</head>
<body>
<c:import url="template/menu.jsp"/>

<div class="container">
    <div class="row">
    <div class="col-md-12">
        <div class="table-responsive">
            <table border="1" class="table table-striped table-bordered" id="dados">
            <thead>
            <tr>
                <th>#</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Endereço</th>
                <th>Data Nascimento</th>
            </tr>
            <tr id="busca_por_parametro">
                <th><input type="search" id="busca_porID" size="3"></th>
                <th><input type="search" id="busca_porNome"></th>
                <th><input type="search" id="busca_porEmail"></th>
                <th><input type="search" id="busca_porEnd"></th>
                <th><input type="search" id="busca_porIdade"></th>

            </tr>
            </thead>
                <%
                    SimpleDateFormat formataData = new SimpleDateFormat("dd/MM/yyyy");
                    int i = 0;
                    String classe = "warning";
                %>
                <tbody id="dados_contatos">
            <c:forEach var="contato" items="${dao.lista}" varStatus="id" step="1">
                <%if (i >= 0) {%>
                <tr <%if (i % 2 == 0) {classe = "danger";} else {classe = "warning";}%>class="<%=classe%>">
                    <td>${id.count}</td>
                    <td>${contato.nome}</td>
                    <td><c:choose><c:when test="${not empty contato.email}"><a
                            href="mailto:${contato.email}">${contato.email}</a>"</c:when>
                        <c:otherwise>Email Não Informado</c:otherwise></c:choose></td>
                    <td>${contato.endereco}</td>
                    <td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
                </tr>
                <% i++;%>
                <%
                    }

                %>
            </c:forEach>
            </tbody>
        </table>


        </div>
        <div class="col-md-12 text-center">
            <ul class="pagination pagination-lg pager" id="paginador"></ul>
        </div>

    </div>
    </div>
</div>
<script src="vendor/bootstrap/js/jquery.min.js" type="text/javascript"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- Fim Container -->
<script src="vendor/bootstrap/js/custom/tabela_com_paginacao.js"></script>
<script type='text/javascript'>

    $(document).ready(function () {

        $('#dados_contatos').pageMe({
            pagerSelector: '#paginador',
            showPrevNext: true,
            hidePageNumbers: false,
            perPage: 7
        });


    });
    $(function () {
        $("#dados input").keyup(function () {
            var index = $(this).parent().index();
            var nth = "#dados td:nth-child(" + (index + 1).toString() + ")";
            var valor = $(this).val().toUpperCase();
            $("#dados tbody tr").show();
            $(nth).each(function () {
                if ($(this).text().toUpperCase().indexOf(valor) < 0) {
                    $(this).parent().hide();
                }
            });
        });

        $("#dados input").blur(function () {
            $(this).val("");
        });
    });

</script>

<%--
<:import url="template/rodape.jsp"/>--%>
<!-- Chama JS -->
</body>
</html>