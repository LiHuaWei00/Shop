package service;

import dao.OrderDao;

import java.sql.SQLException;

/**
 * Created by Huazi on 2017/10/17.
 */
public class CegOrderService {
    public boolean addCartS( String id, String user_name, String name, String count, String color, String size, String price,String url) throws SQLException {
        OrderDao orderDao = new OrderDao();
        double prices = Double.valueOf(price);
        Integer counts = Integer.parseInt(count);
        double totalprice = prices*counts;
        int key = orderDao.addCart(id,user_name,name,count,color,size,totalprice);
        orderDao.addOrderdetail(name,prices,color,counts,key,url);
        return true;
    }
    public boolean zhifuS(int id) throws SQLException {
        OrderDao orderDao = new OrderDao();
        return orderDao.zhifu(id);
    }

    public boolean deleteCartS(Integer id) throws SQLException {
        OrderDao orderDao = new OrderDao();
        return orderDao.deleteCart(id);
    }
}
