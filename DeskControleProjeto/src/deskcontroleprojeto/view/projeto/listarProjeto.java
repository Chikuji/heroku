package deskcontroleprojeto.view.projeto;

import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControleProjeto;
import backcontroleprojeto.modelo.bean.Projeto;


public class listarProjeto {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {     
    
         String nome = JOptionPane.showInputDialog("Entre com o Nome");
         Projeto pro = new Projeto(nome);
         ControleProjeto contPro = new ControleProjeto();
         List<Projeto> pros = contPro.lista(pro);

         for (Projeto proL : pros) {
            JOptionPane.showMessageDialog(null, proL.toString());
         }

    }
}
