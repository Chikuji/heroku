<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.PessoaProjeto"%>
<%@page import="backcontroleprojeto.controle.ControlePessoaProjeto"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PessoaProjeto pesPro = new PessoaProjeto(id);
    ControlePessoaProjeto pesProCont = new ControlePessoaProjeto();
    pesPro = pesProCont.exclui(pesPro);
    
    String pbusca = request.getParameter("PBUSCA");
    
    String url = "validaConsultarPessoaProjeto.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

