package dao.impl;

import dao.UserDao;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import pojo.User;
import util.JDBCUtils;

public class UserDaoimpl implements UserDao {

    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    //登录功能
    @Override
    public User getUserByusername(String username) {
        String sql = "select * from user where username =?";
        return template.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), username);
    }

    //添加用户
    @Override
    public int addUser(User user) {
        String sql = "insert into user values(?,?,?,?,?,?,?,?,?,?,?)";
        return template.update(sql,
                user.getUid(),
                user.getUsername(),
                user.getPassword(),
                user.getName(),
                user.getEmail(),
                user.getTelephone(),
                user.getBirthday(),
                user.getSex(),
                String.valueOf(user.getState()),
                user.getCode(),
                user.getAddress());
    }

    //修改用户信息
    @Override
    public int updateUserInfo(User user) {
        String sql = "update user set password =?,name =?,email =?,telephone=?,sex =?,birthday=?,address=? where uid=?";
        return template.update(sql,
                user.getPassword(),
                user.getName(),
                user.getEmail(),
                user.getTelephone(),
                user.getSex(),
                user.getBirthday(),
                user.getAddress(),
                user.getUid());
    }
}
