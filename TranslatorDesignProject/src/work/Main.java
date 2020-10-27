/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package work;

import java.io.File;
/**
 *
 * @author Lascau
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void generateLexer(String path){
        File file = new File(path);
        JFlex.Main.generate(file);
    }
    
    public static void main(String[] args) {
        String path = "C:/Users/Lascau/Documents/NetBeansProjects/TranslatorDesignProject_1/src/work/Lexer.flex";
        generateLexer(path);
    }
   

}
