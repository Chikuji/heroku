package deskcontroleprojeto.view.pessoa;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControlePessoa;
import backcontroleprojeto.modelo.bean.Pessoa;

public class inserirPessoa {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

          
         String login;
         String senha;
         String nome;
         String email;
         String status;
         String funcao;
         
      
         login = JOptionPane.showInputDialog("Entre com o Login");
         senha = JOptionPane.showInputDialog("Entre com o Senha");
         nome = JOptionPane.showInputDialog("Entre com o Nome");
         email = JOptionPane.showInputDialog("Entre com o Email");
         status = JOptionPane.showInputDialog("Entre com o Status");
         funcao = JOptionPane.showInputDialog("Entre com o Funcao");

         Pessoa pes = new Pessoa(0,login,senha,nome,email,status,funcao);
         ControlePessoa contCad = new ControlePessoa();
         pes = contCad.inseri(pes);
         JOptionPane.showMessageDialog(null, pes.toString());
    }
    
}

