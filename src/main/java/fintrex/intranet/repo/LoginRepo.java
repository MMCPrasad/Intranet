/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Ruvindu
 */
@Repository
public class LoginRepo {

    //load customer to the customer details page from customer database
    public String loginDetails(Connection con, String user_loginID, String password, HttpSession session) {

        String isSuccess;
        try (con) {

            String sql = "select userEmpNo,userName,ut.userType,user_id ,u.dashboard, u.userBranch, u.userDepartment, u.user_loginID, u.image from user u join usertype ut on ut.id=u.userType   where user_loginID=? AND password=? AND u.status='active'";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, user_loginID);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                session.setAttribute("user", rs.getString(2));
                session.setAttribute("uid", rs.getString(4));
                session.setAttribute("utype", rs.getString(3));
                session.setAttribute("empID", rs.getString(1));
                session.setAttribute("dashboard", rs.getString(5));
                session.setAttribute("branch", rs.getString(6));
                session.setAttribute("department", rs.getString(7));
                session.setAttribute("userLoginID", rs.getString(8));
                session.setAttribute("image", rs.getString(9));

                String utype = (String) session.getAttribute("utype");
                String uID = (String) session.getAttribute("uid");
                String uName = (String) session.getAttribute("user");
                String empID = (String) session.getAttribute("empID");
                String dashboard = (String) session.getAttribute("dashboard");
                String userLoginID = (String) session.getAttribute("userLoginID");
                JSONObject sys = new JSONObject();
                sys.put("status", "ok");
                sys.put("uID", uID);
                sys.put("uName", uName);
                sys.put("uType", utype);
                sys.put("empID", empID);
                sys.put("userLoginID", userLoginID);

                System.out.println(sys.toString());

// this query to track the userlog when a user does any activites
//this is for track the user login
                String path = "login";

                String loginUserLogSQL = "INSERT INTO userlog(`path`, `officerID`, `data`, `time`) VALUES (?, ?, CURDATE(), CURTIME())";

                PreparedStatement pstUserlog = con.prepareStatement(loginUserLogSQL);
                pstUserlog.setString(1, path);
                pstUserlog.setString(2, empID);

                pstUserlog.executeUpdate();

                String activity = "Login to the System";
                String details = uName + "(" + empID + ") Logged to the System";

// Prepare and execute the query to insert data to complaint logs activity
                PreparedStatement userLogActivityStatement = con.prepareStatement("INSERT INTO userlog_activity (`activity`, `officer_id`, `officerName`, `details`, `date`, `time`, `dateTime`) VALUES (?, ?, ?, ?, CURDATE(), CURTIME(), NOW())");
                userLogActivityStatement.setString(1, activity);
                userLogActivityStatement.setString(2, empID);
                userLogActivityStatement.setString(3, uName);
                userLogActivityStatement.setString(4, details);

                userLogActivityStatement.executeUpdate();

                return sys.toString();

            } else {

                return "erorr";

            }

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }
}
