<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <a class="navbar-brand" href="#">Aula Caelum</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/agenda">Pagina Inicial</a></li>
                <li><a href="/agenda/adiciona-contato.jsp">( + ) Contato</a></li>
                <li><a href="/agenda/MinhaServlet">MinhaServlet</a></li>
                <li><a href="/agenda/bemvindo.jsp">Bem Vindo</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Scriplets <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/agenda/lista-contatos-scriptlet.jsp">Listar Contatos</a></li>
                        <li><a href="/agenda/lista-contatos-scriptlet-jstl.jsp">Listar Contatos - JSTL</a></li>
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
