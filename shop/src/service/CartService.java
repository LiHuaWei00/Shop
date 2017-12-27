package service;

import bean.CegWatchOrder;
import dao.CartDao;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Huazi on 2017/10/18.
 */
public class CartService {
    //查看购物车
    public List<CegWatchOrder> selectCartByIdS(String name) throws SQLException {
        CartDao cartDao = new CartDao();
        return cartDao.selectCartById(name);

    }
}
