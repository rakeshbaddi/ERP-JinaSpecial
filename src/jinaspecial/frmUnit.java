/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * frmDeaprtment.java
 *
 * Created on 27 Nov, 2017, 2:26:35 PM
 */
package jinaspecial;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Vaibhav
 */
public class frmUnit extends javax.swing.JFrame {

     dbConn mc=new dbConn();
     Connection con;
 DefaultTableModel model=new DefaultTableModel();
    /** Creates new form frmDeaprtment */
    public frmUnit() {
        initComponents();
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPasswordField1 = new javax.swing.JPasswordField();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtDepartment = new javax.swing.JTextField();
        btnAdd = new javax.swing.JButton();
        btnUpdate = new javax.swing.JButton();
        btnDelete = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblDepartment = new javax.swing.JTable();
        jLabel2 = new javax.swing.JLabel();
        txtDeptID = new javax.swing.JTextField();

        jPasswordField1.setText("jPasswordField1");
        jPasswordField1.setName("jPasswordField1"); // NOI18N

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Unit Master");
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.setName("jPanel1"); // NOI18N

        jLabel1.setText("Add Unit:");
        jLabel1.setName("jLabel1"); // NOI18N

        txtDepartment.setName("txtDepartment"); // NOI18N

        btnAdd.setText("Add");
        btnAdd.setName("btnAdd"); // NOI18N
        btnAdd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddActionPerformed(evt);
            }
        });

        btnUpdate.setText("Update");
        btnUpdate.setName("btnUpdate"); // NOI18N
        btnUpdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUpdateActionPerformed(evt);
            }
        });

        btnDelete.setText("Delete");
        btnDelete.setName("btnDelete"); // NOI18N
        btnDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeleteActionPerformed(evt);
            }
        });

        jScrollPane1.setName("jScrollPane1"); // NOI18N

        tblDepartment.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                true, true, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tblDepartment.setName("tblDepartment"); // NOI18N
        tblDepartment.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblDepartmentMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tblDepartment);

        jLabel2.setText(" ID:");
        jLabel2.setName("jLabel2"); // NOI18N

        txtDeptID.setEditable(false);
        txtDeptID.setName("txtDeptID"); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(btnAdd)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnUpdate)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btnDelete)
                        .addGap(43, 43, 43))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 91, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(txtDepartment, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 113, Short.MAX_VALUE)
                            .addComponent(txtDeptID, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 113, Short.MAX_VALUE))
                        .addGap(26, 26, 26)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 415, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 138, Short.MAX_VALUE)
                        .addContainerGap())
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(txtDeptID, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(txtDepartment, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(25, 25, 25)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btnAdd)
                            .addComponent(btnUpdate)
                            .addComponent(btnDelete))
                        .addGap(39, 39, 39))))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-713)/2, (screenSize.height-223)/2, 713, 223);
    }// </editor-fold>//GEN-END:initComponents

    private void btnAddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddActionPerformed
        try{
           
            Connection con=DriverManager.getConnection(mc.StrUrl,mc.StrUid,mc.StrPwd);
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select unit from tblunit where unit='"+txtDepartment.getText()+"'");
            if(rs.next()){
                JOptionPane.showMessageDialog(rootPane, "Unit is allready Exists");
            }
            else{            
             
            // To add Department
            
             if (txtDepartment.getText().trim().length()==0 )
            {
                    JOptionPane.showMessageDialog(null,"Enter Unit.");
                    return;  
            }
            
                String word = txtDepartment.getText();
                Pattern pattern = Pattern.compile("[a-zA-Z]+");
                Matcher matcher = pattern.matcher(word);
               if (!matcher.matches()) {
                    JOptionPane.showMessageDialog(rootPane,"Please Enter Correct Unit Name");
                      txtDepartment.setText("");
                      txtDepartment.setFocusable(true);
                }
             else{
               int i=st.executeUpdate("insert into tblUnit values(null,'"+txtDepartment.getText()+"')");

                    if(i>0)
                    {

                            JOptionPane.showMessageDialog(rootPane,"Unit Added Successfully");
                            txtDepartment.setText("");
                            txtDepartment.setFocusable(true);
                          display();

                    }
                    else
                    {
                            JOptionPane.showMessageDialog(rootPane,"Error!");
                    }
                   }
            }
        }
        catch(Exception e){
                    System.err.print(e);
        }
    }//GEN-LAST:event_btnAddActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        // TODO add your handling code here:
        try{
        btnUpdate.setEnabled(false);
        btnDelete.setEnabled(false);
        tblDepartment.setModel(model);
        model.addColumn("id");
        model.addColumn("Unit Name");
        
        con=DriverManager.getConnection(mc.StrUrl,mc.StrUid,mc.StrPwd);
        Statement st=con.createStatement();
        
         ResultSet rss=st.executeQuery("select max(id)+1 from tblUnit");
        while(rss.next())
        {
                txtDeptID.setText(rss.getString(1));
        }
        
        display();
        }
        
        catch(Exception e){
            System.out.print(e);
        }
    }//GEN-LAST:event_formWindowOpened

    private void btnUpdateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUpdateActionPerformed
       try{
          Connection con=DriverManager.getConnection(mc.StrUrl,mc.StrUid,mc.StrPwd);
          Statement st=con.createStatement();
          
          int i=st.executeUpdate("update tblunit set department='"+txtDepartment.getText()+"' where id="+txtDeptID.getText()+"");
          if(i>0){
              JOptionPane.showMessageDialog(rootPane, "Unit Updated Successfully");
              display();
          }
          else
          {
                JOptionPane.showMessageDialog(rootPane, "Error in Updation");
          }
       }
       catch(Exception e){
           System.out.print(e);
       }
    }//GEN-LAST:event_btnUpdateActionPerformed

    private void tblDepartmentMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblDepartmentMouseClicked
        int r=tblDepartment.getSelectedRow();
        txtDeptID.setText(tblDepartment.getValueAt(r, 0).toString());
        txtDepartment.setText(tblDepartment.getValueAt(r, 1).toString());
        btnUpdate.setEnabled(true);
        btnDelete.setEnabled(true);
        btnAdd.setEnabled(false);
    }//GEN-LAST:event_tblDepartmentMouseClicked

    private void btnDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeleteActionPerformed
        try{
           Connection con=DriverManager.getConnection(mc.StrUrl,mc.StrUid,mc.StrPwd);
           Statement st=con.createStatement();
           int i=st.executeUpdate("Delete from tblunit where id="+txtDeptID.getText()+"");
           
               int dialogButton = JOptionPane.YES_NO_OPTION;
               int dialogResult = JOptionPane.showConfirmDialog (null, "Would You Like to Delete?","Warning",dialogButton);
                if(dialogResult == JOptionPane.YES_OPTION){
                    if(i>0){
                   JOptionPane.showMessageDialog(rootPane, "Deleted Successfully");
                   display();
                }
                   else
                {
                   JOptionPane.showMessageDialog(rootPane, "Error in Deletion");
                }
                }
                else if(dialogResult == JOptionPane.NO_OPTION)
                {
                    
                    btnAdd.setEnabled(true);
                    btnUpdate.setEnabled(false);
                    btnDelete.setEnabled(false);
                    display();
                }
              
           
          
           
        }
        catch(Exception e){
            System.out.print(e);
        }
    }//GEN-LAST:event_btnDeleteActionPerformed

    public void display()
     {
         try{
             model.setRowCount(0);
             con=DriverManager.getConnection(mc.StrUrl,mc.StrUid,mc.StrPwd);
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select * from tblUnit");
        while(rs.next())
        {
            model.addRow(new Object[]{rs.getString(1),rs.getString(2)});
        }
         }
         catch(Exception e){
             System.out.print(e);
         }
     }
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new frmUnit().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAdd;
    private javax.swing.JButton btnDelete;
    private javax.swing.JButton btnUpdate;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tblDepartment;
    private javax.swing.JTextField txtDepartment;
    private javax.swing.JTextField txtDeptID;
    // End of variables declaration//GEN-END:variables
}
