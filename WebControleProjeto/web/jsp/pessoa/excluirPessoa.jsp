<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
<%@page import="backcontroleprojeto.controle.ControlePessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Pessoa pes = new Pessoa(id);
    
    ControlePessoa pesCont = new ControlePessoa();
    pes = pesCont.exclui(pes);
    
    String pbusca = request.getParameter("PBUSCA");
    
    String url = "validaConsultarPessoa.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>