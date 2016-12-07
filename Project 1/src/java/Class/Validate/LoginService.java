package Class.Validate;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;

public class LoginService /*implements ServletRequestAware*/ {
   /* HttpServletRequest request;

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }*/
    public String login(LoginModel lm)
    {
        
        String val="";
        String user=lm.getUser();
        String pass=lm.getPass();
        try{
        
        Connection con=DbConnection.dbcon();
        PreparedStatement pst = con.prepareStatement("Select * from login_master where id=? AND password=?");
             pst.setString(1,user);
             pst.setString(2,pass);
             ResultSet rs=pst.executeQuery();
             
             if(rs.next())
             {
                 if(rs.getString(5).equalsIgnoreCase("Inactive"))
                 {
                     //request.setAttribute("error","Validation pending.Please contact administrator");
                     val="inactive";
                 }
                 else
                 {
                     val=rs.getString(4);
                             
                 }
                     
             }
             else
             {
               //request.setAttribute("error","User-name and password dont match");
                     val="invalid";  
             }
    
        
        
           }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return val;
        }

   /*  @Override
   public void setServletRequest(HttpServletRequest hsr) {
       request=hsr;        
    }*/
}
