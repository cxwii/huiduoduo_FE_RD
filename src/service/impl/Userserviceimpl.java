package service.impl;

import dao.impl.UserDaoimpl;
import dao.UserDao;
import pojo.User;
import service.Userservicce;

public class Userserviceimpl implements Userservicce {

    UserDao dao = new UserDaoimpl();

    //登录功能
    @Override
    public User getUserByusername(String username) {
        return dao.getUserByusername(username);
    }

    //添加用户
    @Override
    public int addUser(User user) {
        return dao.addUser(user);
    }

    @Override
    public int updateUserInfo(User user) {
        return dao.updateUserInfo(user);
    }
}
