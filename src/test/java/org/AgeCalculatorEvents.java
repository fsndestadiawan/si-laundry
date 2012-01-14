package AgeCalculatorPkg;

/**
 *
 * @author arief
 */

import javax.swing.*;
import java.awt.event.*;

public class AgeCalculatorEvents implements ActionListener, Runnable {
    AgeCalculator gui;

    public AgeCalculatorEvents(AgeCalculator in) {
        gui = in;
    }

    public void actionPerformed(ActionEvent event){
        String command = event.getActionCommand();

        if (command.equals(command))
            startCalculating();
    }

    void startCalculating(){
        System.out.println("ASFD ASDF ASD FAS DFAS DFSDF " + gui.txttab3.getValue());
        gui.prgBar1.setValue(75);
        gui.lbl3.setText(gui.txttab3.getValue() + "%");
    }

    public void run(){
        
    }

}
 
