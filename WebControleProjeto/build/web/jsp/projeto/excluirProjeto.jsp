<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.Projeto"%>
<%@page import="backcontroleprojeto.controle.ControleProjeto"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Projeto pro = new Projeto(id);
    ControleProjeto proCont = new ControleProjeto();
    pro = proCont.exclui(pro);
    String pbusca = request.getParameter("PBUSCA");
    
    String url = "validaConsultarProjeto.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>