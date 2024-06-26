package source;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * SQLConnection
 * - This class enables Java to Connect to MySQL Database
 */
public class SQLConnection {
    private String url = "";
    private String user = "";
    private String password = "";

    private ArrayList<String> results = new ArrayList<>();

    /**
     * SQLConnection constructor
     * - This initializes the SQLConnection
     * @param url : String
     * @param user : String
     * @param password : String
     */
    public SQLConnection(String url, String user, String password) {
        this.url = url;
        this.user = user;
        this.password = password;
    }

    /**
     * Database Query
     * - Connects to the database
     * - Create a statement
     * - Executes the query and updates the results
     * @param query : String
     * @throws SQLException
     */
    public void queryDatabase(String query) throws SQLException {

        Connection connection = DriverManager.getConnection(this.url, this.user, this.password);
        Statement statement = connection.prepareStatement(query);
        ResultSet results = statement.executeQuery(query);

        while(results.next()) {
            this.results.add(results.getString(2));
        }

        connection.close();
    }

    /**
     * Results
     * - This method returns the results obtained from the database
     * @return : results
     */
    public ArrayList<String> getResults() {
        return results;
    }
}
