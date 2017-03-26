package com.medical.model;

import java.util.Date;

public class Prescription {
	String app_id,medicine;
	Date next_date;
	public Prescription(){};
	public String getApp_id() {
		return app_id;
	}
	public void setApp_id(String app_id) {
		this.app_id = app_id;
	}
	public String getMedicine() {
		return medicine;
	}
	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}
	public Date getNext_date() {
		return next_date;
	}
	public void setNext_date(Date next_date) {
		this.next_date = next_date;
	}
}
