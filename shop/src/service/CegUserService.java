package service;

import dao.Dao;

import java.sql.*;

/**
 * Created by Huazi on 2017/10/11.
 */
public class CegUserService {
    Dao dao = new Dao();
    //登录
   public boolean loginCheckS(String username,String password) throws SQLException {
       if(dao.loginCheck(username,password)){
           return  true;
       }
       return false;
   }
    //注册
    public boolean signUpS(String username,String email,String password,String phone) throws SQLException {
        if(dao.signUp(username,email,password,phone)){
            return true;
        }
        return  false;
    }
}
