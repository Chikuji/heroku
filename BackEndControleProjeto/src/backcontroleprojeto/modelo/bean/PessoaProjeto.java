package backcontroleprojeto.modelo.bean;


public class PessoaProjeto {
    
    private int id;
    private int idPs;
    private int idPr;
    private String obs;
    
    private Pessoa pes;
    private Projeto pro;

    public PessoaProjeto(int id) {
        this.id = id;
    }

    public PessoaProjeto(String obs) {
        this.obs = obs;
    }

    public PessoaProjeto(int id, int idPs, int idPr, String obs) {
        this.id = id;
        this.idPs = idPs;
        this.idPr = idPr;
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

    public int getIdPr() {
        return idPr;
    }

    public void setIdPr(int idPr) {
        this.idPr = idPr;
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

    public Projeto getPro() {
        return pro;
    }

    public void setPro(Projeto pro) {
        this.pro = pro;
    }

  

    @Override
    public String toString() {
        return "PessoaProjeto{" + "id=" + id + ", idPs=" + idPs + ", idPr=" + idPr + ", obs=" + obs + '}';
    }

    
    
    
    
    
}
