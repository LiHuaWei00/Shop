package dao;

import bean.CegWatch;
import bean.CegWatchPeo;
import bean.CegWatchType;
import common.DBconnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Huazi on 2017/10/17.
 */
public class WatchDao {
    public ResultSet resultSet = null;
    public CegWatch findWatchByIdDao(String id) throws SQLException {
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        List<CegWatch> list = new ArrayList<>();
        PreparedStatement preparedStatement;
        String sql = "select c.*,t.id as tid,p.id AS pid,t.`name`,p.sex from ceg_watch c LEFT JOIN ceg_watch_type t ON t.id = c.watch_type_id LEFT JOIN ceg_watch_peo p ON  p.id = c.watch_peo_id WHERE  c.id =? ";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,Integer.parseInt(id));
        resultSet = preparedStatement.executeQuery();
        CegWatch cegWatch;
        if (resultSet.next()){
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
            preparedStatement.close();
            connection.close();
            resultSet.close();
            return cegWatch;
        }else {
            preparedStatement.close();
            connection.close();
            resultSet.close();
            return  null;
        }
    }
    //根据id获取商品颜色
    public List<String> findWatchColorByIdDao(String id) throws SQLException {
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        PreparedStatement preparedStatement;
        String sql = "select t.watch_color from ceg_watch c LEFT JOIN ceg_watch_color t ON t.watch_id = c.id  WHERE  c.id =? ";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,Integer.parseInt(id));
        resultSet = preparedStatement.executeQuery();
        List<String> list = new ArrayList<>();
        while (resultSet.next()){
            list.add(resultSet.getString("watch_color"));

        }
        preparedStatement.close();
        connection.close();
        resultSet.close();
        return list;
    }

    public List<String> findWatchSizeByIdDao(String id) throws SQLException {
        DBconnection dBconnection = new DBconnection();
        Connection connection = dBconnection.getConn();
        PreparedStatement preparedStatement;
        String sql = "select t.watch_size from ceg_watch c LEFT JOIN ceg_watch_size t ON t.watch_id = c.id  WHERE  c.id =? ";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,Integer.parseInt(id));
        resultSet = preparedStatement.executeQuery();
        List<String> list = new ArrayList<>();
        while (resultSet.next()){
            list.add(resultSet.getString("watch_size"));

        }
        preparedStatement.close();
        connection.close();
        resultSet.close();
        return list;
    }


}
