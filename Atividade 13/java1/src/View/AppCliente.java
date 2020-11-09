package View;

import Model.Cliente;

public class AppCliente {

    public static void main(String[] args) {
        Cliente cliente = new Cliente("Frank", 55, "frank@email.com", 1200.00);
        System.out.println(cliente.toString());
    }
}
