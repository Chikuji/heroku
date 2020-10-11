<!DOCTYPE html>

<%
    ControleProjeto proCont = new ControleProjeto();
    Projeto pr = new Projeto(0,"","","");
    List<Projeto> pros = proCont.lista(pr);

    ControlePessoa pesCont = new ControlePessoa();
    Pessoa pesEnt = new Pessoa("");
    List<Pessoa> pess = pesCont.lista(pesEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PessoaProjeto pesPro = new PessoaProjeto(id, 0, 0, "");
    ControlePessoaProjeto pesProCont = new ControlePessoaProjeto();
    pesPro = pesProCont.busca(pesPro);
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="java.util.List"%>
        <%@page import="backcontroleprojeto.modelo.bean.PessoaProjeto"%>
        <%@page import="backcontroleprojeto.controle.ControlePessoaProjeto"%>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <%@page import="backcontroleprojeto.controle.ControlePessoa"%>
        <%@page import="backcontroleprojeto.modelo.bean.Projeto"%>
        <%@page import="backcontroleprojeto.controle.ControleProjeto"%>    

        <%@include file="../../inc/materalizeWeb.inc" %>
        <title>Pessoa Projeto</title>
    </head>
    <body>

        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Alterar Pessoa Projeto</a>
                </div>
            </nav>
        </header>
        <main>
            <div class="container" style="height: 100%;margin-top: 10px">
               
                <form name="alterarPessoaProjeto" action="validaAlterarPessoaProjeto.jsp" method="post">
                    <table>
                        <tr>
                            <td>Pessoa:</td>
                            <td>
                                <select NAME="ID_PESSOA" class="browser-default">
                                    <% for (Pessoa pes : pess) { %>
                                    
                                    <% if (pes.getId() == pesPro.getIdPs()) {%>
                                    <option selected value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% } else {%>
                                    <option value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% } %>
                                    <% } %>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Projeto:</td>
                            <td>
                                <select NAME="ID_PROJETO" class="browser-default">
                                    <% for (Projeto pro : pros) { %>
                                    <% if (pro.getId() == pesPro.getIdPr()) {%>
                                    <option selected value="<%=pro.getId()%>"><%=pro.getNome()%></option>
                                    <% } else {%>
                                    <option value="<%=pro.getId()%>"><%=pro.getNome()%></option>
                                    <% } %>
                                    <% }%>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Observação:</td>
                            <td><input type="text" name="OBS" value="<%=pesPro.getObs()%>"></td>

                        </tr>
                    </table>    
                    <input type="HIDDEN" name="ID" value="<%=pesPro.getId()%>"> <br>
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