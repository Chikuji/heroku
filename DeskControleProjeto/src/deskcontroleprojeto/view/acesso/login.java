package deskcontroleprojeto.view.acesso;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControlePessoa;
import backcontroleprojeto.modelo.bean.Pessoa;


public class login {
    
  
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

         String login;
         String senha;
         
         login = JOptionPane.showInputDialog("Entre com o Login");
         senha = JOptionPane.showInputDialog("Entre com o Senha");
         
         Pessoa pes = new Pessoa(login,senha);
         ControlePessoa contPes= new ControlePessoa();
         pes = contPes.valida(pes);
         JOptionPane.showMessageDialog(null, pes.toString());
    }  
}
