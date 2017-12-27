package service;

import bean.CegWatch;
import dao.Dao;
import dao.WatchDao;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Huazi on 2017/10/12.
 */
public class WatchService {
    //index中查询所有商品
    public List<CegWatch> findWatchInfoS() throws SQLException {
        Dao dao = new Dao();
        return dao.findWatchInfo();
    }
    //根据id查询商品的详细信息
    public CegWatch findWatchById(String id) throws SQLException {
        WatchDao watchDao = new WatchDao();
        return watchDao.findWatchByIdDao(id);

    }
    //根据id获取商品大小
    public List<String> findWatchSizeById(String id) throws SQLException {
        WatchDao watchDao = new WatchDao();
        return watchDao.findWatchSizeByIdDao(id);
    }

    public List<String> findWatchColorById(String id) throws SQLException {
        WatchDao watchDao = new WatchDao();
        return watchDao.findWatchColorByIdDao(id);
    }
}
