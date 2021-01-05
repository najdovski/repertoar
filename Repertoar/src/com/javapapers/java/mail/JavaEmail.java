package com.javapapers.java.mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class JavaEmail{
	
	Properties emailProperties;
	Session sesija;
	MimeMessage poraka;

	String emailHost = "smtp.gmail.com";
	String emailPort = "587";
	String isprakjac = "filmskirepertoar@gmail.com";
	String lozinka = "Filmski987";
	String[] primac = { "filmskirepertoar@gmail.com" };

	public void setMailServerProperties() {
		emailProperties = System.getProperties();
		emailProperties.put("mail.smtp.port", emailPort);
		emailProperties.put("mail.smtp.auth", "true");
		emailProperties.put("mail.smtp.starttls.enable", "true");
	}

	public void kreiranjePoraka(String naslov, String sodrzina) throws AddressException, MessagingException {
		sesija = Session.getDefaultInstance(emailProperties, null);
		poraka = new MimeMessage(sesija);
		for (int i = 0; i < primac.length; i++) {
			poraka.addRecipient(Message.RecipientType.TO,
					new InternetAddress(primac[i]));
		}
		poraka.setSubject(naslov);
		poraka.setContent(sodrzina, "text/html; charset=UTF-8");
		//emailMessage.setText(emailBody);

	}

	public void sendEmail() throws AddressException, MessagingException {
		Transport transport = sesija.getTransport("smtp");
		transport.connect(emailHost, isprakjac, lozinka);
		transport.sendMessage(poraka, poraka.getAllRecipients());
		transport.close();
	}
}