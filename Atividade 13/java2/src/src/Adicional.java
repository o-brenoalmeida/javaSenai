package src;

import javax.swing.JOptionPane;

public class Adicional {
    public static void main(String[] args) {

        Double salario;
        int meses;
        String funcionario;
        Double total;

        JOptionPane jop = new JOptionPane();

        funcionario = jop.showInputDialog("Qual o nome do funcionário?");
        meses = Integer.parseInt(jop.showInputDialog("Quantos meses trabalhados?"));
        salario = Double.parseDouble(jop.showInputDialog("Qual o valor do salário?"));

        total = salario / 12 * meses;

        jop.showMessageDialog(jop, "O Adicional Natalino de " + funcionario + " é de " + total);

    }
}
