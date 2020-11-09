/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletTeste")
public class Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer altura = request.getParameter("altura");
        Integer peso = request.getParameter("peso");
        Integer imc;

        imc = peso / (altura * altura);

        //Aqui sai pro programador
        System.out.println("IMC: " + imc);


        //Aqui sai para o cliente
        PrintWriter wri = response.getWriter();
        String htmlResponse = "<html>";
        htmlResponse += "<h2>IMC: " + imc + "<br>";
        htmlResponse += "</html>";

        wri.println(htmlResponse);
    }


}//fim da classe
