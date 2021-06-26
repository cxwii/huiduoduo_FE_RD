package service.impl;

import dao.CategoryDao;
import dao.impl.CategoryDaoimpl;
import pojo.Category;
import service.CategoryService;

import java.util.List;

public class CategoryServiceimpl implements CategoryService {
    CategoryDao dao = new CategoryDaoimpl();

    @Override
    public List<Category> getCategoryList() {
        return dao.getCategoryList();
    }
}
