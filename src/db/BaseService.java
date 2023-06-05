package db;

import java.net.ConnectException;
import java.sql.*;

public class BaseService {

    //Driver로드
    //Connection객체를 가져오는거
    //사용한 객체를 해제

    String url = "jdbc:mariadb://218.159.217.94:43307/kobis_db";
    String dbUserId = "kobis";
    String dbPwd = "1234";
    private static final String driverClass = "org.mariadb.jdbc.Driver";

    {
        try {
            Class.forName(driverClass);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

    }

    public Connection getConnection() {

        Connection connection = null;
        try {
            connection = DriverManager.getConnection(url, dbUserId, dbPwd);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return connection;
    }

    public void close(Connection connection) {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void close(PreparedStatement preparedStatement) {
        try {
            if (preparedStatement != null && !preparedStatement.isClosed()) {
                preparedStatement.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void close(ResultSet rs) {
        try {
            if (rs != null && !rs.isClosed()) {
                rs.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }




}











