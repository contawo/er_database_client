package tests;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.*;

import source.SQLConnection;

public class SQLConnectionTest {
    @Test
    public void TestConnection() {
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

            Assert.assertNotNull(results);
        } catch (SQLException err) {
            Assert.fail("Failed to connect");
        }
    }
}
