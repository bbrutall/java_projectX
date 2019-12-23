package com.intellias.px.pgjdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcProgram {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Connection connection = DriverManager.getConnection("jdbc:h2:~/project-x-db");
        Statement statement = connection.createStatement();
        int updateCount = statement.executeUpdate("create table users (id integer, name varchar(255), password varchar(255))");
        System.out.println("Updated" + updateCount);

//        statement.executeUpdate("insert into users (id, name, password) values (0, admin, 12345)");
        statement.close();

    }
}
