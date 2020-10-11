<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.PessoaProjeto"%>
<%@page import="backcontroleprojeto.controle.ControlePessoaProjeto"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idPs = Integer.parseInt(request.getParameter("ID_PESSOA"));
    int idPr = Integer.parseInt(request.getParameter("ID_PROJETO"));
    
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    
    PessoaProjeto pespro = new PessoaProjeto(id,idPs,idPr,obs);
    ControlePessoaProjeto pesprocont = new ControlePessoaProjeto();
    
    pespro = pesprocont.altera(pespro);
    
    String url = "validaConsultarPessoaProjeto.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    