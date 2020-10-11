package backcontroleprojeto.controle;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import backcontroleprojeto.modelo.bean.Projeto;
import backcontroleprojeto.modelo.dao.DaoProjeto;


public class ControleProjeto {
    
    static DaoProjeto daoPro;

    public ControleProjeto() throws SQLException, ClassNotFoundException {
        daoPro = new DaoProjeto();
    }
    
    public Projeto busca (Projeto pro) throws SQLException {
        pro = daoPro.busca(pro);
        return pro;
    }

    public Projeto inseri (Projeto pro) throws SQLException {
        pro = daoPro.inseri(pro);
        return pro;
    }

    public Projeto altera (Projeto pro) throws SQLException {
        pro = daoPro.altera(pro);
        return pro;
    }

    public Projeto exclui (Projeto pro) throws SQLException {
        pro = daoPro.exclui(pro);
        return pro;
    }

    public List<Projeto> lista (Projeto pro) throws SQLException {
        List<Projeto> pros = new ArrayList<>();
        pros = daoPro.lista(pro);
        return pros;
    }
    
}
