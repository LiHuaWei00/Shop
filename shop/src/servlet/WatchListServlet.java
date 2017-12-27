package servlet;

import bean.CegWatch;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.WatchService;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Huazi on 2017/10/12.
 */
@WebServlet("/WatchListServlet")
public class WatchListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        service.WatchService watchService = new service.WatchService();
        try {
            List<CegWatch> list = watchService.findWatchInfoS();
            request.getSession().setAttribute("list",list);
            request.getRequestDispatcher("index_m.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
