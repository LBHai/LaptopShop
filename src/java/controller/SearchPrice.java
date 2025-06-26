/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ProductDAO;
import Entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author MSII
 */
@WebServlet(name = "SearchPrice", urlPatterns = {"/SearchPrice"})
public class SearchPrice extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        int txtSearch = Integer.parseInt(request.getParameter("price"));
        ProductDAO dao = new ProductDAO();
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        if (txtSearch == 1) {
            List<Product> list = dao.getSearchPriceDesc(index);
            List<Product> l = dao.getAllbrand();
            List<Product> last = dao.getNewProduc();
            int endPage = dao.getNumberEndPage();
            request.setAttribute("endPage", endPage);
            request.setAttribute("listN", last);
            request.setAttribute("listC", l);
            request.setAttribute("listP", list);
            request.getRequestDispatcher("product.jsp").forward(request, response);
        } else if (txtSearch == 2) {
            List<Product> list = dao.getSearchPriceAsc(index);
            List<Product> l = dao.getAllbrand();
            List<Product> last = dao.getNewProduc();
            int endPage = dao.getNumberEndPage();
            request.setAttribute("endPage", endPage);
            request.setAttribute("listN", last);
            request.setAttribute("listC", l);
            request.setAttribute("listP", list);
            request.getRequestDispatcher("product.jsp").forward(request, response);
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
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
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
