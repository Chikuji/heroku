<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backcontroleprojeto.modelo.bean.Pessoa"%>
<%@page import="backcontroleprojeto.controle.ControlePessoa"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    
    String nome = request.getParameter("NOME");
    String email = request.getParameter("EMAIL");
    String status = request.getParameter("STATUS");
    
    String funcao = request.getParameter("FUNCAO");
    
    Pessoa pes = new Pessoa(0,login,senha,nome,email,status,funcao);
    ControlePessoa pescont = new ControlePessoa();
    pes = pescont.inseri(pes);
    

    String url = "../contacess/login.jsp";
    response.sendRedirect(url);
%>




<HTML>
    <BODY>
        <%=login%>  <BR>
        <%=senha%>  <BR>
        <%=nome%>   <BR>
        <%=email%>   <BR>
        <%=status%>   <BR>
        <%=funcao%>   <BR>
    </BODY>
</HTML>
