package com.qa.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Payment {
	private String cardName;
	private String cardNumber;
	private String CCV;
	private String expiration_month;
	private String expiration_year;
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getCCV() {
		return CCV;
	}
	public void setCCV(String cCV) {
		CCV = cCV;
	}
	public String getExpiration_month() {
		return expiration_month;
	}
	public void setExpiration_month(String expiration_month) {
		this.expiration_month = expiration_month;
	}
	public String getExpiration_year() {
		return expiration_year;
	}
	public void setExpiration_year(String expiration_year) {
		this.expiration_year = expiration_year;
	}
	@Override
	public String toString() {
		return "Payment [cardName=" + cardName + ", cardNumber=" + cardNumber + ", CCV=" + CCV + ", expiration_month="
				+ expiration_month + ", expiration_year=" + expiration_year + "]";
	}
	
	
}
