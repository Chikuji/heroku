<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.PessoaIdeia"%>
<%@page import="backcontroleprojeto.controle.ControlePessoaIdeia"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idPs = Integer.parseInt(request.getParameter("ID_PESSOA"));
    int idId = Integer.parseInt(request.getParameter("ID_IDEIA"));
    
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    
    PessoaIdeia peside = new PessoaIdeia(id,idPs,idId,obs);
    ControlePessoaIdeia pesidecont = new ControlePessoaIdeia();
    
    peside = pesidecont.altera(peside);
    
    String url = "validaConsultarPessoaIdeia.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    