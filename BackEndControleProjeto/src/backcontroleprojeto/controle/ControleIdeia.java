package backcontroleprojeto.controle;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import backcontroleprojeto.modelo.bean.Ideia;
import backcontroleprojeto.modelo.dao.DaoIdeia;


public class ControleIdeia {
    
    static DaoIdeia daoIde;

    public ControleIdeia() throws SQLException, ClassNotFoundException {
        daoIde = new DaoIdeia();
    }
    
    public Ideia busca (Ideia ide) throws SQLException {
        ide = daoIde.busca(ide);
        return ide;
    }

    public Ideia inseri (Ideia ide) throws SQLException {
        ide = daoIde.inseri(ide);
        return ide;
    }

    public Ideia altera (Ideia ide) throws SQLException {
        ide = daoIde.altera(ide);
        return ide;
    }

    public Ideia exclui (Ideia ide) throws SQLException {
        ide = daoIde.exclui(ide);
        return ide;
    }

    public List<Ideia> lista (Ideia ide) throws SQLException {
        List<Ideia> pess = new ArrayList<>();
        pess = daoIde.lista(ide);
        return pess;
    }
    
}
