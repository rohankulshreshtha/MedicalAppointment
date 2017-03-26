package com.medical.model;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Schedule {
//Date date,mor_st_time,mor_end_time,eve_st_time,eve_end_time;
	Date date;
	List<Date> mor_list = new ArrayList<Date>();
	List<Date> eve_list = new ArrayList<Date>();
	String doc_id;
//Date mor_arr[] = new Date[mor_slot],
//eve_arr[] = new Date[eve_slot];

public Schedule(){};

public Schedule(Date mor_st_time,Date mor_end_time,Date eve_st_time,Date eve_end_time,Date date,String doc_id) {
	this.date=date;
	this.doc_id=doc_id;
	long mor_duration = (mor_end_time.getTime()-mor_st_time.getTime())/3600,
			 eve_duration = (eve_end_time.getTime()-eve_st_time.getTime())/3600;
	int mor_slot = (int)mor_duration*4/1000,
			eve_slot = (int)eve_duration*4/1000;
	//this.mor_st_time=mor_st_time;
	//this.mor_end_time=mor_end_time;
	//this.eve_st_time=eve_st_time;
	//this.eve_end_time=eve_end_time;
	for(int i=0;i<mor_slot;i++)
	{
		mor_list.add(new Date(mor_st_time.getTime()+(15*1000*60*i)));
	}
	for(int i=1;i<eve_slot+1;i++)
	{
		eve_list.add(new Date(eve_st_time.getTime()+(15*1000*60*i)));
	}
}

public List<Date> getMor_list() {
	return mor_list;
}

public void setMor_list(List<Date> mor_list) {
	this.mor_list = mor_list;
}

public List<Date> getEve_list() {
	return eve_list;
}

public void setEve_list(List<Date> eve_list) {
	this.eve_list = eve_list;
}

public String getDoc_id() {
	return doc_id;
}

public void setDoc_id(String doc_id) {
	this.doc_id = doc_id;
}
public Date getDate() {
	return date;
}

public void setDate(Date date) {
	this.date = date;
}
}
