
package Dyno1;
import java.time.*;
import java.time.temporal.ChronoField; 
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import student.dbconnection.ConnectionProvider;
import UserBean.Bean;


public class Dyna {

         LocalDate localDate = LocalDate.now();  
   DayOfWeek dayOfWeek = DayOfWeek.from(localDate);  
                 int b=dayOfWeek.get(ChronoField.DAY_OF_WEEK);
                     
                 
                 
                 
                 
 
    
    
}


    

