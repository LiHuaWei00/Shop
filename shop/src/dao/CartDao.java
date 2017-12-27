package dao;

import bean.*;
import common.DBconnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Huazi on 2017/10/18.
 */
public class CartDao {
    public ResultSet resultSet = null;

    //查看我的购物车中的信息
    public List<CegWatchOrder> selectCartById(String name) throws SQLException {
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        List<CegWatchOrder> list = new ArrayList<>();
        PreparedStatement preparedStatement;
        String sql = "select co.*,cod.id as id1,cod.watch_name,cod.watch_count,cod.watch_color,cod.watch_price,cod.watch_url from ceg_order co RIGHT JOIN ceg_order_detail cod ON cod.order_id = co.id where co.order_status = 0 and co.user_name = ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, name);
        resultSet = preparedStatement.executeQuery();
        CegWatchOrder cegWatchOrder;
        while (resultSet.next()) {
            cegWatchOrder = new CegWatchOrder();
            cegWatchOrder.setId(resultSet.getInt("id"));
            cegWatchOrder.setUser_name(resultSet.getString("user_name"));
            cegWatchOrder.setTotal_price(resultSet.getDouble("total_price"));
            CegOrderDetail cegOrderDetail = new CegOrderDetail();
            cegOrderDetail.setId(resultSet.getInt("id1"));
            cegOrderDetail.setWatch_color(resultSet.getString("watch_color"));
            cegOrderDetail.setWatch_name(resultSet.getString("watch_name"));
            cegOrderDetail.setWatch_price(resultSet.getDouble("watch_price"));
            cegOrderDetail.setWatch_count(resultSet.getInt("watch_count"));
            cegOrderDetail.setWatch_url(resultSet.getString("watch_url"));
            cegWatchOrder.setCegOrderDetail(cegOrderDetail);
            list.add(cegWatchOrder);
        }
        preparedStatement.close();
        connection.close();
        resultSet.close();
        return list;
    }
}
