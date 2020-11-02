/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package work;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
/**
 *
 * @author Lascau
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void generateLexer(String path1, String path2, String[] pathS) throws IOException, Exception{
        File file = new File(path1);
        JFlex.Main.generate(file);
        file = new File(path2);
        JFlex.Main.generate(file);
        java_cup.Main.main(pathS);
        
        Path pathSym = Paths.get("C:/Users/Lascau/Desktop/HTML-Compact-Processor/TranslatorDesignProject/src/work/sym.java");
        if (Files.exists(pathSym)) {
            Files.delete(pathSym);
        }
        Files.move(
                Paths.get("C:/Users/Lascau/Desktop/HTML-Compact-Processor/TranslatorDesignProject/sym.java"), 
                Paths.get("C:/Users/Lascau/Desktop/HTML-Compact-Processor/TranslatorDesignProject/src/work/sym.java")
        );
        Path pathSin = Paths.get("C:/Users/Lascau/Desktop/HTML-Compact-Processor/TranslatorDesignProject/src/work/Sintax.java");
        if (Files.exists(pathSin)) {
            Files.delete(pathSin);
        }
        Files.move(
                Paths.get("C:/Users/Lascau/Desktop/HTML-Compact-Processor/TranslatorDesignProject/Sintax.java"), 
                Paths.get("C:/Users/Lascau/Desktop/HTML-Compact-Processor/TranslatorDesignProject/src/work/Sintax.java")
        );
    
    }
    
    public static void main(String[] args) throws Exception{
        String path1 = "C:/Users/Lascau/Desktop/HTML-Compact-Processor/TranslatorDesignProject/src/work/Lexer.flex";
        String path2 = "C:/Users/Lascau/Desktop/HTML-Compact-Processor/TranslatorDesignProject/src/work/LexerCup.flex";
        String[] pathS = {"-parser", "Sintax", "C:/Users/Lascau/Desktop/HTML-Compact-Processor/TranslatorDesignProject/src/work/Sintax.cup"};
        generateLexer(path1, path2, pathS);
    }
   

}

