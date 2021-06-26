package dao;

import pojo.Category;

import java.util.List;

public interface CategoryDao {

    //查询所有类别
    public List<Category> getCategoryList();

}
