<!DOCTYPE html>

<%
    String obs = request.getParameter("OBS");
    PessoaIdeia peside = new PessoaIdeia(0,0,0,obs);
    ControlePessoaIdeia pesidecont = new ControlePessoaIdeia();

    List<PessoaIdeia> pesides = pesidecont.lista(peside);
    Pessoa pesLogado = (Pessoa) session.getAttribute("PessoaLogado");
    String url = "PBUSCA=" + peside.getObs() + "&ID=";
%>

<html>
    <head>
        <%@page import="java.util.List"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <%@page import="backcontroleprojeto.modelo.bean.PessoaIdeia"%>
        <%@page import="backcontroleprojeto.controle.ControlePessoaIdeia"%>
        
        <%@include file="../../inc/materalizeWeb.inc" %>
        <title>Pessoa Ideia</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Pessoa - Ideia</a>
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
                            <th data-field="IdPesIdeia">Id</th>

                            <th data-field="IdPs">IdPs</th>
                            <th data-field="Nome">Nome</th>

                            <th data-field="IdId">IdId</th>
                            <th data-field="Nome">Nome</th>
                            
                            <th data-field="Observacao">Descrição</th>
                            
                            <th data-field="Excluir">Excluir</th>
                            <th data-field="Alterar">Alterar</th>
                        </tr>
                    </thead>
                    <% if (!(pesides.isEmpty())) { %>    
                    <tbody>
                        <% for (PessoaIdeia listaPessoaIdeia : pesides) {%>
                        <tr>
                            <td><%=listaPessoaIdeia.getId()%></td>
                            
                            <td><%=listaPessoaIdeia.getIdPs()%></td>
                            <td><%=listaPessoaIdeia.getPes().getNome()%></td>
                            
                            <td><%=listaPessoaIdeia.getIdId()%></td>   
                            <td><%=listaPessoaIdeia.getIde().getNome()%></td>
                        
                            <td><%=listaPessoaIdeia.getObs()%></td>
                            
                            <% if (pesLogado.getFuncao().equals("ADM")) {%>
                            <td><a href="excluirPessoaIdeia.jsp?<%=url + listaPessoaIdeia.getId()%>">
                                    <i class="material-icons center">delete_sweep</i>
                                </a></td>
                            <td><a href="alterarPessoaIdeia.jsp?<%=url + listaPessoaIdeia.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                        <% } %>
                    </tbody>
                    <% }%>
                    <ul id="nav-mobile" class="left hide-on-med-and-down">                       
                        <li><a href="inserirPessoaIdeia.jsp">Contribuir
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