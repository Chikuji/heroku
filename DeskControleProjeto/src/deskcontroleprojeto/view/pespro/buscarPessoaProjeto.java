package deskcontroleprojeto.view.pespro;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControlePessoaProjeto;
import backcontroleprojeto.modelo.bean.PessoaProjeto;

public class buscarPessoaProjeto {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
         
         int id = Integer.parseInt(JOptionPane.showInputDialog("Entre com o Id")); 
 
         
         PessoaProjeto pespro = new PessoaProjeto(id);
         ControlePessoaProjeto contPesPro = new ControlePessoaProjeto();
         pespro = contPesPro.busca(pespro);
         JOptionPane.showMessageDialog(null, pespro.toString());
    }   
}