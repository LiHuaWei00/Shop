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
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("Name");
        username = new String(username.getBytes("iso8859-1"),"utf-8");
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        String repassword = request.getParameter("rePassword");
        String phone = request.getParameter("PhoneNumber");
        CegUserService cegUserService = new CegUserService();
        if (password.equals(repassword)){
            try {
                if(cegUserService.signUpS(username,email,password,phone)){
                    response.sendRedirect("StudentServlet");
                }else {
                    request.getSession().setAttribute("error","注册失败");
                    request.getRequestDispatcher("index.jsp").forward(request,response);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else{
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
}
