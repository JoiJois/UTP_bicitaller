
package bicitaller.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion {
    Connection con;
    String url="jdbc:mysql://localhost:3306/bdbicitaller2";
    String user="root";
    String pass="";
    
    public Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,user,pass);
        } catch (Exception e){
        }
        return con;
    }
    
}
