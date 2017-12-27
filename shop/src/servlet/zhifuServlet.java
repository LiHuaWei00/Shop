package servlet;

import service.CegOrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by Huazi on 2017/10/20.
 */
@WebServlet("/zhifuServlet")
public class zhifuServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Integer ids = Integer.parseInt(id);
//        String username = request.getParameter("name");
//        username = new String(username.getBytes("iso8859-1"),"utf-8");
        CegOrderService cegOrderService = new CegOrderService();
        try {
            if(cegOrderService.zhifuS(ids)){
//                response.sendRedirect("selectCartServlet?name="+username);
                request.getSession().setAttribute("type1",1);
                request.getRequestDispatcher("checkout.jsp").forward(request,response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
