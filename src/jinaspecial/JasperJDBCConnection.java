package jinaspecial;

import java.sql.Connection;
import java.io.FileNotFoundException;
import java.sql.DriverManager;
import java.util.HashMap;
import javax.swing.JFrame;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.view.JRViewer;

public class JasperJDBCConnection {
    
public JasperJDBCConnection(String a)throws FileNotFoundException, JRException
{
    JasperReport jasperReport = null;
        String path = a;
        JasperPrint jasperPrint = null;
        Connection conn = getConnection();
        String templateName="";
  
        HashMap parameters = new HashMap();
        templateName = path;

        jasperReport = JasperCompileManager.compileReport(templateName);
        jasperPrint = JasperFillManager.fillReport(jasperReport,parameters, conn);

            JRViewer viewer = new JRViewer(jasperPrint);
            viewer.setOpaque(true);
            viewer.setVisible(true);
            JFrame frm=new JFrame();
            frm.add(viewer);
            frm.setSize(1300,750);
            frm.setVisible(true);
}

    public static void main(String[] args) throws FileNotFoundException, JRException  {
        new JasperJDBCConnection("");
        }
    public static Connection getConnection() 
    {
        Connection conn = null;
        String url = "jdbc:mysql://192.168.1.21:3306/jina";
        String driver = "com.mysql.jdbc.Driver";
        try 
        {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url,"root","");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}