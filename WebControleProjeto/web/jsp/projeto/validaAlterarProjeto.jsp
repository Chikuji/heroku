<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.controle.ControleProjeto"%>
<%@page import="backcontroleprojeto.modelo.bean.Projeto"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);

    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");
    String descricao = request.getParameter("DESCRICAO");
    
    String pbusca = request.getParameter("PBUSCA");
    
    Projeto pro = new Projeto(id,nome,tipo,descricao);
    ControleProjeto procont = new ControleProjeto();
    pro = procont.altera(pro);
    
    String url = "validaConsultarProjeto.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>