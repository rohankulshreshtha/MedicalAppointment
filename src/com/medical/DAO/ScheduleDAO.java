package com.medical.DAO;

import java.net.UnknownHostException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.medical.model.Schedule;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;

public class ScheduleDAO {
	public void saveschedule(Schedule schedule) throws UnknownHostException{
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("schedule");
		BasicDBList list = new BasicDBList();
		list.addAll(schedule.getMor_list());
		list.addAll(schedule.getEve_list());
		
		BasicDBObject basicdbobject=new BasicDBObject("doc_id",schedule.getDoc_id()).
													 append("Date",schedule.getDate() ).
				                                     append("list", list);                 
		table.insert(basicdbobject);
}
	public List<Schedule> getschedule(String doc_id) throws UnknownHostException{
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("schedule");
		List<Schedule> listOfschedules = new ArrayList<Schedule>();
		BasicDBObject  query=new BasicDBObject("doc_id",doc_id);
		DBCursor cursor=table.find(query);
		while(cursor.hasNext()){
			BasicDBObject basicdbobject=(BasicDBObject)cursor.next();
			Schedule schedule = new Schedule();
			schedule.setDoc_id(basicdbobject.getString("doc_id"));
			schedule.setDate(basicdbobject.getDate("Date"));
			BasicDBList list = (BasicDBList) basicdbobject.get("mor_list");
			BasicDBList list1 = (BasicDBList) basicdbobject.get("eve_list");
			List<Date> res = new ArrayList<Date>();
			for(Object el: list) {
			     res.add((Date) el);
			}
			schedule.setMor_list(res);
			List<Date> res1 = new ArrayList<Date>();
			for(Object el1: list1) {
			     res1.add((Date) el1);
			}
			schedule.setMor_list(res);
			schedule.setEve_list(res1);
			listOfschedules.add(schedule);
		}
		return listOfschedules;
	}
	public List<String> getList(String doc_id,String date) throws UnknownHostException,ParseException{
	    DateFormat df = new SimpleDateFormat("MM/dd/yyyy"); 
	    Date startDate=df.parse(date); 
	    DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("schedule");
		List<String> list = new ArrayList<String>();
		List<String> list1 = new ArrayList<String>();
		BasicDBObject  query=new BasicDBObject("doc_id",doc_id).append("Date", startDate);
		DBCursor cursor=table.find(query);
		while(cursor.hasNext()){
			BasicDBObject basicdbobject=(BasicDBObject)cursor.next();
			BasicDBList dblist = (BasicDBList) basicdbobject.get("list");
			SimpleDateFormat localDateFormat = new SimpleDateFormat("HH:mm:ss");
			for(Object el: dblist) {			     
			        String time = localDateFormat.format((Date) el);        
			        list.add(time);
			}
		}
		list1.add("08:00:00");list1.add("08:15:00");list1.add("08:30:00");list1.add("08:45:00");list1.add("09:00:00");
		list1.add("09:15:00");list1.add("09:30:00");list1.add("09:45:00");list1.add("10:00:00");list1.add("17:00:00");
		list1.add("17:15:00");list1.add("17:30:00");list1.add("17:45:00");list1.add("18:00:00");list1.add("19:00:00");list1.add("20:00:00");
		return list1;
	}
	public boolean deleteTime(String doc_id,Date time,Date date){
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("schedule");
		BasicDBObject  query=new BasicDBObject("doc_id",doc_id).append("Date", date);
		DBCursor cursor=table.find(query);
		while(cursor.hasNext()){
			BasicDBObject basicdbobject=(BasicDBObject)cursor.next();
			BasicDBList dblist = (BasicDBList) basicdbobject.get("list");		
			dblist.remove(time);
			BasicDBObject newDocument = new BasicDBObject();
			newDocument.append("$set", new BasicDBObject().append("list", dblist));
			table.update(query, newDocument);
	}
	return true;
}
	public boolean saveTime(String doc_id,Date time,Date date){
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("schedule");
		BasicDBObject  query=new BasicDBObject("doc_id",doc_id).append("Date", date);
		DBCursor cursor=table.find(query);
		while(cursor.hasNext()){
			BasicDBObject basicdbobject=(BasicDBObject)cursor.next();
			BasicDBList dblist = (BasicDBList) basicdbobject.get("list");		
			dblist.add(time);
			BasicDBObject newDocument = new BasicDBObject();
			newDocument.append("$set", new BasicDBObject().append("list", dblist));
			table.update(query, newDocument);
	}
	return true;
}
}