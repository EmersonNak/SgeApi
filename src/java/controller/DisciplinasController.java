/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Disciplina;
import model.dao.DisciplinaDAO;

/**
 *
 * @author Senai
 */
@WebServlet(name = "DisciplinasController", urlPatterns = {"/DisciplinasController", "/disciplinas", "/disciplina"})
public class DisciplinasController extends HttpServlet {

    Gson conversor = new Gson();
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DisciplinasController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DisciplinasController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getServletPath();
        
        if (url.equals("/disciplinas")) { // Verifica se a URL solicitada é "/disciplinas"

            response.setContentType("application/JSON"); // Define o tipo de conteúdo da resposta como JSON
            response.setCharacterEncoding("UTF-8"); // Define a codificação de caracteres da resposta como UTF-8

            // Cria um HashMap para armazenar a lista de disciplinas
            Map<String, List<Disciplina>> res = new HashMap<String, List<Disciplina>>();

            // Adiciona ao HashMap uma entrada com a chave "disciplinas" e o valor sendo a lista de disciplinas retornada pelo método lerDisciplinas() da classe DisciplinaDAO
            res.put("disciplinas", new DisciplinaDAO().lerDisciplinas());

            // Obtém um PrintWriter a partir da resposta para enviar dados de volta ao cliente
            PrintWriter out = response.getWriter();

            // Converte o HashMap res para JSON e escreve na resposta
            out.write(conversor.toJson(res));

            // Assegura que todos os dados foram enviados ao cliente
            out.flush();
        
        } else if (url.equals("/disciplina")) {
            
            response.setContentType("application/JSON");
            response.setCharacterEncoding("UTF-8");
            
            int id = Integer.parseInt(request.getParameter("id_disciplina"));
            
            PrintWriter out = response.getWriter();
            out.write(conversor.toJson(new DisciplinaDAO().disciplinaEspecifica(id)));
            out.flush();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.s
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
