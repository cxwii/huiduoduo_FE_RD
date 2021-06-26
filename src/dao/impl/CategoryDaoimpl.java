package dao.impl;

import dao.CategoryDao;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import pojo.Category;
import util.JDBCUtils;

import java.util.List;

public class CategoryDaoimpl implements CategoryDao {

    JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public List<Category> getCategoryList() {
        String sql = "select * from category";
        List<Category> list = template.query(sql, new BeanPropertyRowMapper<Category>(Category.class));
        return list;
    }
}
