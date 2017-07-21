package com.augmentum.exam.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.augmentum.exam.exception.DBException;
import com.augmentum.exam.util.DBUtil;
import com.mysql.jdbc.PreparedStatement;

public class QuestionDao {

    public void save() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBUtil.getConnection();
            stmt = (PreparedStatement) conn.prepareStatement("INSERT INTO question");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new DBException();
        } finally {
            DBUtil.close(rs, stmt, conn);
        }


    }

}
