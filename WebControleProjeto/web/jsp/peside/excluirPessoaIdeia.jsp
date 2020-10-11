<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.PessoaIdeia"%>
<%@page import="backcontroleprojeto.controle.ControlePessoaIdeia"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PessoaIdeia peside = new PessoaIdeia(id);
    ControlePessoaIdeia pesideCont = new ControlePessoaIdeia();
    peside = pesideCont.exclui(peside);
    
    String pbusca = request.getParameter("PBUSCA");
    
    String url = "validaConsultarPessoaIdeia.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

