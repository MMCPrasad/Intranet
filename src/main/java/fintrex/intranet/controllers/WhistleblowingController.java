/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.config.Mail;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/whistle")

public class WhistleblowingController {

    @PostMapping("/submitWhistle")
    @ResponseBody
    public String submitWhistle(@RequestBody Map<String, String> requestData) {
        String employeeName = requestData.get("employeeName");
        String department = requestData.get("department");
        String whistleDescription = requestData.get("whistleDescription");

        // Add code here to process the data and send emails
        boolean mailSent = Mail.sendMail("recipient@example.com", "Whistleblowing Report",
                "Employee Name: " + employeeName + "<br>Department: " + department + "<br><br>Description: " + whistleDescription);

        // Return a response based on the result of your processing
        if (mailSent) {
            return "Whistleblowing report submitted successfully!";
        } else {
            return "Failed to submit whistleblowing report. Please try again.";
        }
    }
}
