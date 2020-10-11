package deskcontroleprojeto.view.pespro;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControlePessoaProjeto;
import backcontroleprojeto.modelo.bean.PessoaProjeto;

public class alterarPessoaProjeto {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
         
         int id = Integer.parseInt(JOptionPane.showInputDialog("Entre com o Id")); 
         int idPs = Integer.parseInt(JOptionPane.showInputDialog("Entre com o IdPessoa"));
         int idPr = Integer.parseInt(JOptionPane.showInputDialog("Entre com o IdProjeto"));
         String obs = JOptionPane.showInputDialog("Entre com o Observacao");
         
         PessoaProjeto pespro = new PessoaProjeto(id, idPs, idPr, obs);
         ControlePessoaProjeto contPesPro = new ControlePessoaProjeto();
         pespro = contPesPro.altera(pespro);
         JOptionPane.showMessageDialog(null, pespro.toString());
    }   
}

