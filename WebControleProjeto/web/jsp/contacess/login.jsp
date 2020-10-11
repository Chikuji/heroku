<!DOCTYPE HTML>

<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@include file="../../inc/materalizeWeb.inc" %>
        <link href="https://fonts.googleapis.com/" rel="stylesheet">

        <title>LOGIN - SISTEMA</title>

    </head>

    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Projeto&Ideias</a>
                </div>
            </nav>
        </header>
        <main>  
            <div class="container">
                <h4>LOGIN</h4>
                <form name="FORMLOGIN" action="menu.jsp" method="post">

                    <div class="row">
                        <div class="input-field col s4">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="icon_prefix" type="text" name ="LOGIN" class="validate"> <br>
                            <label for="icon_prefix">Login</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s4">
                            <i class="material-icons prefix">check</i>
                            <input id="icon_telephone" type="password" name ="SENHA" class="validate">
                            <label for="icon_telephone">Senha</label>
                        </div>
                    </div>

                    <button class="btn waves-effect waves-light" type="submit" name="action">Entrar   
                        <i class="material-icons right">send</i>
                    </button> 
                    <input type="HIDDEN" name ="LOGTRUE" value="S"> <br>

                </form>
            </div>
            <div class="container" style="margin-top: 20px">

                <div class="divider"></div>
                <div class="section">
                    
                    <form name="FORMLOGIN" action="../pessoa/inserirPessoa.jsp" method="post">

                        <button class="btn waves-effect waves-light" type="submit" name="action">Registrar   
                            <i class="material-icons right">create</i>
                        </button>
                    </form>   
                </div>
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

