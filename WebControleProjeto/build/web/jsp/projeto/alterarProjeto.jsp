<!DOCTYPE html>
<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Projeto pro = new Projeto(id);
    
    ControleProjeto proCont = new ControleProjeto();
    pro = proCont.busca(pro);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="backcontroleprojeto.modelo.bean.Projeto"%>
        <%@page import="backcontroleprojeto.controle.ControleProjeto"%>    
        <%@include file="../../inc/materalizeWeb.inc" %>
        <title>Projeto</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Alterar Projeto</a>
                </div>
            </nav>
        </header>
        <main>
            <div class="container" style="height: 100%;margin-top: 10px">
                <form name="alterarProjeto" action="validaAlterarProjeto.jsp" method="post">
                    
                    Nome: <input type="text" name="NOME" value="<%=pro.getNome()%>"> <br>
                    Tipo: <input type="text" name="TIPO" value="<%=pro.getTipo()%>"> <br>
                    Descricão: <input type="text" name="DESCRICAO" value="<%=pro.getDescricao()%>"> <br>
                    
                    <input type="HIDDEN" name="ID" value="<%=pro.getId()%>"> <br>
                    <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
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