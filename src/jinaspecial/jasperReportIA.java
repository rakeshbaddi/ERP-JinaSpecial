/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jinaspecial;

import java.sql.Connection;
import java.io.FileNotFoundException;
import java.sql.DriverManager;
import java.util.HashMap;
import javax.swing.JFrame;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.view.JRViewer;

public class jasperReportIA {
    public jasperReportIA(String a,String gatePassNo,String rsno,String stdate,String pono,String item,String date1,String date2)throws FileNotFoundException, JRException
{
   
    JasperReport jasperReport = null;
        String path = a;
        JasperPrint jasperPrint = null;

        Connection conn = getConnection();
        String templateName="";
        HashMap parameters = new HashMap();
        templateName=path;
        jasperReport = JasperCompileManager.compileReport(templateName);

        
            parameters.put("gatepass",gatePassNo);
            parameters.put("rsno",rsno);
            parameters.put("date1", stdate); 
            parameters.put("pono", pono); 
            parameters.put("item", item);
            parameters.put("date2", date1); 
            parameters.put("date3", date2); 
//             
//             System.out.println(i);
//             System.out.println(j);
//             System.out.println(n);
//             System.out.println(s);
            
           // parameters.put("subcode", sub);
            jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, conn);

            JRViewer viewer = new JRViewer(jasperPrint);
            viewer.setOpaque(true);
            viewer.setVisible(true);
            JFrame frm=new JFrame();
            frm.add(viewer);
            frm.setSize(1100,750);
            frm.setVisible(true);
            frm.setTitle("Report");
}
    
    
           
    public static void main(String[] args) throws FileNotFoundException, JRException  {
        jasperReportIA jasperReportIA = null;
        jasperReportIA=new jasperReportIA("","","","","","","","");
        }
    public static Connection getConnection() 
    {
        Connection conn = null;
        try 
        {
           Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jina","root","");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}