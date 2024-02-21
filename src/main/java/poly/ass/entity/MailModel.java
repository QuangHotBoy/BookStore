package poly.ass.entity;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MailModel {

	String from;
	String to;
	String[] cc;
	String[] bcc;
	String subject;
	String body;
	String[] attachments;

	public MailModel(String to, String subject, String body) {
		this.from = "BookStone <minhtgpc04286@fpt.edu.vn>";
		this.to = to;
		this.subject = subject;
		this.body = body;
	}
}
