package backcontroleprojeto.modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import backcontroleprojeto.modelo.bean.PessoaProjeto;
import backcontroleprojeto.util.ConexaoDB;


public class DaoPessoaProjeto {
    
    private final Connection c;   
    
    public DaoPessoaProjeto() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }

    public PessoaProjeto busca (PessoaProjeto pespro) throws SQLException {
        String sql = "select * from pessoa_projeto WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,pespro.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            PessoaProjeto retorno = null;
            while (rs.next()) {      
            // criando 
                retorno = new PessoaProjeto(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3),
                    rs.getString(4));
            // adiciona o
            }
            stmt.close();
            c.close();
        return retorno;
    }

    public PessoaProjeto inseri (PessoaProjeto pespro) throws SQLException {
        String sql = "insert into pessoa_projeto" + " (idPs, idPr, observacao)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setInt(1,pespro.getIdPs());
        stmt.setInt(2,pespro.getIdPr());
        stmt.setString(3,pespro.getObs());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            pespro.setId(id);
        }
        stmt.close();
        c.close();
        return pespro;
    }

    public PessoaProjeto altera (PessoaProjeto pespro) throws SQLException {
        String sql = "UPDATE pessoa_projeto SET idPs = ?, idPr = ?, observacao = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,pespro.getIdPs());
        stmt.setInt(2,pespro.getIdPr());
        stmt.setString(3,pespro.getObs());
        stmt.setInt(4,pespro.getId());

        // executa
        stmt.execute();
        stmt.close();
        return pespro;

    }

    public PessoaProjeto exclui (PessoaProjeto pespro) throws SQLException {
         String sql = "delete from pessoa_projeto WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,pespro.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return pespro;
    }

    public List<PessoaProjeto> lista (PessoaProjeto pespro) throws SQLException {
         // 
        List<PessoaProjeto> pessPro = new ArrayList<>();
        
        String sql = "select * from pessoa_projeto where observacao like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + pespro.getObs()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando 
            PessoaProjeto pesProSaida = new PessoaProjeto(
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3),
                rs.getString(4)
            );
            // adiciona 
            pessPro.add(pesProSaida);
        }
        
        rs.close();
        stmt.close();
        return pessPro;       
    }

   

}
