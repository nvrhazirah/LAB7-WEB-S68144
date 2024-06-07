/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author zira
 */
import java.util.*;
import java.sql.*;

public class userProfileDao {
    
    public static Connection getConnection(){
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab7exercise", "root", "admin");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    
    public static int save(userProfile e) {
        int status = 0;
        try {
            Connection con = userProfileDao.getConnection();
            PreparedStatement ps = con.prepareStatement(
            "insert into exercise (username,icNo,firstName) values (?,?,?)");
            ps.setString(1, e.getUsername());
            ps.setString(2, e.getIcNo());
            ps.setString(3, e.getFirstName());
            
            status = ps.executeUpdate();
            
            con.close();
        } catch (Exception  ex) {
            ex.printStackTrace();
        }
        
        return status;
    }
}
    
    
    
    
    