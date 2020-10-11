<!DOCTYPE html>

<%
    String nome = request.getParameter("NOME");
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");

    Ideia ide = new Ideia(0, nome, "", "");

    ControleIdeia idecont = new ControleIdeia();
    List<Ideia> ides = idecont.lista(ide);
    Pessoa pesLogado = (Pessoa) session.getAttribute("PessoaLogado");
    String url = "PBUSCA=" + nome + "&ID=";
%>

<html>
    <head>
        <%@page import="java.util.List"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="backcontroleprojeto.controle.ControleIdeia"%>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <%@page import="backcontroleprojeto.modelo.bean.Ideia"%>
        <%@include file="../../inc/materalizeWeb.inc" %>
        <title>Listar Ideias</title>
    </head>

    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Ideias</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">                       
                        <li><a href="../contacess/menu.jsp?LOGTRUE=N">Menu</a></li>
                    </ul>

                </div>
            </nav>
        </header>

        <main>
            <div class="container" style="height: 100%;margin-top: 10px">
                <table class="striped responsive-table">
                    <% if (!(ides.isEmpty())) { %> 
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
                        <% for (Ideia listaIdeias : ides) {%>
                        <tr>
                            <td><%=listaIdeias.getId()%></td>
                            <td><%=listaIdeias.getNome()%></td>
                            <td><%=listaIdeias.getTipo()%></td>
                            <td><%=listaIdeias.getDescricao()%></td>

                            <% if (pesLogado.getFuncao().equals("ADM")) {%>
                            <td><a href="excluirIdeia.jsp?<%=url + listaIdeias.getId()%>">
                                    <i class="material-icons center">delete_sweep</i>
                                </a></td>
                            <td><a href="alterarIdeia.jsp?<%=url + listaIdeias.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                        <% } %>
                    </tbody>
                    <% }%>
                    <ul id="nav-mobile" class=" top hide-on-med-and-down">                       
                        <li><a href="inserirIdeia.jsp">Contribuir
                                <i class="material-icons left">playlist_add</i></li>
                        </a>
                    </ul> 
                </table>
              
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