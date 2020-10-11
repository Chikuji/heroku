package deskcontroleprojeto.view.pessoa;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControlePessoa;
import backcontroleprojeto.modelo.bean.Pessoa;

public class alterarPessoa {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        
         int id = Integer.parseInt(JOptionPane.showInputDialog("Entre com o ID"));
         String login = JOptionPane.showInputDialog("Entre com o Login");
         String senha = JOptionPane.showInputDialog("Entre com o Senha");
         String nome = JOptionPane.showInputDialog("Entre com o Nome");
         String email = JOptionPane.showInputDialog("Entre com o Email");
         String status = JOptionPane.showInputDialog("Entre com o Status");
         String funcao = JOptionPane.showInputDialog("Entre com o Funcao");

         Pessoa cad = new Pessoa(id,login,senha,nome,email,status,funcao);
         ControlePessoa contCad = new ControlePessoa();
         cad = contCad.altera(cad);
         JOptionPane.showMessageDialog(null, cad.toString());
    }
    
}
