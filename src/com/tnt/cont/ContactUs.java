package com.tnt.cont;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class ContactUs {
	public static void main(String[] args) {
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		final String username = "dineshonjava";
		final String password = "******";// Change accordingly
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("dineshonjava@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("admin@dineshonjava.com"));
			message.setSubject("Welcome Mail Tutorial!!!");
			message.setText("Dear User," + "nn This mail tutorial really nice, please try it!!!");

			Transport.send(message);

			System.out.println("Mail sent successfully!!!");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}