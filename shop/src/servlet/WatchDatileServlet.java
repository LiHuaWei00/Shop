package servlet;

import service.WatchService;

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
@WebServlet("/WatchDatileServlet")
public class WatchDatileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        WatchService watchService = new WatchService();
        try {
            request.getSession().setAttribute("watchsize",watchService.findWatchSizeById(id));
            request.getSession().setAttribute("watchcolor",watchService.findWatchColorById(id));
            request.getSession().setAttribute("watch", watchService.findWatchById(id));
            request.getRequestDispatcher("single.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
