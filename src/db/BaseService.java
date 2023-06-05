package db;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

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



}
