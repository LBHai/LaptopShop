package DAO;

import DAO.*;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtils {

    public static Connection makeConnection() throws Exception {
        String connectionUrl = "jdbc:sqlserver://localhost:1433;"
                + "databaseName=Laptop;User=sa;Password=123";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con = DriverManager.getConnection(connectionUrl);
        return con;
    }
}
