<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.Ideia"%>
<%@page import="backcontroleprojeto.controle.ControleIdeia"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Ideia ide = new Ideia(id);
    ControleIdeia ideCont = new ControleIdeia();
    ide = ideCont.exclui(ide);
    String pbusca = request.getParameter("PBUSCA");
    
    String url = "validaConsultarIdeia.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>