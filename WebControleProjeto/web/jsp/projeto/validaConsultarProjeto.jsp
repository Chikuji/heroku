<!DOCTYPE html>

<%
    String nome = request.getParameter("NOME");
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");

    Projeto pro = new Projeto(0, nome, "", "");

    ControleProjeto procont = new ControleProjeto();
    List<Projeto> pros = procont.lista(pro);
    Pessoa pesLogado = (Pessoa) session.getAttribute("PessoaLogado");
    String url = "PBUSCA=" + nome + "&ID=";
%>

<html>
    <head>
        <%@page import="java.util.List"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="backcontroleprojeto.controle.ControleProjeto"%>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <%@page import="backcontroleprojeto.modelo.bean.Projeto"%>
        <%@include file="../../inc/materalizeWeb.inc" %>
        <title>Listar Projetos</title>
    </head>

    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Projetos</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">                       
                        <li><a href="../contacess/menu.jsp?LOGTRUE=N">Menu</a></li>
                    </ul>

            </nav>
        </header>

        <main>
            <div class="container" style="height: 100%;margin-top: 10px">
                <table class="striped responsive-table">
                    <% if (!(pros.isEmpty())) { %> 
                    <thead>
                        <tr>
                            <th data-field="Id">Id</th>
                            <th data-field="Nome">Nome</th>
                            <th data-field="Tipo">Tipo</th>
                            <th data-field="Descricao">Descrição</th>

                            <th data-field="Excluir">Excluir</th>
                            <th data-field="Alterar">Alterar</th>
                        </tr>
                    </thead>

                    <tbody>
                        <% for (Projeto listaProjetos : pros) {%>
                        <tr>
                            <td><%=listaProjetos.getId()%></td>
                            <td><%=listaProjetos.getNome()%></td>
                            <td><%=listaProjetos.getTipo()%></td>
                            <td><%=listaProjetos.getDescricao()%></td>

                            <% if (pesLogado.getFuncao().equals("ADM")) {%>
                            <td><a href="excluirProjeto.jsp?<%=url + listaProjetos.getId()%>">
                                    <i class="material-icons center">delete_sweep</i>
                                </a></td>
                            <td><a href="alterarProjeto.jsp?<%=url + listaProjetos.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                        <% } %>
                    </tbody>
                    <% }%>

                    <ul id="nav-mobile" class="left hide-on-med-and-down">                       
                        <li><a href="inserirProjeto.jsp">Novo projeto
                                <i class="material-icons left">playlist_add</i></li>
                        </a>
                    </ul>    

                </table>

            </div>
        </main>

        <footer class="page-footer teal darken-4" style="position:fixed">
            <div class="footer-copyright">
                <div class="container">         
                    <a class="grey-text text-lighten-3 left" href="#!">© 2020 Copyright</a>
                    <a class="grey-text text-lighten-3 right" href="#!">Felipe Kenji Chikuji</a>
                </div>
            </div>
        </footer>
    </body>
</html>