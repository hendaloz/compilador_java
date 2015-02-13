/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compilador_lenguajejava;

import java.io.File;

/**
 *
 * @author Daniel
 */
public class mainFlex {
     public static void main(String[] args) {
        try {
            String path ="src\\compilador_lenguajejava\\analizador.flex";
            File archivo = new File(path);
            JFlex.Main.generate(archivo);
        } catch (Exception ex) {
            
        }
    }
    
}
