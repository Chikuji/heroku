<!DOCTYPE html>

<html>
    <head>
        
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@include file="../../inc/materalizeWeb.inc" %>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <title>CONSULTAR - PESSOA</title>
        
    </head>
    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Consultar Pessoas</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">                       
                        <li><a href="../contacess/menu.jsp?LOGTRUE=N">Menu</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        
        <main>
            <div class="container" style="height:100%;margin-top:10px">
                <form name="consultarPessoa" action="validaConsultarPessoa.jsp" method="post">
                    NOME <input type="text" name ="NOME" value=""> <br>
                    <button class="btn waves-effect waves-light" type="submit" name="action">Buscar    
                        <i class="material-icons right">search</i>
                    </button>
                </form>
            </div>
        </main>

        <footer class="page-footer teal darken-4" style="position:fixed ; bottom: 0; right: 0; left:0">
            <div class="footer-copyright">
                <div class="container">         
                    <a class="grey-text text-lighten-3 left" >© 2020 Copyright</a>
                    <a class="grey-text text-lighten-3 right" >Felipe Kenji Chikuji</a>
                </div>
            </div>
        </footer>
    </body>

</html>
