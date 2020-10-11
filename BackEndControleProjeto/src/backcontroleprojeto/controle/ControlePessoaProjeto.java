package backcontroleprojeto.controle;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import backcontroleprojeto.modelo.bean.Projeto;
import backcontroleprojeto.modelo.bean.Pessoa;
import backcontroleprojeto.modelo.bean.PessoaProjeto;
import backcontroleprojeto.modelo.dao.DaoPessoaProjeto;

public class ControlePessoaProjeto {
    
    static DaoPessoaProjeto daoPesPro;
    ControlePessoa contPes ;
    ControleProjeto contPro ;

    public ControlePessoaProjeto() throws SQLException, ClassNotFoundException {
        daoPesPro = new DaoPessoaProjeto();
    }

    public PessoaProjeto busca (PessoaProjeto pespro) throws SQLException, ClassNotFoundException {
       contPes = new ControlePessoa();
       contPro = new ControleProjeto();
        // busca PessoaProjeto por id
        pespro = daoPesPro.busca(pespro);
        // construi os beans com os id de retorno 
        Pessoa pes = new Pessoa(pespro.getIdPs());
        Projeto pro = new Projeto(pespro.getIdPr());
        // seus controles.
        pespro.setPes(contPes.busca(pes));
        pespro.setPro(contPro.busca(pro));

        return pespro;
    }

    public PessoaProjeto inseri (PessoaProjeto pespro) throws SQLException {
        pespro = daoPesPro.inseri(pespro);
        return pespro;
    }

    public PessoaProjeto altera (PessoaProjeto pespro) throws SQLException {
        pespro = daoPesPro.altera(pespro);
        return pespro;
    }

    public PessoaProjeto exclui (PessoaProjeto pespro) throws SQLException {
        pespro = daoPesPro.exclui(pespro);
        return pespro;
    }

       
     public List<PessoaProjeto> lista (PessoaProjeto pespro) throws SQLException, ClassNotFoundException {

        List<PessoaProjeto> pespros = new ArrayList<>();
        pespros = daoPesPro.lista(pespro);
        for (PessoaProjeto pesproL : pespros) {
            contPes = new ControlePessoa();
            contPro = new ControleProjeto();
            Pessoa pes = new Pessoa(pesproL.getIdPs());
            Projeto pro = new Projeto(pesproL.getIdPr());
            
            pesproL.setPes(contPes.busca(pes));
            pesproL.setPro(contPro.busca(pro));
        }
        return pespros;
    }
    
}
