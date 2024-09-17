package org.miniproject.dao.category;

import org.miniproject.models.Category;
import org.miniproject.utils.DBConnection;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDaoImpl implements ICategoryDao {
    @Override
    public void save(Category category) {
        Connection connection = DBConnection.getConnection();
        CallableStatement sta =null;
        try{
            sta = connection.prepareCall("insert into Category (name, status) values (?, ?)");
            sta.setString(1, category.getName());
            sta.setBoolean(2, category.isStatus());
            sta.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBConnection.closeConnection(connection);
        }
    }

    @Override
    public void update(Category category) {
        Connection connection = DBConnection.getConnection();
        CallableStatement sta = null;
        try{
            sta = connection.prepareCall("update Category set name =?, status =? where id =?");
            sta.setString(1, category.getName());
            sta.setBoolean(2, category.isStatus());
            sta.setInt(3, category.getId());
            sta.executeUpdate();
        }catch (SQLException e){
            throw new RuntimeException(e);
        }finally {
            DBConnection.closeConnection(connection);
        }
    }

    @Override
    public void delete(Integer id) {
        Connection connection = DBConnection.getConnection();
        CallableStatement sta = null;
        try{
            sta = connection.prepareCall("delete from Category where id =?");
            sta.setInt(1, id);
            sta.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBConnection.closeConnection(connection);
        }
    }

    @Override
    public Category findById(Integer id) {
        Connection connection = DBConnection.getConnection();
        CallableStatement sta = null;
        try{
            sta = connection.prepareCall("select * from Category where id = ?");
            sta.setInt(1, id);
            ResultSet rs = sta.executeQuery();
            if (rs.next()){
                Category category = new Category(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getBoolean("status")
                );
                return category;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBConnection.closeConnection(connection);
        }
        return null;
    }

    @Override
    public List<Category> findAll() {
        List<Category> categories = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        CallableStatement sta = null;
        try{
            sta = connection.prepareCall("select * from Category");
            ResultSet rs = sta.executeQuery();
            while (rs.next()) {
                Category category = new Category(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getBoolean("status")
                );
                    categories.add(category);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBConnection.closeConnection(connection);
        }
        return categories;
    }
}
