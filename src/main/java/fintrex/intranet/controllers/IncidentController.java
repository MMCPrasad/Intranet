/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.config.MailIncident;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/incident")

public class IncidentController {

    @PostMapping("/submitInc")
    @ResponseBody
    public String submitWhistle(@RequestBody Map<String, String> requestData) {
        String employeeName = requestData.get("employeeName");
        String department = requestData.get("department");
        String incDescription = requestData.get("incDescription");

        // Add code here to process the data and send emails
        boolean mailSent = MailIncident.sendMail("recipient@example.com", "Incident Report",
                "Employee Name: " + employeeName + "<br>Department: " + department + "<br><br>Description: " + incDescription);

        // Return a response based on the result of your processing
        if (mailSent) {
            return "Incident report submitted successfully!";
        } else {
            return "Failed to submit Incident report. Please try again.";
        }
    }
}
