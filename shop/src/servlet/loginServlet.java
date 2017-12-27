package servlet;

import service.CegUserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by Huazi on 2017/10/11.
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("Username");
        username = new String(username.getBytes("iso8859-1"),"utf-8");
        String password = request.getParameter("Password");
        CegUserService cegUserService = new CegUserService();
        try {
            if(cegUserService.loginCheckS(username,password)){
                request.getSession().setAttribute("username",username);
                response.sendRedirect("WatchListServlet");
            }else{
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
