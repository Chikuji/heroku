package backcontroleprojeto.controle;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import backcontroleprojeto.modelo.bean.Pessoa;
import backcontroleprojeto.modelo.dao.DaoPessoa;


public class ControlePessoa {
    
    static DaoPessoa daoPes;
    
    public ControlePessoa() throws SQLException, ClassNotFoundException {
         daoPes = new DaoPessoa();
    }
    
    public Pessoa valida (Pessoa pes) throws SQLException {
        pes = daoPes.valida(pes);
        return pes;
    }
    
    public Pessoa busca (Pessoa pes) throws SQLException {
        pes = daoPes.busca(pes);
        return pes;
    }

    public Pessoa inseri (Pessoa pes) throws SQLException {
        pes = daoPes.inseri(pes);
        return pes;
    }

    public Pessoa altera (Pessoa pes) throws SQLException {
        pes = daoPes.altera(pes);
        return pes;
    }

    public Pessoa exclui (Pessoa pes) throws SQLException {
        pes = daoPes.exclui(pes);
        return pes;
    }

    public List<Pessoa> lista (Pessoa pes) throws SQLException {
        List<Pessoa> pess = new ArrayList<>();
        pess = daoPes.lista(pes);
        return pess;
    }
    
}
