package gui;

import javax.swing.*;

import source.SQLConnection;

import java.sql.SQLException;
import java.util.ArrayList;

public class TemplateGUI {
    private String studentNumber = "";
    /**
     * Public constructor to create the gui
     */
    public TemplateGUI() {
        // Template implementation
        String stdNumber = JOptionPane.showInputDialog("Enter your student number:");
        this.studentNumber = stdNumber;
    }

    /*
     * This method queries data from SQL Database and returns the output
     * -- Use case ---
     * - We want to check all the courses that the student qualifies for
     * 
     * TODO:
     * - Add data to database 
     * - Query the real database, because here I have queried a dummy database
     * 
     * @param studentNumber : String
     * @return results: ArrayList<String>
     */
    public ArrayList<String> queryDB(String stdNum) throws SQLException {
        SQLConnection connect = new SQLConnection("jdbc:mysql://localhost:3306/school", "root", "rootawonke");
        connect.queryDatabase("select * from payments;");
        
        return connect.getResults();
    }

    /**
     * runs the GUI program
     * @param args : String[]
     */
    public static void main(String[] args) {
        TemplateGUI gui = new TemplateGUI();
        String stdNumber = gui.studentNumber;
        
        try {
            ArrayList<String> output = gui.queryDB(stdNumber);
            String presentation = "";

            presentation = presentation + "Courses you qualify for:\n";

            int count = 0;
            while (count < output.size()) {
                String item = output.get(count);

                presentation = presentation + String.format("Course %d: %s\n", (count + 1), item);

                count = count + 1;
            }

            JOptionPane.showMessageDialog(null, presentation);
        } catch(SQLException error) {
            System.err.println(error);
        }
    }
}
