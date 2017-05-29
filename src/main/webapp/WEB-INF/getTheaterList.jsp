<%--
  Created by IntelliJ IDEA.
  User: kimhyewon
  Date: 2017. 5. 26.
  Time: PM 5:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hyewon.movieReservation.Theater" %>

<%@ page contentType="text/xml; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<theaters>
    <%
        String url = "";
        Connection conn = DriverManager.getConnection(url, "root", "dltmf1995");
        Statement stmt = conn.createStatement();
        int id = request.getParameter("id");
        List<Theater> theaters = Theater.findTheaterByMovie(stmt, id);
        for (Theater theater : theaters) {
    %>
    <theater
            id="<%= theater.getTheaterId()%>"
            name="<%= theater.getTheaterName()%>"/>
    <%
        }
        stmt.close();
        conn.close();
    %>
</theaters>