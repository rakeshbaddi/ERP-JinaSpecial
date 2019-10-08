/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jinaspecial;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Vaibhav
 */
public class dbConnection {
    Connection con;
    Statement st;
    
    public Statement dbConn(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jina","root","");
            st=con.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(dbConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(dbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return st;
        
    }
}