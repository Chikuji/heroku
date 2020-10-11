package backcontroleprojeto.modelo.bean;


public class Pessoa {
    
    private int id;
    private String login;
    private String senha;
    private String nome;
    private String email;
    private String status;
    private String funcao;

    public Pessoa(int id) {
        this.id = id;
    }

    public Pessoa(String login, String senha) {
        this.login = login;
        this.senha = senha;
    }

    public Pessoa(String nome) {
        this.nome = nome;
    }

    public Pessoa(int id, String login, String senha, String nome, String email, String status, String funcao) {
        this.id = id;
        this.login = login;
        this.senha = senha;
        this.nome = nome;
        this.email = email;
        this.status = status;
        this.funcao = funcao;
    }

    
    public Pessoa(String login, String senha, String nome) {
        this.login = login;
        this.senha = senha;
        this.nome = nome;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFuncao() {
        return funcao;
    }

    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }
    
   

    @Override
    public String toString() {
        return "Pessoa{" + "id=" + id + ", login=" + login + ", senha=" + senha + ", nome=" + nome + ", email=" + email + ", status=" + status + ", funcao=" + funcao + '}';
    }
    
}
