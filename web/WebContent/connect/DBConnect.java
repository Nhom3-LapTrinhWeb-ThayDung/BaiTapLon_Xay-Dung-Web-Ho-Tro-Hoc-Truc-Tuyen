package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnecttion() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web","root","pon");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void main(String[] args) {
        System.out.println(getConnecttion());
    }
}
