/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.config;

import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.Properties;

/**
 *
 * @author L580
 */
public class Mail {

    public static boolean sendMail(String to, String subject, String msg) {
        final String username = "system.notifications@fintrexfinance.com";
        final String password = "jgypvzvthnfrmwtb";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");
        props.put("mail.smtp.host", "outlook.office365.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new jakarta.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("system.notifications@fintrexfinance.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("chirantha@fintrexfinance.com"));
            //message.setRecipients(Message.RecipientType.CC, InternetAddress.parse(""));
            //message.setRecipients(Message.RecipientType.BCC, InternetAddress.parse(""));
            message.setSubject(subject);
            message.setContent(msg, "text/html; charset=utf-8");
            Transport.send(message);

            System.out.println("mail sent");
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}
