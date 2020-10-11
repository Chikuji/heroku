<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.PessoaProjeto"%>
<%@page import="backcontroleprojeto.controle.ControlePessoaProjeto"%>

<%
    int idPs = Integer.parseInt(request.getParameter("ID_PESSOA"));
    int idPr = Integer.parseInt(request.getParameter("ID_PROJETO"));
    String obs = request.getParameter("OBS");
    
    PessoaProjeto pespro = new PessoaProjeto(0,idPs,idPr,obs);
    
    ControlePessoaProjeto pesprocont = new ControlePessoaProjeto();
    
    pespro = pesprocont.inseri(pespro);
    
    String url = "validaConsultarPessoaProjeto.jsp?OBS="+"";
    response.sendRedirect(url);

%>