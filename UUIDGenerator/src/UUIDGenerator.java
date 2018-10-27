
import java.util.UUID;

/**
 *
 * @author Vishnu Prabhakar
 */
public class UUIDGenerator extends javax.swing.JFrame {

    
    public UUIDGenerator() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
                              
    private void initComponents() {

        TextField = new javax.swing.JTextField();
        GenBtn = new javax.swing.JButton();
        ClrBtn = new javax.swing.JButton();
        String UUID_GENERATOR = "UUID Generator";
        String GENERATE = "Generate";
        String CLEAR = "Clear";

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
		setTitle(UUID_GENERATOR);

        TextField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                TextFieldActionPerformed(evt);
            }
        });
        TextField.addPropertyChangeListener(new java.beans.PropertyChangeListener() {
            public void propertyChange(java.beans.PropertyChangeEvent evt) {
                TextFieldPropertyChange(evt);
            }
        });

        GenBtn.setText(GENERATE);
        GenBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                GenBtnActionPerformed(evt);
            }
        });

        ClrBtn.setText(CLEAR);
        ClrBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ClrBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(95, 95, 95)
                        .addComponent(GenBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 114, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(ClrBtn))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(58, 58, 58)
                        .addComponent(TextField, javax.swing.GroupLayout.PREFERRED_SIZE, 274, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(62, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(34, 34, 34)
                .addComponent(TextField, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(GenBtn)
                    .addComponent(ClrBtn))
                .addContainerGap(46, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }                       

    private void TextFieldActionPerformed(java.awt.event.ActionEvent evt) {                                            
       TextField.setText("");
    }                                           
    
    private void ClrBtnActionPerformed(java.awt.event.ActionEvent evt) {                                         
       TextField.setText("");
    }                                        

    private void TextFieldPropertyChange(java.beans.PropertyChangeEvent evt) {                                           
        
    }                                          

    private void GenBtnActionPerformed(java.awt.event.ActionEvent evt) { 
    	TextField.setHorizontalAlignment(TextField.CENTER);
        String suuid = UUID.randomUUID().toString();
        TextField.setText(suuid);
    }                                        

    
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new UUIDGenerator().setVisible(true);
            }
        });
    }
                 
    private javax.swing.JButton GenBtn;
    private javax.swing.JButton ClrBtn;
    private javax.swing.JTextField TextField;       
}
