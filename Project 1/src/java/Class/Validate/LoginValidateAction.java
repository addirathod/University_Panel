/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Class.Validate;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.BindingProvider;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.jboss.weld.servlet.SessionHolder;

/**
 *
 * @author MAHE
 */
public class LoginValidateAction extends ActionSupport implements ServletRequestAware , SessionAware  {
    private String user,pass; 
    HttpServletRequest request;
    SessionMap<String,Object> session;

    public SessionMap<String, Object> getSession() {
        return session;
    }

    public void setSession(SessionMap<String, Object> session) {
        this.session = session;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    public String execute()
    {
        String val="";
        LoginModel lm=new LoginModel();
        lm.setUser(getUser());
        lm.setPass(getPass());
        LoginService ls=new LoginService();
        val=ls.login(lm);
        if(val.equals("inactive"))
            request.setAttribute("error","*Validation pending.Please contact administrator");
        else if(val.equals("invalid"))
            request.setAttribute("error","*Username and Password dont match.");
        else{
            
            
            request.setAttribute("type",val);
            request.setAttribute("id",getUser());
            
            
           
        }
       return val;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
       request=hsr;         
    }

    @Override
    public void setSession(Map<String, Object> map) {
      session=(SessionMap < String, Object >)map; 
    }
    
    
}
