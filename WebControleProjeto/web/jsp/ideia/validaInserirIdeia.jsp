<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.Ideia"%>
<%@page import="backcontroleprojeto.controle.ControleIdeia"%>

<%

    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");
    String descricao = request.getParameter("DESCRICAO");

    Ideia ide = new Ideia(0,nome,tipo,descricao);
    ControleIdeia idecont = new ControleIdeia();
    ide = idecont.inseri(ide);

    String url = "validaConsultarIdeia.jsp?NOME="+"";
    response.sendRedirect(url);
%>

