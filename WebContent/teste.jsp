<%@ page import="java.text.SimpleDateFormat" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <title>TEste</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/custom/navbar-fixed-top.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/custom/table_base.css" rel="stylesheet">


</head>
<body>
<c:import url="template/menu.jsp"/>

<div class="container">
    <div class="col-md-12">

        <table border="1" class="table table-striped table-bordered" id="example" cellspacing="0" width="100%">
            <thead>
            <tr>
                <th>#</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Endereço</th>
                <th>Data Nascimento</th>
            </tr>
            </thead>

            <%
                SimpleDateFormat formataData = new SimpleDateFormat("dd/MM/yyyy");
                int i = 0;
                String classe = "warning";
            %>
            <tbody>
            <c:forEach var="contato" items="${dao.lista}" varStatus="id" step="1">

                <tr
                        <%
                            if (i % 2 == 0) {
                                classe = "danger";
                            } else {
                                classe = "warning";
                            }
                        %>
                        class="<%=classe%>"
                        >

                    <td>${id.count}</td>
                    <td>${contato.nome}</td>
                    <td>
                        <c:choose>
                            <c:when test="${not empty contato.email}">
                                <a href="mailto:${contato.email}">${contato.email}</a>"
                            </c:when>
                            <c:otherwise>
                                Email Não Informado
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>${contato.endereco}</td>
                    <td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
                </tr>
                <% i++;%>
            </c:forEach>
            </tbody>
        </table>

    </div>


    <section id="paginacao">
        <nav>
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </section>

</div>


<!-- Fim Container -->
<hr/>
<!-- Chama JS -->
<script src="vendor/bootstrap/js/jquery.min.js" type="text/javascript"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>