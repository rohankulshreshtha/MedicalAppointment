package com.medical.model;
import java.util.Date;

public class Appointment extends Prescription {
Date date,st_time;
String Doc_id,pat_id,app_id;
public Appointment(){};
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public Date getSt_time() {
	return st_time;
}
public void setSt_time(Date st_time) {
	this.st_time = st_time;
}
public String getDoc_id() {
	return Doc_id;
}
public void setDoc_id(String doc_id) {
	Doc_id = doc_id;
}
public String getPat_id() {
	return pat_id;
}
public void setPat_id(String pat_id) {
	this.pat_id = pat_id;
}
public String getApp_id() {
	return app_id;
}
public void setApp_id(String app_id) {
	this.app_id = app_id;
}
}
