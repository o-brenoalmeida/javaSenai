package Model;

public class Cliente {

    private String nome;
    private int idade;
    private String email;
    private Double salario;

    public Cliente(){

    }

    public Cliente(String nome, int idade, String email, Double salario){
        this.nome = nome;
        this.idade = idade;
        this.email = email;
        this.salario = salario;
    }

    // <editor-fold name="Getters & Setters">
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    // </editor-fold>


    @Override
    public String toString() {
        return "Cliente{" +
                "nome='" + nome + '\'' +
                ", idade=" + idade +
                ", email='" + email + '\'' +
                ", salario=" + salario +
                '}';
    }
}
