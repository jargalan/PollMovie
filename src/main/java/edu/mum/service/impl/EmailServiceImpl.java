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

    private static final String BASE_URL = "http://localhost:8080/";

    @Autowired
    private JavaMailSender mailSender;

//    @Autowired
//    private SpringTemplateEngine templateEngine;


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

    /*
     * Send HTML mail
     */
//    public void sendOrderReceivedMail(
//            final String recipientName, final String recipientEmail, Poll order,String documentName,final Locale locale)
//            throws MessagingException {
//
//        // Prepare the Thymeleaf evaluation context
//        final Context thymeContext = new Context(locale);
//        thymeContext.setVariable("name", recipientName);
//        thymeContext.setVariable("order", order);
//
//        // Prepare message using a Spring helper
//        final MimeMessage mimeMessage = this.mailSender.createMimeMessage();
//        final MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true,"UTF-8");
//        message.setSubject("Order Details");
//
//        // could have CC, BCC, will also take an array of Strings
//        message.setTo(recipientEmail);
//
//        // Create the HTML body using Thymeleaf..template is orderReceivedMail.html
//        final String htmlContent = this.templateEngine.process("orderReceivedMail", thymeContext);
//        message.setText(htmlContent, true /* isHtml */);
//
//        // Add imtheguy.jpg
//        message.addInline("imtheguy", new ClassPathResource(IM_THE_GUY), JPG_MIME);
//
//
//        // Add attachment
//        String documentLocation = "templates/images/" + documentName ;
//        message.addAttachment(documentName, new ClassPathResource(documentLocation));
//
//        // Alternative for attaching
////        File file = new File(documentLocation);
////        message.addAttachment(documentName, file);
//
//        // Send email
//        this.mailSender.send(mimeMessage);
//
//    }


}
