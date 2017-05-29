package com.hyewon.movieReservation;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/**
 * Created by kimhyewon on 2017. 5. 25..
 */
public class Movie {
    private  int id;
    private String name;
    private  int grade;
    private  String genre;
    private String nation;
    private int viewingTime;
    private Date releaseDate;
    private String director;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }



    public static List<Movie> findAll() {
        List<Movie> movies = new ArrayList<Movie>();
        // TODO: SQL
        // TODO: movies.add(convertResultSetToMovie(resultset))
        return movies;
    }

    public static Movie convertResultSetToMovie() {
        Movie movie = new Movie();
        // TODO: movie.name = resultSet.getString("name"); 등등
        return movie;
    }


}
