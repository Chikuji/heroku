<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.PessoaIdeia"%>
<%@page import="backcontroleprojeto.controle.ControlePessoaIdeia"%>

<%
    int idPs = Integer.parseInt(request.getParameter("ID_PESSOA"));
    int idId = Integer.parseInt(request.getParameter("ID_IDEIA"));
    String obs = request.getParameter("OBS");
    
    PessoaIdeia peside = new PessoaIdeia(0,idPs,idId,obs);
    
    ControlePessoaIdeia pesidecont = new ControlePessoaIdeia();
    
    peside = pesidecont.inseri(peside);
    
    String url = "validaConsultarPessoaIdeia.jsp?OBS="+"";
    response.sendRedirect(url);

%>