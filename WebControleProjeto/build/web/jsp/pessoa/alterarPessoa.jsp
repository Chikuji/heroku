<!DOCTYPE html>
<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Pessoa pes = new Pessoa(id);

    ControlePessoa pesCont = new ControlePessoa();
    pes = pesCont.busca(pes);
    String pbusca = request.getParameter("PBUSCA");

%>

<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <%@page import="backcontroleprojeto.controle.ControlePessoa"%>    
        <%@include file="../../inc/materalizeWeb.inc" %>
        <title>Pessoa</title>

    </head>

    <body>

        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Alterar Pessoa</a>
                </div>
            </nav>
        </header>

        <main>
            <div class="container" style="margin-top: 10px">

                <form name="alterarPessoa" action="validaAlterarPessoa.jsp" method="post">

                    Login: <input type="text" name="LOGIN" value="<%=pes.getLogin()%>"> <br>
                    Senha: <input type="password" name="SENHA" value="<%=pes.getSenha()%>"> <br>
                    Nome: <input type="text" name="NOME" value="<%=pes.getNome()%>"> <br>
                    Email: <input type="text" name="EMAIL" value="<%=pes.getEmail()%>"> <br>
                    Status: <input type="text" name="STATUS" value="<%=pes.getStatus()%>"> <br>
                    Função: <input type="text" name="FUNCAO" value="<%=pes.getFuncao()%>"> <br>
                    
                    <button class="btn waves-effect waves-light" type="submit" name="action">Salvar    
                        <i class="material-icons right">cloud_done</i>
                    </button> 
                    
                    <input type="HIDDEN" name="ID" value="<%=pes.getId()%>"> <br>
                    <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
                    
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