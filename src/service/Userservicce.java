package service;

import pojo.User;

public interface Userservicce {

    //添加用户
    public int addUser(User user);

    //登录功能
    public User getUserByusername(String username);

    //修改用户信息
    public int updateUserInfo(User user);

}
