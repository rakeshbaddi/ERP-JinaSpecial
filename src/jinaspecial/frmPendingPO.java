package jinaspecial;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * frmPendingPO.java
 *
 * Created on 2 Jan, 2018, 11:35:04 AM
 */
/**
 *
 * @author Vaibhav
 */
public class frmPendingPO extends javax.swing.JFrame {

        dbConnection db=new dbConnection();
     Connection con;
     Statement st;
     ResultSet rs=null;
     DefaultTableModel model=new DefaultTableModel();
    /** Creates new form frmPendingPO */
    public frmPendingPO() {
        initComponents();
    }

   
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        cmbItem = new javax.swing.JComboBox();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblPenPO = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Pending P.O");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jPanel1.setName("jPanel1"); // NOI18N

        cmbItem.setName("cmbItem"); // NOI18N
        cmbItem.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cmbItemItemStateChanged(evt);
            }
        });

        jScrollPane1.setName("jScrollPane1"); // NOI18N

        tblPenPO.setModel(new javax.swing.table.DefaultTableModel(
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
        tblPenPO.setName("tblPenPO"); // NOI18N
        jScrollPane1.setViewportView(tblPenPO);

        jLabel1.setText("Select Material:");
        jLabel1.setName("jLabel1"); // NOI18N

        jButton1.setText("View");
        jButton1.setName("jButton1"); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 822, Short.MAX_VALUE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addGap(18, 18, 18)
                        .addComponent(cmbItem, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(26, 26, 26)
                        .addComponent(jButton1)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(cmbItem, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1))
                .addGap(27, 27, 27)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 284, Short.MAX_VALUE)
                .addContainerGap())
        );

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 18));
        jLabel2.setForeground(new java.awt.Color(0, 0, 255));
        jLabel2.setText("Pending Purchase Order As per Item Name");
        jLabel2.setName("jLabel2"); // NOI18N

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(282, 282, 282)
                        .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 348, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(12, Short.MAX_VALUE)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void cmbItemItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cmbItemItemStateChanged
    
}//GEN-LAST:event_cmbItemItemStateChanged

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        try {
            tblPenPO.setModel(model);
                    cmbItem.addItem("--Select Item Name--");
                  
            st=db.dbConn();
             rs=st.executeQuery("select distinct(itemname) from tblitem");
                
             while(rs.next())
             {
                     cmbItem.addItem(rs.getString("itemname"));
             }
             rs.close();
             model.addColumn("PO.No.");
             model.addColumn("Item Name");
             model.addColumn("UOM");
             model.addColumn("Qty");
             model.addColumn("Rate");
             model.addColumn("Amount");
             model.addColumn("Tax");
             model.addColumn("Pending Qty"); 
             
                
        } catch (SQLException ex) {
            Logger.getLogger(frmPendingPO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_formWindowOpened

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
           try{
            st=db.dbConn();
             int i=model.getRowCount();
           for( int j = model.getRowCount()-1 ; j >= 0; j-- )
                {
                model.removeRow(j);
                }
             String po="",itemname="",uom="",qty="",rate="",amount="",taxrate="",pendqty="";
         
//            rs=st.executeQuery("select distinct(pono),itemname,uom,qty,rate,amount,taxrate,pendqty from tblpurchaseorderdetails where itemname='"+cmbItem.getSelectedItem()+"' and pendqty > 0");
//            
//            while(rs.next()){
//              po=rs.getString("pono");
//              itemname=rs.getString("itemname");
//              uom=rs.getString("uom");
//              qty=rs.getString("qty");
//              rate=rs.getString("rate");
//              amount=rs.getString("amount");
//              taxrate=rs.getString("taxrate");
//              pendqty=rs.getString("pendqty");
//               model.addRow(new Object[]{po,itemname,uom,qty,rate,amount,taxrate,pendqty});
//            }
             
             rs=st.executeQuery("select distinct(pono) from tblpurchaseorderdetails where itemname='"+cmbItem.getSelectedItem()+"'");
             
             Statement st1=db.dbConn();
           
            while(rs.next()){
                 po=rs.getString(1);
                 System.out.println(po);
                  ResultSet rs1=st1.executeQuery("select itemname,uom,qty,rate,amount,taxrate,pendqty from tblpurchaseorderdetails where pono='"+po+"' and itemname='"+cmbItem.getSelectedItem()+"' and pendqty > 0");
              if(rs1.next()){
              itemname=rs1.getString("itemname");
              uom=rs1.getString("uom");
              qty=rs1.getString("qty");
              rate=rs1.getString("rate");
              amount=rs1.getString("amount");
              taxrate=rs1.getString("taxrate");
              pendqty=rs1.getString("pendqty");
               model.addRow(new Object[]{po,itemname,uom,qty,rate,amount,taxrate,pendqty});
               }
              }
            
         
        } catch(Exception e){
            System.out.print(e);
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new frmPendingPO().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox cmbItem;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tblPenPO;
    // End of variables declaration//GEN-END:variables
}
