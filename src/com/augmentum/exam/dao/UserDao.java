package com.augmentum.exam.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.augmentum.exam.exception.DBException;
import com.augmentum.exam.model.User;
import com.augmentum.exam.util.DBUtil;
import com.mysql.jdbc.PreparedStatement;

public class UserDao {
    public User getUserByName(String userName) {
        if (userName == null || userName.equals("")) {
            return null;
        }

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        User user = null;

        try {
            conn = DBUtil.getConnection();
            stmt = (PreparedStatement) conn.prepareStatement("SELECT * FROM user WHERE user_name = ?");
            stmt.setString(1, userName);
            rs = stmt.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setUserName(rs.getString("user_name"));
                user.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new DBException();
        } finally {
            DBUtil.close(rs, stmt, conn);
        }

        return user;
    }
}
