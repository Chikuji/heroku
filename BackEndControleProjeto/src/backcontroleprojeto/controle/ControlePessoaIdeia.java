package backcontroleprojeto.controle;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import backcontroleprojeto.modelo.bean.Ideia;
import backcontroleprojeto.modelo.bean.Pessoa;
import backcontroleprojeto.modelo.bean.PessoaIdeia;
import backcontroleprojeto.modelo.dao.DaoPessoaIdeia;

public class ControlePessoaIdeia {
    
    static DaoPessoaIdeia daoPesIde;
    ControlePessoa contPes ;
    ControleIdeia contIde ;

    public ControlePessoaIdeia() throws SQLException, ClassNotFoundException {
        daoPesIde = new DaoPessoaIdeia();
    }

    public PessoaIdeia busca (PessoaIdeia peside) throws SQLException, ClassNotFoundException {
       contPes = new ControlePessoa();
       contIde = new ControleIdeia();
        // busca PessoaIdeia por id
        peside = daoPesIde.busca(peside);
        // construi os beans com os id de retorno 
        Pessoa pes = new Pessoa(peside.getIdPs());
        Ideia ide = new Ideia(peside.getIdId());
        // seus controles.
        peside.setPes(contPes.busca(pes));
        peside.setIde(contIde.busca(ide));

        return peside;
    }

    public PessoaIdeia inseri (PessoaIdeia peside) throws SQLException {
        peside = daoPesIde.inseri(peside);
        return peside;
    }

    public PessoaIdeia altera (PessoaIdeia peside) throws SQLException {
        peside = daoPesIde.altera(peside);
        return peside;
    }

    public PessoaIdeia exclui (PessoaIdeia peside) throws SQLException {
        peside = daoPesIde.exclui(peside);
        return peside;
    }

       
     public List<PessoaIdeia> lista (PessoaIdeia peside) throws SQLException, ClassNotFoundException {

        List<PessoaIdeia> pesides = new ArrayList<>();
        pesides = daoPesIde.lista(peside);
        for (PessoaIdeia pesideL : pesides) {
            contPes = new ControlePessoa();
            contIde = new ControleIdeia();
            Pessoa pes = new Pessoa(pesideL.getIdPs());
            Ideia ide = new Ideia(pesideL.getIdId());
            // valorizar os beans de usuario e pessao executando
            // seus controles.
            pesideL.setPes(contPes.busca(pes));
            pesideL.setIde(contIde.busca(ide));
        }
        return pesides;
    }
    
}
