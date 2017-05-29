package com.hyewon.movieReservation;

/**
 * Created by kimhyewon on 2017. 5. 26..
 */
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Theater {
    int id;
    String name;
    String location;

    public int getTheaterId() {
        return id;
    }

    public String getTheaterName() {
        return name;
    }

    public String getTheaterLocation() {
        return location;
    }

    public List<Theater> findAllTheater() {
        List<Theater> theaters = new ArrayList<Theater>();
        // TODO: SQL
        // TODO: movies.add(convertResultSetToMovie(resultset))
        return theaters;
    }

    public static List<Theater> findTheaterByMovie(Statement statement, int id) {
        List<Theater> theaters = new ArrayList<Theater>();
//        String sql = "";
//        ResultSet resultSet = statement.executeQuery(sql);
//        while (resultSet.next()) {
//            theaters.add(convertResultSetToMovie(resultSet));
//        }
//        resultSet.close();
        return theaters;
    }

    public static Theater convertResultSetToMovie() {
        Theater theater = new Theater();
        // TODO: movie.name = resultSet.getString("name"); 등등
        return theater;
    }

}