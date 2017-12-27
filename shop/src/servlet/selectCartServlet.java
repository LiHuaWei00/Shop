package servlet;

import service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by Huazi on 2017/10/18.
 */
@WebServlet("/selectCartServlet")
public class selectCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =request.getParameter("name");
        name = new String(name.getBytes("iso8859-1"),"utf-8");
        CartService cartService = new CartService();
        try {
            request.getSession().setAttribute("carts",cartService.selectCartByIdS(name));
            request.getRequestDispatcher("checkout.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
