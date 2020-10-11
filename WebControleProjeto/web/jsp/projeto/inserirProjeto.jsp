<!DOCTYPE html>



<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>    
        <%@include file="../../inc/materalizeWeb.inc" %>
        <title>Inserir - Projeto</title>
    </head>
    
    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Novo Projeto</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">                       
                        <li><a href="../contacess/menu.jsp?LOGTRUE=N">Menu</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        
        <main>
            <div class="container" style="height: 100%;margin-top: 10px">

                <form name="inserirProjeto" action="validaInserirProjeto.jsp" method="post">
                    Nome: <input type="text" name="NOME" value=""> <br>
                    Tipo: <input type="text" name="TIPO" value=""> <br>
                    Descricão: <input type="text" name="DESCRICAO" value=""> <br>
                    <button class="btn waves-effect waves-light" type="submit" name="action">Salvar    
                        <i class="material-icons right">cloud_done</i>
                    </button>

                </form>

            </div>
        </main>
        <footer class="page-footer teal darken-4">
            <div class="footer-copyright">
                <div class="container">         
                    <a class="grey-text text-lighten-3 left" href="#!">© 2020 Copyright</a>
                    <a class="grey-text text-lighten-3 right" href="#!">Felipe Kenji Chikuji</a>
                </div>
            </div>
        </footer>
    </body>
</html>
