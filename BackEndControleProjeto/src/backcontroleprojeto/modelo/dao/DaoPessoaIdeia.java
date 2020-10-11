package backcontroleprojeto.modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import backcontroleprojeto.modelo.bean.PessoaIdeia;
import backcontroleprojeto.util.ConexaoDB;


public class DaoPessoaIdeia {
    
    private final Connection c;   
    
    public DaoPessoaIdeia() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }

    public PessoaIdeia busca (PessoaIdeia peside) throws SQLException {
        String sql = "select * from contribui WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            
            stmt.setInt(1,peside.getId());

            ResultSet rs = stmt.executeQuery();
            PessoaIdeia retorno = null;
            while (rs.next()) {      
                retorno = new PessoaIdeia(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3),
                    rs.getString(4));
           
            }
            stmt.close();
            c.close();
        return retorno;
    }

    public PessoaIdeia inseri (PessoaIdeia peside) throws SQLException {
        String sql = "insert into contribui" + " (idPs, idId, observacao)" + " values (?,?,?)";
    
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        
        stmt.setInt(1,peside.getIdPs());
        stmt.setInt(2,peside.getIdId());
        stmt.setString(3,peside.getObs());

        
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            peside.setId(id);
        }
        stmt.close();
        c.close();
        return peside;
    }

    public PessoaIdeia altera (PessoaIdeia peside) throws SQLException {
        String sql = "UPDATE contribui SET idPs = ?, idId = ?, observacao = ? WHERE id = ?";
        
        PreparedStatement stmt = c.prepareStatement(sql);
       
        stmt.setInt(1,peside.getIdPs());
        stmt.setInt(2,peside.getIdId());
        stmt.setString(3,peside.getObs());
        stmt.setInt(4,peside.getId());

        
        stmt.execute();
        stmt.close();
        return peside;

    }

    public PessoaIdeia exclui (PessoaIdeia peside) throws SQLException {
         String sql = "delete from contribui WHERE id = ?";
        
        PreparedStatement stmt = c.prepareStatement(sql);
        
        stmt.setInt(1,peside.getId());
        
        stmt.execute();
        stmt.close();
        c.close();
        return peside;
    }

    public List<PessoaIdeia> lista (PessoaIdeia peside) throws SQLException {
        
        List<PessoaIdeia> pessIde = new ArrayList<>();
        
        String sql = "select * from contribui where observacao like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        
        stmt.setString(1,"%" + peside.getObs()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            
            PessoaIdeia pesIdeSaida = new PessoaIdeia(
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3),
                rs.getString(4)
            );
            
            pessIde.add(pesIdeSaida);
        }
        
        rs.close();
        stmt.close();
        return pessIde;       
    }

   

}
