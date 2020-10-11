package backcontroleprojeto.modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import backcontroleprojeto.modelo.bean.Projeto;
import backcontroleprojeto.util.ConexaoDB;

public class DaoProjeto {
    
    private final Connection c;
    
    public DaoProjeto() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public Projeto busca (Projeto pro) throws SQLException {
        String sql = "select * from projeto WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,pro.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            Projeto retorno = null;
            while (rs.next()) {      
            // criando o objeto Projeto
                retorno = new Projeto(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4));
            // adiciona o pro à lista de pros
            }
            stmt.close();
            c.close();
        return retorno;
    }

    public Projeto inseri (Projeto pro) throws SQLException {
        String sql = "insert into projeto" + " (nome, tipo, descricao)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,pro.getNome());
        stmt.setString(2,pro.getTipo());
        stmt.setString(3,pro.getDescricao());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            pro.setId(id);
        }
        stmt.close();
        c.close();
        return pro;
    }

    public Projeto altera (Projeto pro) throws SQLException {
        String sql = "UPDATE projeto SET nome = ?,tipo = ?, descricao = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,pro.getNome());
        stmt.setString(2,pro.getTipo());
        stmt.setString(3,pro.getDescricao());
        stmt.setInt(4,pro.getId());

        // executa
        stmt.execute();
        stmt.close();
        return pro;

    }

    public Projeto exclui (Projeto pro) throws SQLException {
         String sql = "delete from projeto WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,pro.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return pro;
    }

    public List<Projeto> lista (Projeto pro) throws SQLException {
         
        List<Projeto> pros = new ArrayList<>();
        
        String sql = "select * from projeto where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        
        stmt.setString(1,"%" + pro.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            
            Projeto proSaida = new Projeto(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4)
            );
            
            pros.add(proSaida);
        }
        
        rs.close();
        stmt.close();
        return pros;

    }

    
}
