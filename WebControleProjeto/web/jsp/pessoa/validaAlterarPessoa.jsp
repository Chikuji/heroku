<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
<%@page import="backcontroleprojeto.controle.ControlePessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String nome = request.getParameter("NOME");
    String email = request.getParameter("EMAIL");
    String status = request.getParameter("STATUS");
    String funcao = request.getParameter("FUNCAO");
    
    String pbusca = request.getParameter("PBUSCA");
    
    Pessoa pes = new Pessoa(id,login,senha,nome,email,status,funcao);
    ControlePessoa pescont = new ControlePessoa();
    pes = pescont.altera(pes);

    String url = "validaConsultarPessoa.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>