<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.Projeto"%>
<%@page import="backcontroleprojeto.controle.ControleProjeto"%>

<%

    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");
    String descricao = request.getParameter("DESCRICAO");

    Projeto pro = new Projeto(0,nome,tipo,descricao);
    ControleProjeto procont = new ControleProjeto();
    pro = procont.inseri(pro);

    String url = "validaConsultarProjeto.jsp?NOME="+"";
    response.sendRedirect(url);
%>

