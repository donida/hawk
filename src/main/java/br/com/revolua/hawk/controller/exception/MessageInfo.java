package br.com.revolua.hawk.controller.exception;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.context.MessageSource;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;

public class MessageInfo implements Serializable {

	private static final long serialVersionUID = -8395170117492929620L;

	public enum MESSAGE_TYPE {
		INFO, WARNING, ERROR, SUCCESS
	}
	
	private MESSAGE_TYPE type;
	private String title;
	private String mainMessage;
	private List<String> messages;
	
	public static MessageInfo getErrorInfo(BeanValidationException ex, MessageSource messageSource, Locale locale) {
		MessageInfo messageInfo = new MessageInfo();
		messageInfo.setType(MESSAGE_TYPE.ERROR);
		messageInfo.setTitle(messageSource.getMessage("validation.error.title", null, locale));
		messageInfo.setMainMessage(messageSource.getMessage("validation.error.message", null, locale));
		List<ObjectError> allErrors = ex.getResult().getAllErrors();
		List<String> messages = new ArrayList<String>();
		for (ObjectError objectError : allErrors) {
			if (objectError instanceof FieldError) {
				FieldError fildError = (FieldError) objectError; 
				StringBuilder message = new StringBuilder();
				message.append(fildError.getField());
				message.append(": ");
				message.append(objectError.getDefaultMessage());
				messages.add(message.toString());
			} else {
				//TODO tratar...
				throw new RuntimeException("MessageInfo - converter not found for ObjectError", ex);
			}
		}
		messageInfo.setMessages(messages);
		return messageInfo;
	}

	public static MessageInfo getDefaultErrorMassege(MessageSource messageSource, Locale locale) {
		MessageInfo messageInfo = new MessageInfo();
		messageInfo.setType(MESSAGE_TYPE.ERROR);
		messageInfo.setTitle(messageSource.getMessage(messageSource.getMessage("default.error.title", null, locale), null, null));
		messageInfo.setMainMessage(messageSource.getMessage("default.error.message", null, locale));
		return messageInfo;
	}
	
	public MESSAGE_TYPE getType() {
		return type;
	}

	public void setType(MESSAGE_TYPE type) {
		this.type = type;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMainMessage() {
		return mainMessage;
	}

	public void setMainMessage(String mainMessage) {
		this.mainMessage = mainMessage;
	}

	public List<String> getMessages() {
		return messages;
	}

	public void setMessages(List<String> messages) {
		this.messages = messages;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((mainMessage == null) ? 0 : mainMessage.hashCode());
		result = prime * result
				+ ((messages == null) ? 0 : messages.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MessageInfo other = (MessageInfo) obj;
		if (mainMessage == null) {
			if (other.mainMessage != null)
				return false;
		} else if (!mainMessage.equals(other.mainMessage))
			return false;
		if (messages == null) {
			if (other.messages != null)
				return false;
		} else if (!messages.equals(other.messages))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (type != other.type)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ErrorInfo [type=" + type + ", title=" + title
				+ ", mainMessage=" + mainMessage + ", messages=" + messages
				+ "]";
	}
	
}
