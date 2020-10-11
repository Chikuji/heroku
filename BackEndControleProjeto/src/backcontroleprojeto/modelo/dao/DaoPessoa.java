package backcontroleprojeto.modelo.dao;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import backcontroleprojeto.modelo.bean.Pessoa;
import backcontroleprojeto.util.ConexaoDB;

public class DaoPessoa {

    private final Connection c;

    public DaoPessoa() throws SQLException, ClassNotFoundException {
        this.c = new ConexaoDB().getConnection();
    }

    public Pessoa valida(Pessoa pes) throws SQLException {
        // cria o select para ser executado no banco de dados 
        String sql = "select * from cadastro WHERE login = ? AND senha = ?";
        // prepared statement para seleção
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1, pes.getLogin());
        stmt.setString(2, pes.getSenha());
        // executa
        ResultSet rs = stmt.executeQuery();
        // percorrendo o rs
        Pessoa retorno = null;
        while (rs.next()) {
            // criando o objeto Pessoa
            retorno = new Pessoa(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7));
            // adiciona o pes à lista de pess
        }
        stmt.close();
        c.close();
        return retorno;
    }

    public Pessoa busca(Pessoa pes) throws SQLException {
        String sql = "select * from cadastro WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, pes.getId());
        // executa
        ResultSet rs = stmt.executeQuery();
        Pessoa retorno = null;
        while (rs.next()) {
            // criando o objeto Pessoa
            retorno = new Pessoa(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7));
            // adiciona o pes à lista de pess
        }
        stmt.close();
        c.close();
        return retorno;
    }

    public Pessoa inseri(Pessoa pes) throws SQLException {
        String sql = "insert into cadastro" + " (login,senha,nome,email,status,funcao)" + " values (?,?,?,?,?,?)";

        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1, pes.getLogin());
        stmt.setString(2, pes.getSenha());
        stmt.setString(3, pes.getNome());
        stmt.setString(4, pes.getEmail());
        stmt.setString(5, pes.getStatus());
        stmt.setString(6, pes.getFuncao());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            pes.setId(id);
        }
        stmt.close();
        c.close();
        return pes;
    }

    public Pessoa altera(Pessoa pes) throws SQLException {
        String sql = "UPDATE cadastro SET login = ?, senha = ?,nome = ?,email = ?, status = ?, funcao = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1, pes.getLogin());
        stmt.setString(2, pes.getSenha());
        stmt.setString(3, pes.getNome());
        stmt.setString(4, pes.getEmail());
        stmt.setString(5, pes.getStatus());
        stmt.setString(6, pes.getFuncao());
        stmt.setInt(7, pes.getId());

        // executa
        stmt.execute();
        stmt.close();
        return pes;

    }

    public Pessoa exclui(Pessoa pes) throws SQLException {
        String sql = "delete from cadastro WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, pes.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return pes;
    }

    public List<Pessoa> lista(Pessoa pes) throws SQLException {
       
        List<Pessoa> pess = new ArrayList<>();

        String sql = "select * from cadastro where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        
        stmt.setString(1, "%" + pes.getNome() + "%");

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
           
            Pessoa pesSaida = new Pessoa(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7));
            
            pess.add(pesSaida);
        }
        rs.close();
        stmt.close();
        return pess;
    }
}
