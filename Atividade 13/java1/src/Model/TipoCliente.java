package Model;

public class TipoCliente {
   String cpf;
   String cnpj;

    public TipoCliente(String cpf, String cnpj) {
        this.cpf = cpf;
        this.cnpj = cnpj;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    @Override
    public String toString() {
        return "TipoCliente{" +
                "cpf='" + cpf + '\'' +
                ", cnpj='" + cnpj + '\'' +
                '}';
    }
}
