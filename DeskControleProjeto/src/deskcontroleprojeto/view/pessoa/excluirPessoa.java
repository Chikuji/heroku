package deskcontroleprojeto.view.pessoa;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControlePessoa;
import backcontroleprojeto.modelo.bean.Pessoa;

public class excluirPessoa {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

         int id;   
         
         id = Integer.parseInt(JOptionPane.showInputDialog("Entre com o ID"));
         

         Pessoa pes = new Pessoa(id);
         ControlePessoa contCad = new ControlePessoa();
         pes = contCad.exclui(pes);
         JOptionPane.showMessageDialog(null, pes.toString());
    }
    
}
