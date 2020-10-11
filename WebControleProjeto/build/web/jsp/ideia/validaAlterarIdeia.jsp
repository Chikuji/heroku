<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.controle.ControleIdeia"%>
<%@page import="backcontroleprojeto.modelo.bean.Ideia"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);

    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");
    String descricao = request.getParameter("DESCRICAO");
    
    String pbusca = request.getParameter("PBUSCA");
    
    Ideia ide = new Ideia(id,nome,tipo,descricao);
    ControleIdeia idecont = new ControleIdeia();
    ide = idecont.altera(ide);
    
    String url = "validaConsultarIdeia.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>