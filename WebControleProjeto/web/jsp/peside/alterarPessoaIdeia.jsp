

<%
    ControleIdeia ideCont = new ControleIdeia();
    Ideia pr = new Ideia(0, "", "", "");
    List<Ideia> ides = ideCont.lista(pr);

    ControlePessoa pesCont = new ControlePessoa();
    Pessoa pesEnt = new Pessoa("");
    List<Pessoa> pess = pesCont.lista(pesEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PessoaIdeia peside = new PessoaIdeia(id, 0, 0, "");
    ControlePessoaIdeia pesideCont = new ControlePessoaIdeia();
    peside = pesideCont.busca(peside);
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="java.util.List"%>
        <%@page import="backcontroleprojeto.modelo.bean.PessoaIdeia"%>
        <%@page import="backcontroleprojeto.controle.ControlePessoaIdeia"%>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <%@page import="backcontroleprojeto.controle.ControlePessoa"%>
        <%@page import="backcontroleprojeto.modelo.bean.Ideia"%>
        <%@page import="backcontroleprojeto.controle.ControleIdeia"%>    
        <%@include file="../../inc/materalizeWeb.inc" %>
        <title>Pessoa Ideia</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Alterar Pessoa Ideia</a>
                </div>
            </nav>
        </header>
        <main>
            <div class="container"  style="height: 100%;margin-top: 10px">

                <form name="alterarPessoaIdeia" action="validaAlterarPessoaIdeia.jsp" method="post">
                    <table>
                        <tr>
                            <td>Pessoa:</td>
                            <td>
                                <select NAME="ID_PESSOA" class="browser-default">
                                    <% for (Pessoa pes : pess) { %>
                                    <% if (pes.getId() == peside.getIdPs()) {%>
                                    <option selected value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% } else {%>
                                    <option value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% } %>
                                    <% } %>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Ideia:</td>
                            <td>
                                <select NAME ="ID_IDEIA" class="browser-default">
                                    <% for (Ideia ide : ides) { %>
                                    <% if (ide.getId() == peside.getIdId()) {%>
                                    <option selected value="<%=ide.getId()%>"><%=ide.getNome()%></option>
                                    <% } else {%>
                                    <option value="<%=ide.getId()%>"><%=ide.getNome()%></option>
                                    <% } %>
                                    <% }%>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Descrição:</td>
                            <td><input type="text" name="OBS" value="<%=peside.getObs()%>"></td>

                        </tr>
                    </table>    
                    <input type="HIDDEN" name="ID" value="<%=peside.getId()%>"> <br>
                    <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
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