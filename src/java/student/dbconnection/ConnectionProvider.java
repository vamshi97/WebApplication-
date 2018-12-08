/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student.dbconnection;

import com.sun.javafx.binding.Logging;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.CallableStatement;
import java.lang.NullPointerException;

public class ConnectionProvider {
       String a="connection created";

     Connection con;

     
     
      String driver = "org.postgresql.Driver";
                
      String url = "jdbc:postgresql://localhost:5432/postgres";
      //a database url of the form jdbc:subprotocol:subname
 public String a1[][];
     
      String user = "postgres";
                String password = "system";
public   String Cp(){    
try{
               
                
                Class.forName(driver);
                //IT WILL RETURN THE OBJECT ASSOCIATED WITH THE CLASS driver or class not found exception
                
                
                
                con = DriverManager.getConnection(url, user, password);
                //Attempts to establish a connection to the given database URL. 
                //The DriverManager attempts to select an appropriate driver from the set of registered JDBC drivers.
               // Returns  a connection to the URL
                 //if a database access error occurs-SQLException


                 
                 Statement st1 = null;
                  st1=con.createStatement();
                 //A Statement is an interface that represents a SQL statement
                 //A Connection object is needed to create a Statement object son con is used to get connection
                 String sql="SELECT * FROM iplog";

                
                                    ResultSet r1 = null;
                 r1=st1.executeQuery(sql);
                 //execute query is used for executing Statement 
                 //BY executing Statement objects they generate ResultSet objects,
                 //which is a table of data representing a database result set
                 // Returns one ResultSet object.
                 
                 int i;
                 int j;
                 while(r1.next()){
           
             r1.getString("ip_int");
                                     r1.getString("ipno");
                                    r1.getString("datetime");
                 r1.getString("seqno");
                  r1.getString("out_country");
          r1.getString("out_region");
              }

                 
                 

                 



}
catch(SQLException e)
        {
       e.printStackTrace();

        }

catch(ClassNotFoundException cnfe){
   System.out.println(cnfe);
}
catch (java.lang.NullPointerException exception)
{
// Catch NullPointerExceptions.
System.out.println(exception);
}

System.out.println("constructor intialized");
return a;
}

}
