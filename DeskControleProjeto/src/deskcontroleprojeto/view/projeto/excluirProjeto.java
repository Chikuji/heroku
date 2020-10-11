package deskcontroleprojeto.view.projeto;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControleProjeto;
import backcontroleprojeto.modelo.bean.Projeto;

public class excluirProjeto {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
         
         int id = Integer.parseInt(JOptionPane.showInputDialog("Entre com o ID"));
  
         Projeto pro = new Projeto(id);
         ControleProjeto contPro = new ControleProjeto();
         pro = contPro.exclui(pro);
         JOptionPane.showMessageDialog(null, pro.toString());
    }   
}
