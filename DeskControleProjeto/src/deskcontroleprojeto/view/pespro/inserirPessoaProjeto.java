package deskcontroleprojeto.view.pespro;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControlePessoaProjeto;
import backcontroleprojeto.modelo.bean.PessoaProjeto;

public class inserirPessoaProjeto {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
         

         int idPs = Integer.parseInt(JOptionPane.showInputDialog("Entre com o IdPessoa"));
         int idPr = Integer.parseInt(JOptionPane.showInputDialog("Entre com o IdProjeto"));
         String obs = JOptionPane.showInputDialog("Entre com o Observacao");
         
         PessoaProjeto pespro = new PessoaProjeto(0, idPs, idPr, obs);
         ControlePessoaProjeto contPesPro = new ControlePessoaProjeto();
         pespro = contPesPro.inseri(pespro);
         JOptionPane.showMessageDialog(null, pespro.toString());
    }   
}
