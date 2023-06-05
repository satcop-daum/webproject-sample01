package db;

import java.sql.*;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.List;

public class ActorService extends BaseService {

    public static void main(String[] args) {
        ActorService actorService = new ActorService();
        /*
        List<Actor> actors = actorService.getActorList();
        for (Actor actor : actors) {
            System.out.println("배우:" + actor.getName());
        }
        */

        String code = "10000014'; drop database; ";
        actorService.deleteActor(code);

    }

    public List<Actor> getActorList() {

        List<Actor> result=  new ArrayList<>();

        try {
            Connection connection = getConnection();
            String sql = " select code, name, eng_name, birth from actor limit 10 ";

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                Actor actor = new Actor();
                actor.setCode(rs.getString(1));
                actor.setName( rs.getString(2) );
                actor.setEngName( rs.getString(3));
                actor.setBirth( rs.getString(4));
                result.add(actor);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    public void deleteActor(String code) {

        String sql = " delete from actor where code = ? ";
        System.out.println(sql);

        try {
            Connection connection = super.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, code);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateActor(String code, String name, String engName) {

        String sql = " update actor set name = ?, eng_name = ? where code = ? ";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, engName);
            preparedStatement.setString(3, code);
            preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            close(preparedStatement);
            close(connection);
        }


    }




}






















