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
 * Created by Huazi on 2017/10/17.
 */
@WebServlet("/addCartServlet")
public class addCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String user_name = request.getParameter("user_name");
        user_name = new String(user_name.getBytes("iso8859-1"),"utf-8");
        String name = request.getParameter("name");
        String count = request.getParameter("count");
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        String price = request.getParameter("price");
        String url = request.getParameter("url");
        CegOrderService cegOrderService = new CegOrderService();

        try {
            if(cegOrderService.addCartS(id,user_name,name,count,color,size,price,url)){
                request.getSession().setAttribute("type",1);
//                response.getWriter().write("1");
                response.sendRedirect("WatchDatileServlet?id="+id);
            }else{
                request.getSession().setAttribute("type",0);
                response.sendRedirect("WatchDatileServlet?id="+id);
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
