
package Class.Validate;

import java.sql.Connection;
import java.sql.DriverManager;


public class DbConnection {
    public static Connection dbcon() {
                  Connection con=null;
  		try{
  			 Class.forName("com.mysql.jdbc.Driver");
  			 
  			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","password");
  			 
                         
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
              return con;
}
    
}
