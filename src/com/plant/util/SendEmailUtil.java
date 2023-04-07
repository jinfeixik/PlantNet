package com.plant.util;


import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.*;

import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

/**
 * 发送邮件工具类
 * @Author:
 * @Date：
 */
//@Component 将工具类注入spring容器中
@Component
public class SendEmailUtil {

     /*
      *发送邮件
      * @param toEmail 目的地
      * @param code 唯一激活码
      * @return
      */
    public int send_email(String toEmail,String code) throws IOException, AddressException, MessagingException{

        String to = toEmail;
        String subject = "花草网";
        String content = "<html><head></head><body>您的验证码为：<a>"+code+"</a>为了保证您的帐户安全，请勿向任何人提供此验证码,若不是本人操作，请忽略本邮件</body></html>";

        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.qq.com");
        properties.put("mail.smtp.port", "25");
        properties.put("mail.smtp.auth", "true");

        //发送者的邮箱和授权码
        Authenticator authenticator = new Email_Authenticator("2606961811@qq.com", "wtnwrpdshrepeaba");
        Session sendMailSession = javax.mail.Session.getDefaultInstance(properties, authenticator);
        MimeMessage mailMessage = new MimeMessage(sendMailSession);
        //邮箱的发送者
        try {
            mailMessage.setFrom(new InternetAddress("2606961811@qq.com"));
        } catch (MessagingException e) {
            e.printStackTrace();
        }

        //邮箱接收
        // Message.RecipientType.TO属性表示接收者的类型为TO
        mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        //发送邮件的标题
        mailMessage.setSubject(subject, "UTF-8");
        //发送邮件的日期
        mailMessage.setSentDate(new Date());

        //MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象
        Multipart mainPart = new MimeMultipart();

        //创建一个包含HTML内容的MimeBodyPart
        BodyPart html = new MimeBodyPart();
        //设置邮件的内容的格式和字节码
        html.setContent(content.trim(), "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        mailMessage.setContent(mainPart);
        Transport.send(mailMessage);
        return 1;
    }
}