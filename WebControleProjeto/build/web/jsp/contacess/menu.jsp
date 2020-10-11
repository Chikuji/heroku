<!DOCTYPE html>

<%
    String logtrue = request.getParameter("LOGTRUE");

    if (logtrue.equals("S")) {
        String login = request.getParameter("LOGIN");
        String senha = request.getParameter("SENHA");

        Pessoa pes = new Pessoa(login, senha);
        ControlePessoa pescont = new ControlePessoa();

        pes = pescont.valida(pes);

        session.setAttribute("PessoaLogado", pes);
    }

    Pessoa pesLogado = (Pessoa) session.getAttribute("PessoaLogado");
    String log = pesLogado.getLogin();
    String sen = pesLogado.getSenha();
    Pessoa pes = new Pessoa(log, sen);
    ControlePessoa pescont = new ControlePessoa();
    pes = pescont.valida(pes);
%>

<html>

    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
        <%@page import="backcontroleprojeto.controle.ControlePessoa"%>
        <%@include file="../../inc/materalizeWeb.inc" %>

        <link href="https://fonts.googleapis.com/" rel="stylesheet">
        <title>Sistema</title>

    </head>

    <body>

        <header>
            <nav>
                <div class="nav-wrapper teal darken-4">
                    <a class="brand-logo center">Projeto&Ideias</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">                    
                        <li><a href="login.jsp">Sair</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <main> 

            <div class="container center" style="padding-top: 25px">
                <% if (pes != null) { %>
   

                <div class="row">
                    <div class="col s12 m12">
                        <div class="card teal darken-1">

                            <div class="card-content white-text">
                                <a class='dropdown-button btn' style="margin: 5px" data-beloworigin="true"  data-activates='dropdown1'>Pessoa</a> 
                                <a class='dropdown-button btn right' style="margin: 5px" data-beloworigin="true"  data-activates='dropdown3'>Participa Projeto</a>
                                <a class='dropdown-button btn right' style="margin: 5px" data-beloworigin="true"  data-activates='dropdown2'>Projeto</a>  
                                
                                <a class='dropdown-button btn left' style="margin: 5px" data-beloworigin="true"  data-activates='dropdown4'>Ideia</a>  
                                <a class='dropdown-button btn left' style="margin: 5px" data-beloworigin="true"  data-activates='dropdown5'>Contribui Ideia</a>
                            
                            </div>

                        </div>
                    </div>
                </div> 
         
              


                <% if (pes.getFuncao().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->

                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../pessoa/consultarPessoa.jsp"> Cadastradas </a></li>
                </ul>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../projeto/inserirProjeto.jsp"> Adicionar </a></li>
                    <li><a href="../projeto/consultarProjeto.jsp"> Projetos </a></li>
                </ul>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../pespro/inserirPessoaProjeto.jsp"> Participar </a></li>
                    <li><a href="../pespro/consultarPessoaProjeto.jsp"> Participações </a></li>
                </ul>
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../ideia/inserirIdeia.jsp"> Adicionar </a></li>
                    <li><a href="../ideia/consultarIdeia.jsp"> Ideias </a></li>
                </ul>
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../peside/inserirPessoaIdeia.jsp"> Contribuir </a></li>
                    <li><a href="../peside/consultarPessoaIdeia.jsp"> Contribuições </a></li>
                </ul>

                <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../pessoa/consultarPessoa.jsp"> Cadastradas </a></li>
                </ul>

                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../projeto/inserirProjeto.jsp"> Adicionar </a></li>
                    <li><a href="../projeto/consultarProjeto.jsp"> Projetos </a></li>
                </ul>

                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../pespro/inserirPessoaProjeto.jsp"> Participar </a></li>
                    <li><a href="../pespro/consultarPessoaProjeto.jsp"> Participações </a></li>
                </ul>
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../ideia/inserirIdeia.jsp"> Adicionar </a></li>
                    <li><a href="../ideia/consultarIdeia.jsp"> Ideias </a></li>
                </ul>
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../peside/inserirPessoaIdeia.jsp"> Contribuir </a></li>
                    <li><a href="../peside/consultarPessoaIdeia.jsp"> Contribuições </a></li>
                </ul>
                <% } %>
                <% } else { %>

                <h3>USUÁRIO INVÁLIDO</h3>

                <button class="btn waves-effect waves-light"  type="submit" name="action">
                    <i><a style="color: #212121" href="login.jsp">Voltar</a></i>
                </button>

                <% }%>
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