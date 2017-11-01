package mars.email.model;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class MailServiceImple implements MailService {
	
	private JavaMailSender javaMailSender;
	
	
	public MailServiceImple(JavaMailSender javaMailSender) {
		super();
		this.javaMailSender = javaMailSender;
	}

	public boolean send(String subject, String text, String from, String to) {
		
		MimeMessage message = javaMailSender.createMimeMessage();
		
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setSubject(subject);
			helper.setText(text);
			helper.setFrom(from);
			helper.setTo(to);
			
			javaMailSender.send(message);
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

}
