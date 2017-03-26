package com.medical.DAO;
import java.util.ArrayList;
import java.util.List;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;

public class AJAXDao {
	public List<String> getLocation(String m){
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("doctor");
		BasicDBObject q = new BasicDBObject();
		q.put("loc",  java.util.regex.Pattern.compile(m));
		DBCursor cursor=table.find(q);
		List<String> list = new ArrayList<String>();
		while(cursor.hasNext()){
			BasicDBObject basicdbobject=(BasicDBObject)cursor.next();
			if(list.contains(basicdbobject.getString("loc")))
					{
				           continue;
					}
			else 
			list.add(basicdbobject.getString("loc"));
		}
		return list;
	}
	public List<String> getSpec(String m){
		DB db = DataConnect.getdb();
		DBCollection table = db.getCollection("doctor");
		BasicDBObject q = new BasicDBObject();
		q.put("spec",  java.util.regex.Pattern.compile(m));
		DBCursor cursor=table.find(q);
		List<String> list = new ArrayList<String>();
		while(cursor.hasNext()){
			BasicDBObject basicdbobject=(BasicDBObject)cursor.next();
			if(list.contains(basicdbobject.getString("spec")))
					{
				           continue;
					}
			else 
			list.add(basicdbobject.getString("spec"));
		}
		return list;
	}
}
