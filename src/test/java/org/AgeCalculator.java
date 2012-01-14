package AgeCalculatorPkg;

/**
 *
 * @author arief
 */

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import net.miginfocom.swing.MigLayout;

public class AgeCalculator extends JFrame  {
    AgeCalculatorEvents btns = new AgeCalculatorEvents(this);

    /**
     * @param args the command line arguments
     */
        JMenuBar menuBar;
        JMenu menu, menu2;
        JMenuItem menuItem;

        JLabel lbltab1 = new JLabel("Birthdate: ");
        JLabel lbltab2 = new JLabel("Current Date: ");
        JLabel lbltab3 = new JLabel("Max Life Span: ");

        JTextField txttab1 = new JTextField();
        JTextField txttab2 = new JTextField();
        JSpinner txttab3 = new JSpinner();

        JTabbedPane tabbedPane1 = new JTabbedPane();

        JButton btn1 = new JButton("Calculate");
        
        JLabel lbl1 = new JLabel("Output: ");

        JTextArea Results = new JTextArea(5, 20);


        JLabel lbl2 = new JLabel("Time Lived: ");
        JLabel lbl3 = new JLabel("37%");
        JProgressBar prgBar1 = new JProgressBar();

    public AgeCalculator() {
        super("The Age Calculator");
        setSize(380, 460);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        JPanel mainPanel = new JPanel(new MigLayout("",
                                                    "[grow,fill]",
                                                    "[][][][grow, fill][]"));

        menuBar = new JMenuBar();
        menu = new JMenu("File",true);
        menuItem = new JMenuItem("Exit");
        menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_X, ActionEvent.CTRL_MASK));
        menu.add(menuItem);

        menu2 = new JMenu("Help",true);
        menuBar.add(menu);
        menuBar.add(menu2);
        setJMenuBar(menuBar);


        JPanel tab1 = new JPanel(new MigLayout("","[][grow,fill]"));
        tab1.add(lbltab1);
        tab1.add(txttab1, "growx, wrap");
        tab1.add(lbltab2);
        tab1.add(txttab2, "wrap");
        tab1.add(lbltab3);
        txttab3.setValue(new Integer(75));
        tab1.add(txttab3, "wrap");


        
        JPanel tab2 = new JPanel(new MigLayout("", "[][][]"));

        tabbedPane1.setPreferredSize(new Dimension(WIDTH, 150));
        tabbedPane1.addTab("Time Lived", tab1);
        tabbedPane1.insertTab("Calculate Date", null, tab2, null, 1);
        mainPanel.add(tabbedPane1, "wrap");

        btn1.addActionListener(btns);
        mainPanel.add(btn1, "grow, wrap");

        
        mainPanel.add(lbl1, "wrap");
        //mainPanel.add(new JSeparator(), "span, growx, wrap, gaptop 0");
        Results.setEditable(false);
        mainPanel.add(Results, "grow, wrap");

        JPanel btmPanel = new JPanel(new MigLayout("", "[][grow,fill][]"));
        btmPanel.add(lbl2);
        btmPanel.add(prgBar1);
        btmPanel.add(lbl3);

        mainPanel.add(btmPanel, "grow, wrap");


        add(mainPanel);
        setVisible(true);
    }

    public static void main(String[] args) {
        // TODO code application logic here
        AgeCalculator frame = new AgeCalculator();

        //dlgWindow1 frame2 = new dlgWindow1();
    }

}
 
