<%--
  Created by IntelliJ IDEA.
  User: kimhyewon
  Date: 2017. 5. 26.
  Time: PM 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="com.hyewon.movieReservation.Movie" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/xml; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
    <movies>
    <%
        String url = "";
        Connection conn = DriverManager.getConnection(url, "root", "dltmf1995");
        Statement stmt = conn.createStatement();
        List<Movie> movies = Movie.findAll(stmt);
        for (Movie movie : movies) {
    %>
    <movie
            name="<%= movie.getName()%>"
            id="<%= movie.getId() %>"/>
    <%
        }
        stmt.close();
        conn.close();
    %>
</movies>


