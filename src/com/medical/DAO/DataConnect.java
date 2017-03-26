package com.medical.DAO;

import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
 
public class DataConnect {
	
	 private static DB db;  
	 static{
		 try { 		
     		// MongoClient mongo = new MongoClient("localhost", 27017);
     		 MongoClientURI uri  = new MongoClientURI("your database url");
     	      
     			MongoClient client = new MongoClient(uri);
     			 db = client.getDB(uri.getDatabase());  
                }  
           catch (Exception ex) {
                                System.out.println("Database.getConnection() Error -->"
                                + ex.getMessage());
                                }
	 }
     
     //JDBCSingleton prevents the instantiation from any other class.  
       private  DataConnect() {}
		
         public static DB getdb() {    
          return db;
}
}

