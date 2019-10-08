/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * frmReceiveGatePassMaterial.java
 *
 * Created on 25 Jan, 2018, 12:17:21 PM
 */
package jinaspecial;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import net.sf.jasperreports.engine.JRException;

/**
 *
 * @author Vaibhav
 */
public class frmReceiveGatePassMaterial extends javax.swing.JFrame {

    dbConnection db=new dbConnection();
    Statement st;
    DefaultTableModel model=new DefaultTableModel();
            
    /** Creates new form frmReceiveGatePassMaterial */
    public frmReceiveGatePassMaterial() {
        initComponents();
    }

  
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        cmbPassNo = new javax.swing.JComboBox();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl = new javax.swing.JTable();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        txtItemName = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        txtQty = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        txtReceivedQty = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txtPendingQty = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        txtPrevious = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        dtDate = new datechooser.beans.DateChooserCombo();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Gate Pass Material");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.setName("jPanel1"); // NOI18N

        jLabel1.setText("Select Gate Pass:");
        jLabel1.setName("jLabel1"); // NOI18N

        cmbPassNo.setName("cmbPassNo"); // NOI18N
        cmbPassNo.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cmbPassNoItemStateChanged(evt);
            }
        });

        jScrollPane1.setName("jScrollPane1"); // NOI18N

        tbl.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tbl.setName("tbl"); // NOI18N
        tbl.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbl);

        jButton1.setText("Receive All  Material");
        jButton1.setName("jButton1"); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("Receive By Item");
        jButton2.setName("jButton2"); // NOI18N
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel2.setText("Item Name:");
        jLabel2.setName("jLabel2"); // NOI18N

        txtItemName.setName("txtItemName"); // NOI18N

        jLabel3.setText("Quantity:");
        jLabel3.setName("jLabel3"); // NOI18N

        txtQty.setName("txtQty"); // NOI18N

        jLabel4.setText("Previous Received Qty:");
        jLabel4.setName("jLabel4"); // NOI18N

        txtReceivedQty.setName("txtReceivedQty"); // NOI18N
        txtReceivedQty.addCaretListener(new javax.swing.event.CaretListener() {
            public void caretUpdate(javax.swing.event.CaretEvent evt) {
                txtReceivedQtyCaretUpdate(evt);
            }
        });

        jLabel5.setText("Total Pending Qty:");
        jLabel5.setName("jLabel5"); // NOI18N

        txtPendingQty.setName("txtPendingQty"); // NOI18N

        jLabel6.setText("Received Qty:");
        jLabel6.setName("jLabel6"); // NOI18N

        txtPrevious.setName("txtPrevious"); // NOI18N

        jLabel7.setText("Received Date:");
        jLabel7.setName("jLabel7"); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(cmbPassNo, javax.swing.GroupLayout.PREFERRED_SIZE, 192, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(57, 57, 57)
                        .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 88, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(dtDate, javax.swing.GroupLayout.PREFERRED_SIZE, 181, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(44, 44, 44)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel4)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 92, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(txtQty, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 157, Short.MAX_VALUE)
                                    .addComponent(txtItemName, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 157, Short.MAX_VALUE)
                                    .addComponent(txtPrevious, javax.swing.GroupLayout.Alignment.LEADING))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 388, Short.MAX_VALUE)
                                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(46, 46, 46)
                                .addComponent(txtPendingQty, javax.swing.GroupLayout.PREFERRED_SIZE, 117, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(txtReceivedQty, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 953, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(13, 13, 13))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(282, 282, 282)
                .addComponent(jButton1)
                .addGap(18, 18, 18)
                .addComponent(jButton2)
                .addContainerGap(451, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel1)
                        .addComponent(cmbPassNo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel7))
                    .addComponent(dtDate, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 174, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtItemName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtPendingQty, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtQty, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 17, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtPrevious, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtReceivedQty, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 20, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2)
                    .addComponent(jButton1))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        try {
            st=db.dbConn();
           cmbPassNo.addItem("--Select Gate Pass No--");
            
           String rcv="NO";
            ResultSet rs=st.executeQuery("select distinct(pasno) from tblgatepass where  received='"+rcv+"' ");
            while(rs.next()){
                cmbPassNo.addItem(rs.getString(1));
            }
            
            //Table Column
            
            tbl.setModel(model);
            model.addColumn("Pass No");
            model.addColumn("Date");
            model.addColumn("To");
            model.addColumn("unit");
            model.addColumn("Item");
            model.addColumn("Qty");
            model.addColumn("type");
        } catch (SQLException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_formWindowOpened

    private void cmbPassNoItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cmbPassNoItemStateChanged
        try {
            st=db.dbConn();
//             if(cmbPassNo.getSelectedItem().equals("--Select Gate Pass No--")){
//                JOptionPane.showMessageDialog(rootPane,"Select Gate Pass No");
//            }
            int i=model.getRowCount();
           for( int j = model.getRowCount()-1 ; j >= 0; j-- )
                {
                model.removeRow(j);
                }
           //String rcv="NO";
            ResultSet rs=st.executeQuery("select * from tblgatepass where pasno="+cmbPassNo.getSelectedItem()+" and recvd_qty<qty");
            while(rs.next()){
              model.addRow(new Object[]{cmbPassNo.getSelectedItem(),rs.getString("pass_date"),rs.getString("to"),rs.getString("unit"),rs.getString("item"),rs.getString("qty"),rs.getString("type")});
              }
        } catch (SQLException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_cmbPassNoItemStateChanged

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        try {
        st=db.dbConn();
         int qty=0;
        Statement st1=db.dbConn();
        
         String datePattern = "yyyy-M-dd";
                 SimpleDateFormat dateFormatter = new SimpleDateFormat(datePattern);
              dtDate.setDateFormat(dateFormatter);
       
        String rcv="YES";
       
         for(int i = 0; i < model.getRowCount(); i++){
              ResultSet rs=st1.executeQuery("select qty from tblgatepass where pasno="+model.getValueAt(i,0)+"");
        while(rs.next()){
            qty=rs.getInt(1);
            
        }
        System.out.println(qty);
             String qq=(String) model.getValueAt(i,5);
             int q=Integer.parseInt(qq);
            if(qty==q){
                st.executeUpdate("update tblgatepass set recvd_qty="+model.getValueAt(i,5)+",received='"+rcv+"',recvd_date='"+dtDate.getText()+"' where item='"+model.getValueAt(i,4)+"' and pasno="+model.getValueAt(i,0)+"");
                
            }
            JOptionPane.showMessageDialog(rootPane, "Item Received");
             String path = new java.io.File(".").getCanonicalPath();
           String rpt=path+"\\Reports\\rptGatePassReceived.jrxml";
           jasperReportIA ii=new jasperReportIA(rpt,"","","",cmbPassNo.getSelectedItem().toString(),"","","");
         }
        } 
        catch (JRException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        }        catch (FileNotFoundException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        }  catch (IOException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       
       
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        try {
            st=db.dbConn();
           
            String pend=txtPendingQty.getText();
            double pending=Double.parseDouble(pend);
            int i=tbl.getSelectedRow();
            System.out.println(i);
            int qty=0;
            int prvqty=0;
            String rcv="YES";
               
            String q=(String) model.getValueAt(i,5);
            int ii=Integer.parseInt(q);
            String recqty=txtReceivedQty.getText();
            int recvdqty;
            recvdqty= Integer.parseInt(recqty);
            String prv=txtPrevious.getText();
            int prv1=Integer.parseInt(prv);
            recvdqty=(prv1+recvdqty);
              String datePattern = "yyyy-M-dd";
                 SimpleDateFormat dateFormatter = new SimpleDateFormat(datePattern);
              dtDate.setDateFormat(dateFormatter);
             
            if(ii>recvdqty ||pending!=0){
                     rcv="NO";            
           st.executeUpdate("update tblgatepass set recvd_qty="+recqty+",received='"+rcv+"',recvd_date='"+dtDate.getText()+"' where item='"+txtItemName.getText()+"' and pasno="+model.getValueAt(i,0)+"");
                   JOptionPane.showConfirmDialog(rootPane, "Item Received " +txtPendingQty.getText()+ " Item Still Pending");
                    String path = new java.io.File(".").getCanonicalPath();
           String rpt=path+"\\Reports\\rptGatePassReceived.jrxml";
           jasperReportIA iii=new jasperReportIA(rpt,"","","",cmbPassNo.getSelectedItem().toString(),"","","");
           txtItemName.setText("");
           txtQty.setText("");
           txtPrevious.setText("");
           txtReceivedQty.setText("");
        } 
            else{
               //  String prv11=txtPrevious.getText();
            //int prv111=Integer.parseInt(prv11);
               //recvdqty=(recvdqty+prv111)- recvdqty;
                 st.executeUpdate("update tblgatepass set recvd_qty="+ recvdqty+",received='"+rcv+"',recvd_date='"+dtDate.getText()+"' where item='"+txtItemName.getText()+"' and pasno="+model.getValueAt(i,0)+"");
                 JOptionPane.showConfirmDialog(rootPane, "Item Received");
                  String path = new java.io.File(".").getCanonicalPath();
           String rpt=path+"\\Reports\\rptGatePassReceived.jrxml";
           jasperReportIA iii=new jasperReportIA(rpt,"","","",cmbPassNo.getSelectedItem().toString(),"","","");
           txtItemName.setText("");
           txtQty.setText("");
           txtPrevious.setText("");
           txtReceivedQty.setText("");
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        } catch (JRException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        }catch (SQLException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void tblMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblMouseClicked
        try {
            int i=tbl.getSelectedRow();
            String prvqty;
              DefaultTableModel model=(DefaultTableModel)tbl.getModel();
            txtItemName.setText(model.getValueAt(i, 4).toString());
            txtQty.setText(model.getValueAt(i,5).toString());
            st=db.dbConn();
            ResultSet rs=st.executeQuery("select recvd_qty from tblgatepass where item='"+txtItemName.getText()+"' and pasno="+model.getValueAt(i, 0) +"");
            if(rs.next()){
               prvqty=rs.getString(1);
               txtPrevious.setText(prvqty);
            }
        } catch (SQLException ex) {
            Logger.getLogger(frmReceiveGatePassMaterial.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }//GEN-LAST:event_tblMouseClicked

    private void txtReceivedQtyCaretUpdate(javax.swing.event.CaretEvent evt) {//GEN-FIRST:event_txtReceivedQtyCaretUpdate
        double i=Double.parseDouble(txtQty.getText());
        double rec=Double.parseDouble(txtReceivedQty.getText());
        double prv=Double.parseDouble(txtPrevious.getText());
       // double pen=Double.parseDouble(txtPendingQty.getText());
        rec=rec+prv;
        double pen= (i-rec);
        if(rec<=i){
           // pen=i-rec;
        String pen1=String.valueOf(pen);
        txtPendingQty.setText(pen1);
        }
        else{
            JOptionPane.showConfirmDialog(rootPane,"Quantity is greater than Allocated ");
        }
    }//GEN-LAST:event_txtReceivedQtyCaretUpdate
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new frmReceiveGatePassMaterial().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox cmbPassNo;
    private datechooser.beans.DateChooserCombo dtDate;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tbl;
    private javax.swing.JTextField txtItemName;
    private javax.swing.JTextField txtPendingQty;
    private javax.swing.JTextField txtPrevious;
    private javax.swing.JTextField txtQty;
    private javax.swing.JTextField txtReceivedQty;
    // End of variables declaration//GEN-END:variables
}
