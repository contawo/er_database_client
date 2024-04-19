package source;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DemoConnection {
    public static void main(String[] args) {
        String table = "payments";
        String query = "select * from " + table + ";";

        String databaseName = "school";
        String url = "jdbc:mysql://localhost:3306/" + databaseName;
        
        String user = "root";
        String password = "rootawonke";

        try {
            SQLConnection connect = new SQLConnection(url, user, password);
            connect.queryDatabase(query);
            ResultSet results = connect.getResults();

            System.out.println("Results");
            System.out.println(results);

        } catch(SQLException error) {
            System.out.println("Failed to connect.");
        }
    }
}