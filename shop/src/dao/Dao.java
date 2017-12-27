package dao;

import bean.CegWatch;
import bean.CegWatchPeo;
import bean.CegWatchType;
import common.DBconnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Huazi on 2017/10/11.
 */
public class Dao {
    public ResultSet resultSet = null;
    //登录验证
    public boolean loginCheck(String username,String password) throws SQLException {
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        PreparedStatement preparedStatement;
        String sql = "select userpassword from ceg_user where username = ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,username);
        resultSet = preparedStatement.executeQuery();
        if(resultSet.next()){
            if(password.equals(resultSet.getString("userpassword"))){
                preparedStatement.close();
                connection.close();
                resultSet.close();
                return true;
            }else{
                preparedStatement.close();
                connection.close();
                resultSet.close();
                return false;
            }

        }
        return false;
    }
    //注册
    public boolean signUp(String username ,String email ,String password,String phone) throws SQLException {
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        PreparedStatement preparedStatement;
        String sql = "INSERT INTO ceg_user VALUES (null,?,?,?,?)";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,username);
        preparedStatement.setString(2,password);
        preparedStatement.setString(3,phone);
        preparedStatement.setString(4,email);
        int i = preparedStatement.executeUpdate();
        if(i>0){
            return true;
        }
        return false;
    }
    //查询出商品表中的商品
    public List<CegWatch> findWatchInfo() throws SQLException {
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        List<CegWatch> list = new ArrayList<>();
        PreparedStatement preparedStatement;
        String sql = "select c.*,t.id as tid,p.id AS pid,t.`name`,p.sex from ceg_watch c LEFT JOIN ceg_watch_type t ON t.id = c.watch_type_id LEFT JOIN ceg_watch_peo p ON  p.id = c.watch_peo_id LIMIT 8";
        preparedStatement = connection.prepareStatement(sql);
        resultSet = preparedStatement.executeQuery();
        CegWatch cegWatch;
        while (resultSet.next()){
            cegWatch = new CegWatch();
            cegWatch.setId(resultSet.getInt("id"));
            cegWatch.setWatch_name(resultSet.getString("watch_name"));
            cegWatch.setWatch_color(resultSet.getString("watch_color"));
            cegWatch.setWatch_price(resultSet.getInt("watch_price"));
            cegWatch.setWatch_url(resultSet.getString("watch_url"));
            cegWatch.setWatch_count(resultSet.getInt("watch_count"));
            cegWatch.setWatch_size(resultSet.getString("watch_size"));
            cegWatch.setWatch_introduce(resultSet.getString("watch_introduce"));
            CegWatchType cegWatchType = new CegWatchType();
            cegWatchType.setId(resultSet.getInt("tid"));
            cegWatchType.setName(resultSet.getString("name"));
            cegWatch.setWatch_type(cegWatchType);
            CegWatchPeo cegWatchpeo = new CegWatchPeo();
            cegWatchType.setId(resultSet.getInt("pid"));
            cegWatchpeo.setSex(resultSet.getString("sex"));
            cegWatch.setWatch_peo(cegWatchpeo);
            list.add(cegWatch);
        }
        preparedStatement.close();
        connection.close();
        resultSet.close();
        return  list;
    }
}
