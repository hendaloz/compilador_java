/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compilador_lenguajejava;
import java.io.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;
import sun.util.logging.PlatformLogger;

/**
 *
 * @author Daniel
 */
public class Main {
    
 
    public static void main(String[] args) {
        
String path;

/* Llama a la clase parser creado por el cup*/
parser ThisParser;

/* Llama a la clase Analizador creado por el flex*/
Analizador ThisScanner;

/* lee el archivo entrada que contendra mis datos para validar*/
path="src\\compilador_lenguajejava\\entrada.txt";
try{
{ ThisScanner= new Analizador(new FileReader (path));

ThisParser=new parser (ThisScanner);
ThisParser.parse ();
}
   
         }catch(Exception ex){
             Logger.getLogger(Main.class.getName()).log(Level.SEVERE,null,ex);
         }
    }

}

    

