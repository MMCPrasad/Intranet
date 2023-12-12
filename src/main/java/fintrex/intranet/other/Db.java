/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.other;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Kasunr
 */
public class Db {

    static String url = "jdbc:mysql://localhost:3306/ccm_portal";
    static String user = "root";
    static String pass = "1234";
//    static String url = "jdbc:mysql://192.168.40.7:3306/ccm_portal";
//    static String user = "root";
//    static String pass = "Test@-123";

    static Connection con;
//    

    public static Connection getConnection() throws Exception {

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, user, pass);
        return con;
    }
}
