package backcontroleprojeto.modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import backcontroleprojeto.modelo.bean.Ideia;
import backcontroleprojeto.util.ConexaoDB;

public class DaoIdeia {
    
    private final Connection c;
    
    public DaoIdeia() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public Ideia busca (Ideia ide) throws SQLException {
        String sql = "select * from ideia WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,ide.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            Ideia retorno = null;
            while (rs.next()) {      
            // criando o objeto Ideia
                retorno = new Ideia(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4));
            // adiciona o ide à lista de ides
            }
            stmt.close();
            c.close();
        return retorno;
    }

    public Ideia inseri (Ideia ide) throws SQLException {
        String sql = "insert into ideia" + " (nome, tipo, descricao)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,ide.getNome());
        stmt.setString(2,ide.getTipo());
        stmt.setString(3,ide.getDescricao());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            ide.setId(id);
        }
        stmt.close();
        c.close();
        return ide;
    }

    public Ideia altera (Ideia ide) throws SQLException {
        String sql = "UPDATE ideia SET nome = ?,tipo = ?, descricao = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,ide.getNome());
        stmt.setString(2,ide.getTipo());
        stmt.setString(3,ide.getDescricao());
        stmt.setInt(4,ide.getId());

        // executa
        stmt.execute();
        stmt.close();
        return ide;

    }

    public Ideia exclui (Ideia ide) throws SQLException {
         String sql = "delete from ideia WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,ide.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return ide;
    }

    public List<Ideia> lista (Ideia ide) throws SQLException {
         // ides: array armazena a lista de registros
        List<Ideia> ides = new ArrayList<>();
        
        String sql = "select * from ideia where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + ide.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Ideia
            Ideia ideSaida = new Ideia(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4)
            );
            // adiciona o ide à lista de ides
            ides.add(ideSaida);
        }
        
        rs.close();
        stmt.close();
        return ides;

    }

    
}
