package com.hyewon.movieReservation;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by kimhyewon on 2017. 5. 26..
 */
public class Schedule {
    int id;
    int movie;
    Date date;
    int startTime;
    int endTime;
    int theaterId;
    int roomId;


    public static List<Schedule> findScheduleDateByMovieTheater(Statement statement, int movieId, int theaterId) {
        List<Schedule> schedules = new ArrayList<Schedule>();
//        String sql = "";
//        ResultSet resultSet = statement.executeQuery(sql);
//        while (resultSet.next()) {
//            theaters.add(convertResultSetToMovie(resultSet));
//        }
//        resultSet.close();
        return schedules;
    }

    public static List<Schedule> findScheduleRoomTimeByMovieTheaterDate(Statement statement, int movieId, int theaterId, Date date) {
        List<Schedule> schedules = new ArrayList<Schedule>();
//        String sql = "";
//        ResultSet resultSet = statement.executeQuery(sql);
//        while (resultSet.next()) {
//            theaters.add(convertResultSetToMovie(resultSet));
//        }
//        resultSet.close();
        return schedules;
    }



}
