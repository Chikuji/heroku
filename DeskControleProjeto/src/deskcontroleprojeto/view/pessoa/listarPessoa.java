package deskcontroleprojeto.view.pessoa;

import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControlePessoa;
import backcontroleprojeto.modelo.bean.Pessoa;


public class listarPessoa {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {     
    
        String login;   
         login = JOptionPane.showInputDialog("Entre com o Login");
         
         Pessoa pes = new Pessoa(login,"");
         ControlePessoa contCad = new ControlePessoa();
         List<Pessoa> pess = contCad.lista(pes);

         for (Pessoa pesL : pess) {
            JOptionPane.showMessageDialog(null, pesL.toString());
         }
                 

    }
}
