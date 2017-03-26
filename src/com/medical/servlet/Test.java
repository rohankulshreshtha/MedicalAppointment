package com.medical.servlet;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.net.UnknownHostException;
import java.util.Date;

import javax.swing.text.html.HTMLDocument.Iterator;
import javax.xml.stream.events.StartDocument;

import org.bson.BSONObject;

import com.medical.DAO.AJAXDao;
import com.medical.DAO.AppDao;
import com.medical.DAO.ScheduleDAO;
import com.medical.model.Appointment;
import com.medical.model.Doctor;
import com.medical.model.Prescription;
import com.medical.model.Schedule;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

public class Test {
	public static void main(String args[]) throws UnknownHostException, ParseException{
		
		try { 		
			MongoClientURI uri  = new MongoClientURI("mongodb://admin:admin@ds063946.mlab.com:63946/ma");
        @SuppressWarnings("resource")
		MongoClient client = new MongoClient(uri);
        @SuppressWarnings("deprecation")
		DB db = client.getDB(uri.getDatabase());
        //DBCollection a=db.getCollection("doctor");
        //DBCollection a=db.getCollection("patient");
        //DBCollection a=db.getCollection("schedule");
        DBCollection a=db.getCollection("schedule");
        //BasicDBObject allQuery = new BasicDBObject();
		//BasicDBObject fields = new BasicDBObject();
		//fields.put("spec", "pediatrician");
		//fields.put("loc", "jaipur");

		//DBCursor cursor1 = a.find(allQuery, fields);
		BasicDBObject b = new BasicDBObject();
		DBCursor cursor1 = a.find(b);
		while(cursor1.hasNext())
		{
			BasicDBObject basicdbobject=(BasicDBObject)cursor1.next();
			//System.out.println(basicdbobject.getString("doc_id"));
			System.out.println(basicdbobject.getString("Date"));
		}
              }  
         catch (Exception ex) {
                              System.out.println("Database.getConnection() Error -->"
                              + ex.getMessage());
                              }
	
	ScheduleDAO sd = new ScheduleDAO(); 
		//System.out.println(sd.getList("laxman", "10/10/2016"));
	
	
		//Date d1 = new Date(2016, 9, 23, 8, 0, 0);
		//Date d2 = new Date(2016, 9, 23, 11, 0, 0);
		//Date d3 = new Date(2016, 9, 23, 17, 0, 0);
		//Date d4 = new Date(2016, 9, 28, 8, 0, 0);
		//Date d5 = new Date(2016, 9, 23);
		DateFormat d1 = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		DateFormat d5 = new SimpleDateFormat("MM/dd/yyyy");
		 try {
				Date startDate1=d1.parse("11/19/2016 08:00:00");
				Date startDate2=d1.parse("11/19/2016 11:00:00");
				Date startDate3=d1.parse("11/19/2016 16:00:00");
				Date startDate4=d1.parse("11/19/2016 19:00:00");
				Date startDate5=d5.parse("11/19/2016");
				Schedule s =new Schedule(startDate1,startDate2,startDate3,startDate4,startDate5,"eeshan");
					ScheduleDAO sd1= new ScheduleDAO();
					sd1.saveschedule(s);
					//sd.deleteTime("laxman",d1.parse("10/10/2016 09:00:00") , startDate5);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	DateFormat df = new SimpleDateFormat("MM/dd/yyyy"); 
    try {
		Date startDate=df.parse("10/23/2016");
		System.out.println(startDate);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		//ScheduleDAO s = new ScheduleDAO();
		//Appointment app = new Appointment();
		//app.setDoc_id(doc_id);
		
		//AppDao a =new AppDao();
		
		//Appointment app=new Appointment();
		
		//app.setPat_id("manishjain");
		//app.setDoc_id("Gajendra");
		//app.setDate(d4);
		//a.saveappointment(app);
		AJAXDao a =new AJAXDao();
		System.out.println(a.getLocation("jai").size());
	}
}
		
		//p.setApp_id("harsh123vedant123Mon Oct 23 00:00:00 IST 3916");
		//p.setMedicine("dcoldtotal");
		//p.setNext_date(d4);
		//a.saveprescription(p);
		//a.saveappointment(app);
	//	Schedule s =new Schedule(d1,d2,d3,d4,d5,"tariq123");
	//	ScheduleDAO sd= new ScheduleDAO();
		//sd.saveschedule(s);
	
		
	  



	


