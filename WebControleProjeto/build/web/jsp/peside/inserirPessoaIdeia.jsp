<!DOCTYPE html>
<%
    ControleIdeia ideCont = new ControleIdeia();
    Ideia pr = new Ideia(0, "", "", "");

    List<Ideia> ides = ideCont.lista(pr);

    ControlePessoa pesCont = new ControlePessoa();
    
    Pessoa pesEnt = new Pessoa(0, "", "", "", "", "", "");
    List<Pessoa> pess = pesCont.lista(pesEnt);

%>

<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="java.util.List"%>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <%@page import="backcontroleprojeto.controle.ControlePessoa"%>
        <%@page import="backcontroleprojeto.modelo.bean.Ideia"%>
        <%@page import="backcontroleprojeto.controle.ControleIdeia"%>    
        <%@include file="../../inc/materalizeWeb.inc"%>
        <title>Participa Ideia</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Participa - Ideia</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">                       
                        <li><a href="../contacess/menu.jsp?LOGTRUE=N">Menu</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <main>
            <div class="container" style="height: 100%;margin-top: 10px">

                <form name="inseriPessoaIdeia" action="validaPessoaIdeia.jsp" method="POST">
                    <table>
                        <tr>
                            <td>Pessoa:</td>
                            <td>
                                <select NAME="ID_PESSOA" class="browser-default">
                                    <% for (Pessoa pes : pess) {%>
                                    <option value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% }%>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Ideia:</td>
                            <td>
                                <select NAME ="ID_IDEIA" class="browser-default">
                                    <% for (Ideia ide : ides) {%>
                                    <option value="<%=ide.getId()%>"><%=ide.getNome()%></option>
                                    <% }%>
                                </select> 
                            </td>
                        </tr>

                        <tr>
                            <td>Descrição:</td>
                            <td><input type="text" name="OBS" value=""></td>
                        </tr>
                    </table>    
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
