package deskcontroleprojeto.view.pespro;

import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControlePessoaProjeto;
import backcontroleprojeto.modelo.bean.PessoaProjeto;

public class listarPessoaProjeto {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
         

         String obs = JOptionPane.showInputDialog("Entre com o Observacao");
         
         PessoaProjeto pespro = new PessoaProjeto(obs);
         ControlePessoaProjeto contPesPro = new ControlePessoaProjeto();
         List<PessoaProjeto> pespros = contPesPro.lista(pespro);
         
         for (PessoaProjeto pesproL : pespros) {
            JOptionPane.showMessageDialog(null, pesproL.toString());
            JOptionPane.showMessageDialog(null, pesproL.getPro().getNome());
            JOptionPane.showMessageDialog(null, pesproL.getPes().getNome());
     
         }
         
    }   
}

