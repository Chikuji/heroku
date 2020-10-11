<!DOCTYPE html>

<%
    String obs = request.getParameter("OBS");
    PessoaProjeto pespro = new PessoaProjeto(0, 0, 0, obs);
    ControlePessoaProjeto pesprocont = new ControlePessoaProjeto();

    List<PessoaProjeto> pespros = pesprocont.lista(pespro);
    Pessoa pesLogado = (Pessoa) session.getAttribute("PessoaLogado");
    String url = "PBUSCA=" + pespro.getObs() + "&ID=";
%>

<html>
    <head>
        <%@page import="java.util.List"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <%@page import="backcontroleprojeto.modelo.bean.PessoaProjeto"%>
        <%@page import="backcontroleprojeto.controle.ControlePessoaProjeto"%>

        <%@include file="../../inc/materalizeWeb.inc" %>
        <title>Pessoa Projeto</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Pessoa - Projeto</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">                       
                        <li><a href="../contacess/menu.jsp?LOGTRUE=N">Menu</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <main>
            <div class="container" style="height: 100%;margin-top: 10px">
                <table class="striped responsive-table">
                    <thead>
                        <tr>
                            <th data-field="IdPesProjeto">Id</th>

                            <th data-field="IdPs">IdPs</th>
                            <th data-field="Nome">Nome</th>

                            <th data-field="IdPr">IdPr</th>
                            <th data-field="Nome">Nome</th>

                            <th data-field="Observacao">Participa com</th>

                            <th data-field="Excluir">Excluir</th>
                            <th data-field="Alterar">Alterar</th>
                        </tr>
                    </thead>
                    <% if (!(pespros.isEmpty())) { %>    
                    <tbody>
                        <% for (PessoaProjeto listaPessoaProjeto : pespros) {%>
                        <tr>
                            <td><%=listaPessoaProjeto.getId()%></td>

                            <td><%=listaPessoaProjeto.getIdPs()%></td>
                            <td><%=listaPessoaProjeto.getPes().getNome()%></td>

                            <td><%=listaPessoaProjeto.getIdPr()%></td>   
                            <td><%=listaPessoaProjeto.getPro().getNome()%></td>

                            <td><%=listaPessoaProjeto.getObs()%></td>

                            <% if (pesLogado.getFuncao().equals("ADM")) {%>
                            <td><a href="excluirPessoaProjeto.jsp?<%=url + listaPessoaProjeto.getId()%>">
                                    <i class="material-icons center">delete_sweep</i>
                                </a></td>
                            <td><a href="alterarPessoaProjeto.jsp?<%=url + listaPessoaProjeto.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                        <% } %>
                    </tbody>
                    <% }%>
                    <ul id="nav-mobile" class="left hide-on-med-and-down">                       
                        <li><a href="inserirPessoaProjeto.jsp">Participar
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