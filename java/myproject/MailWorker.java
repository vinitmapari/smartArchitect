/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

/**
 *
 * @author Admin
 */
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;
public class MailWorker 
{
   static String myEmail,myPassword;
	public static void sendHTMLMail(String recMail,String message,String subject)
	{
				
		String body=message;
		myEmail="vinitmapari@gmail.com";
		myPassword="mapari123456";
		String host="smtp.gmail.com";
		String port="465";
		String recAdd=recMail;
		Properties prop=new Properties();
		prop.put("mail.smtp.auth","true");
		prop.put("mail.smtp.socketFactory.port",port);
		prop.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		prop.put("mail.smtp.socketFactory.fallback","false");
		prop.put("mail.smtp.host",host);
		SecurityManager manager=System.getSecurityManager();
		try
		{
			Authenticator auth=new SMTPAuthenticator();
			System.out.println("authenticated");
			Session session=Session.getDefaultInstance(prop,auth);
			System.out.println("session aquired");
			MimeMessage msg=new MimeMessage(session);
			msg.setSubject(subject);
			msg.setText("this is massage body");
			msg.setContent(message,"text/html");
			msg.setRecipient(Message.RecipientType.TO,new InternetAddress(recAdd));
			System.out.println("message ready");
			Transport.send(msg);
			System.out.println("mail sent");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		}
			private  static class SMTPAuthenticator extends Authenticator
{
	public  PasswordAuthentication getPasswordAuthentication()
	{
		return new PasswordAuthentication(myEmail,myPassword);
	}
} 
}
