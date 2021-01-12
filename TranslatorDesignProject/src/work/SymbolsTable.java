/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package work;

import java.util.HashMap;

/**
 *
 * @author Lascau
 */
public class SymbolsTable {
    private HashMap<String, Integer> countTagMap = new HashMap<String, Integer>();
    
    public SymbolsTable() {
        
    }
    
    public void addTagByName(String tagName) {
        countTagMap.put(tagName, countTagMap.getOrDefault(tagName, 0) + 1);
    }
    
    public void printSymbolsTable() {
        System.out.println("\n-----Symbols Table-----");
        countTagMap.keySet().forEach((tagName) -> {
            System.out.println("Tag name " + tagName + " Frequency: " + countTagMap.getOrDefault(tagName, 0));
        });
    }
}
