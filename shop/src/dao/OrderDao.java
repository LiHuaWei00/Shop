package dao;

import common.DBconnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Huazi on 2017/10/17.
 */
public class OrderDao {
    public ResultSet resultSet = null;

    public Integer addCart(String id, String user_name,String name, String count, String color, String size,double totalprice) throws SQLException {
        Integer key = null;
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        PreparedStatement preparedStatement;
        String sql = "INSERT INTO ceg_order VALUES (null, ?, ?, ?,0)";
        preparedStatement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        preparedStatement.setString(1, user_name);
        preparedStatement.setInt(2,Integer.parseInt(id));
        preparedStatement.setDouble(3,totalprice);
        preparedStatement.executeUpdate();
        ResultSet rs = preparedStatement.getGeneratedKeys();
        if(rs.next()){
             key = rs.getInt(1);
        }

        preparedStatement.close();
        connection.close();
        return key;
    }
    //添加订单明细表
    public void addOrderdetail(String name, double prices, String color, Integer count, int key,String url) throws SQLException {
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        PreparedStatement preparedStatement;
        String sql = "INSERT INTO ceg_order_detail VALUES (null,?,?,?,?,?,?)";
        preparedStatement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        preparedStatement.setInt(1,key);
        preparedStatement.setString(2,name);
        preparedStatement.setDouble(3,prices);
        preparedStatement.setInt(4,count);
        preparedStatement.setString(5,color);
        preparedStatement.setString(6,url);
        preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();
    }
    //支付订单
    public boolean zhifu(int id) throws SQLException {
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        PreparedStatement preparedStatement;
        String sql = "update ceg_order set order_status = 1 WHERE id = ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,id);

        int i = preparedStatement.executeUpdate();
        if(i>0){
            preparedStatement.close();
            connection.close();
            return true;
        }else{
            preparedStatement.close();
            connection.close();
            return false;
        }
    }

    public boolean deleteCart(Integer id) throws SQLException {
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        PreparedStatement preparedStatement;
        String sql = "delete  from ceg_order  WHERE id = ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,id);
        int i = preparedStatement.executeUpdate();
        if(i>0){
            preparedStatement.close();
            connection.close();
            return true;
        }else{
            preparedStatement.close();
            connection.close();
            return false;
        }
    }
}