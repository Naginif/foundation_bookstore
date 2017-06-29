package com.qa.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Orders {
	
	public Orders(int order_id, int book_id, String book_image, int quantity, String date, int customer_id) {
		super();
		this.order_id = order_id;
		this.book_id = book_id;
		this.book_image = book_image;
		this.quantity = quantity;
		this.date = date;
		this.customer_id = customer_id;
	}
	
	public String getBook_image() {
		return book_image;
	}

	public void setBook_image(String book_image) {
		this.book_image = book_image;
	}

	public Orders() {
		super();
	}
	@Id
	private int order_id;
	
	private String book_image;
	private int book_id;
	private int quantity;
	
	private String date;
	
	private int customer_id;
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "Orders [order_id=" + order_id + ", book_id=" + book_id + ", quantity=" + quantity + ", date=" + date
				+ ", customer_id=" + customer_id + "]";
	}
	

}
