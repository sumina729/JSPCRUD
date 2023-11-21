package com.example.jspcrud.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MariaDB {
    public static Connection getConnection(){
       Connection conn = null;

       try {
           Class.forName("org.mariadb.jdbc.Driver");
           try {
               conn = DriverManager.getConnection("jdbc:mariadb://walab.handong.edu:3306/p233_22200533", "p233_22200533", "le2Aik");
           } catch (SQLException e) {
               System.out.println("DB연결 오류");
               throw new RuntimeException(e);
           }
       } catch (ClassNotFoundException e) {
           System.out.println("드라이버 로드 오류");
           throw new RuntimeException(e);
       }



       return conn;
   }

   /*
   public static void main(String arg[]){
       Connection conn = MariaDB.getConnection();
       if (conn == null){
           System.out.println("DB연결오류");
       }
       else{
           System.out.println("DB연결완료");
       }
   }

    */
}
