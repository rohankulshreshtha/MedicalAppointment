package com.medical.DAO;

import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import com.medical.model.Doctor;
import com.medical.model.Patient;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;

public class DataDao {
	public void savepatient(Patient pat) throws UnknownHostException{
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("patient");
		BasicDBObject basicdbobject=new BasicDBObject("id",pat.getId()).
													 append("phone_no", pat.getPhone_no()).
				                                     append("name", pat.getName()).
				                                     append("email_id", pat.getEmail_id()).
				                                     append("password", pat.getPassword()).
				                                     append("address", pat.getAddress()).
				                                     append("age", pat.getAge()).
				                                     append("gender", pat.getGender());
														
		table.insert(basicdbobject);
	}
	public void savedoctor(Doctor doc) throws UnknownHostException{
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("doctor");
		BasicDBObject basicdbobject=new BasicDBObject("id",doc.getId()).
												append("name",doc.getName()).
												append("email_id",doc.getEmail_id()).
												append("password",doc.getPassword()).
												append("spec", doc.getSpec()).
		                                        append("phone_no",doc.getPhone_no()).
		                                        append("age", doc.getAge()).
		                                        append("description", doc.getDescription()).
		                                        append("hosp_name", doc.getHosp_name()).
		                                        append("exp", doc.getExp()).append("loc", doc.getLocation());
		table.insert(basicdbobject);
	}
	public Doctor getdoc(String id) throws UnknownHostException{
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("doctor");
		BasicDBObject  query=new BasicDBObject("id",id);
		DBCursor cursor=table.find(query);
		if(cursor.hasNext()){
			BasicDBObject basicdbobject=(BasicDBObject)cursor.next();
			Doctor doc = new Doctor();
			doc.setId(basicdbobject.getString("id"));
			doc.setName(basicdbobject.getString("name"));
			doc.setEmail_id(basicdbobject.getString("email_id"));
			doc.setPhone_no(basicdbobject.getString("phone_no"));
			doc.setName(basicdbobject.getString("name"));
			doc.setPassword(basicdbobject.getString("password"));
			doc.setAge(basicdbobject.getInt("age"));
			doc.setDescription(basicdbobject.getString("description"));
			doc.setHosp_name(basicdbobject.getString("hosp_name"));
			doc.setExp(basicdbobject.getInt("exp"));
			doc.setLocation(basicdbobject.getString("loc"));
			doc.setSpec(basicdbobject.getString("spec"));
			return doc;
	}
		else return null;
}
	public Patient getpat(String id) throws UnknownHostException{
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("patient");
		BasicDBObject  query=new BasicDBObject("id",id);
		DBCursor cursor=table.find(query);
		if(cursor.hasNext()){
			BasicDBObject basicdbobject=(BasicDBObject)cursor.next();
			Patient pat = new Patient();
			pat.setId(basicdbobject.getString("id"));
			pat.setName(basicdbobject.getString("name"));
			pat.setEmail_id(basicdbobject.getString("email_id"));
			pat.setPhone_no(basicdbobject.getString("phone_no"));
			pat.setPassword(basicdbobject.getString("password"));
			pat.setAge(basicdbobject.getInt("age"));
			return pat;
	}
		else return null;
}
	public List<Doctor> getdoctors(String location,String spec)
	{
		List<Doctor>dd=new ArrayList<Doctor>();
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("doctor");
		BasicDBObject  query=new BasicDBObject("spec",spec).append("loc", location);
		DBCursor cursor=table.find(query);
		while(cursor.hasNext())
		{
			BasicDBObject basicdbobject=(BasicDBObject)cursor.next();
			Doctor doc=new Doctor();
			doc.setId(basicdbobject.getString("id"));
			doc.setName(basicdbobject.getString("name"));
			doc.setEmail_id(basicdbobject.getString("email_id"));
			doc.setPhone_no(basicdbobject.getString("phone_no"));
			doc.setName(basicdbobject.getString("name"));
			doc.setPassword(basicdbobject.getString("password"));
			doc.setAge(basicdbobject.getInt("age"));
			doc.setDescription(basicdbobject.getString("description"));
			doc.setHosp_name(basicdbobject.getString("hosp_name"));
			doc.setExp(basicdbobject.getInt("exp"));
			doc.setLocation(basicdbobject.getString("loc"));
			dd.add(doc);
		}
		return dd;
	}
	public List<Doctor> getdoctors(String name)
	{
		List<Doctor>dd=new ArrayList<Doctor>();
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("doctor");
		BasicDBObject  query=new BasicDBObject("name",name);
		DBCursor cursor=table.find(query);
		if(cursor.hasNext())
		{
			BasicDBObject basicdbobject=(BasicDBObject)cursor.next();
			Doctor doc=new Doctor();
			doc.setId(basicdbobject.getString("id"));
			doc.setName(basicdbobject.getString("name"));
			doc.setEmail_id(basicdbobject.getString("email_id"));
			doc.setPhone_no(basicdbobject.getString("phone_no"));
			doc.setName(basicdbobject.getString("name"));
			doc.setPassword(basicdbobject.getString("password"));
			doc.setAge(basicdbobject.getInt("age"));
			doc.setDescription(basicdbobject.getString("description"));
			doc.setHosp_name(basicdbobject.getString("hosp_name"));
			doc.setExp(basicdbobject.getInt("exp"));
			doc.setLocation(basicdbobject.getString("loc"));
			dd.add(doc);
		}
		return dd;
	}
}
