<!DOCTYPE html>

<%
   
    String nome = request.getParameter("NOME");
    Pessoa pes = new Pessoa(nome);

    ControlePessoa pescont = new ControlePessoa();
    List<Pessoa> pess = pescont.lista(pes);

    Pessoa pesLogado = (Pessoa) session.getAttribute("PessoaLogado");
    
    String url = "PBUSCA=" + pes.getNome() + "&ID=";
%>

<html>
    <head>
        <%@page import="java.util.List"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <%@page import="backcontroleprojeto.controle.ControlePessoa"%>    

        <%@include file="../../inc/materalizeWeb.inc" %>
        <title>Consultar</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Pessoas Cadastradas</a>
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
                            <th data-field="Id">Id</th>
                            <th data-field="Login">Login</th>
                            <th data-field="Nome">Nome</th>
                            <th data-field="Email">Email</th>
                            <th data-field="Status">Status</th>
                            <th data-field="Funcao">Função</th>

                            <th data-field="Excluir">Excluir</th>
                            <th data-field="Alterar">Alterar</th>
                        </tr>
                    </thead>
                    <% if (!(pess.isEmpty())) { %>    
                    <tbody>
                        <% for (Pessoa listaPessoa : pess) {%>
                        <tr>
                            <td><%=listaPessoa.getId()%></td>
                            <td><%=listaPessoa.getLogin()%></td>
                            <td><%=listaPessoa.getNome()%></td>
                            <td><%=listaPessoa.getEmail()%></td>
                            <td><%=listaPessoa.getStatus()%></td>
                            <td><%=listaPessoa.getFuncao()%></td>

                            <% if (pesLogado.getFuncao().equals("ADM")) {%>
                            <td><a href="excluirPessoa.jsp?<%=url + listaPessoa.getId()%>"> 
                                <i class="material-icons center">delete_sweep</i>
                                </a></td>
                            <td><a href="alterarPessoa.jsp?<%=url + listaPessoa.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                        <% } %>
                    </tbody>
                    <% }%>
                </table> 
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