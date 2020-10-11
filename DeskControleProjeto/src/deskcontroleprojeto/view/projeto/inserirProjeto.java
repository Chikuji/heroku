package deskcontroleprojeto.view.projeto;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import backcontroleprojeto.controle.ControleProjeto;
import backcontroleprojeto.modelo.bean.Projeto;

public class inserirProjeto {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
         
         String nome = JOptionPane.showInputDialog("Entre com o Nome");
         String tipo = JOptionPane.showInputDialog("Entre com o Tipo");
         String descricao = JOptionPane.showInputDialog("Entre com o Descricao");
         
         Projeto pro = new Projeto(0,nome,tipo,descricao);
         ControleProjeto contPro = new ControleProjeto();
         pro = contPro.inseri(pro);
         JOptionPane.showMessageDialog(null, pro.toString());
    }   
}
