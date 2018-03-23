package edu.mum.service.impl;

import java.util.Locale;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import edu.mum.service.EmailServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring4.SpringTemplateEngine;

import edu.mum.domain.Poll;

@Service("emailService")
public class EmailServiceImpl implements EmailServer {

    private static final String BASE_URL = "http://localhost:8088/";

    @Autowired
    private JavaMailSender mailSender;


    public void sendPollMail(String to[], Poll poll) {
        if(to.length == 0) return;

        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject("New poll: " + poll.getName());
        message.setText("Poll Movie \n\n" +
                "==============================================\n" +
                "New poll has created. Vote for the new poll: \n"  +
                poll.getName() + "\n\n\n" +
                "Visit to vote: " + BASE_URL + "polls/" + poll.getId()
        );
        mailSender.send(message);
    }


}
