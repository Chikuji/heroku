package backcontroleprojeto.modelo.bean;


public class PessoaIdeia {
    
    private int id;
    private int idPs;
    private int idId;
    private String obs;
    private Pessoa pes;
    private Ideia ide;

    public PessoaIdeia(int id) {
        this.id = id;
    }

    public PessoaIdeia(String obs) {
        this.obs = obs;
    }

    public PessoaIdeia(int id, int idPs, int idId, String obs) {
        this.id = id;
        this.idPs = idPs;
        this.idId = idId;
        this.obs = obs;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdPs() {
        return idPs;
    }

    public void setIdPs(int idPs) {
        this.idPs = idPs;
    }

    public int getIdId() {
        return idId;
    }

    public void setIdId(int idId) {
        this.idId = idId;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }

    public Pessoa getPes() {
        return pes;
    }

    public void setPes(Pessoa pes) {
        this.pes = pes;
    }

    public Ideia getIde() {
        return ide;
    }

    public void setIde(Ideia ide) {
        this.ide = ide;
    }

  

    @Override
    public String toString() {
        return "PessoaIdeia{" + "id=" + id + ", idPs=" + idPs + ", idId=" + idId + ", obs=" + obs + '}';
    }

    
    
    
    
    
}
