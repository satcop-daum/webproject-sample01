package db;

import java.sql.*;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.List;

public class ActorService {


    public List<Actor> getActorList() {

        String url = "jdbc:mysql://172.16.204.102:3306/kobis_db";
        String dbUserId = "kobis";
        String dbPwd = "1234";

        List<Actor> result=  new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection connection = DriverManager.getConnection(url, dbUserId, dbPwd);
            String sql = " select name, eng_name, birth from actor limit 10 ";

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                Actor actor = new Actor();
                actor.setName( rs.getString(1) );
                actor.setEngName( rs.getString(2));
                actor.setBirth( rs.getString(3));
                result.add(actor);
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return result;
    }


}
