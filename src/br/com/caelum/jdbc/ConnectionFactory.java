package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by jefferson on 26/09/15.
 */


//        public Connection getConnection() {
//            System.out.println("Conectando ao banco");
//            try {
//                System.out.println("Banco conectado");
//                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//                return DriverManager.getConnection (
//                        "jdbc:mysql://localhost:3306/caelum","root",""
//                );
//            }catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
//        }




    public class ConnectionFactory{

        static String status = "";

        public static String getStatus() {
            return status;
        }

        public static Connection getConnection(){

            Connection conn = null;

            try{

                /*
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                String url = "jdbc:mysql://computocell.no-ip.org:3306/caelum";
                String user ="jefferson";
                String pass ="100Nd";
               */

/*
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                String url = "jdbc:mysql://localhost:3306/caelum";
                String user ="root";
                String pass ="100Nd";
*/

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                String url = "jdbc:mysql://localhost:3306/caelum";
                String user ="root";
                String pass ="";

                conn = DriverManager.getConnection(url,user,pass);
                status = "Connection Opened";

            }catch(SQLException e){
                status = e.getMessage();
            }catch(ClassNotFoundException e) {
                status = e.getMessage();
            }catch(Exception e){
                status = e.getMessage();
            }

            return conn;
        }
    }

