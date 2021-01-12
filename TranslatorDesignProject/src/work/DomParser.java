/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package work;

import javax.swing.JTextArea;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;


/**
 *
 * @author Lascau
 */
public class DomParser {
    
    public void ident(int n) {
        for (int ident = 0; ident < n; ++ident) {
            System.out.print("\t");
        }
    }
    
    public void print(NodeList currentNode, int nestingLevel) {
        for (int index = 0; index < currentNode.getLength(); ++index) {
            Node copyNode = (Node) currentNode.item(index);
            if (copyNode.getNodeType() == Node.ELEMENT_NODE) {
               
                // get node name and value
                ident(nestingLevel);
                System.out.println("Node " + copyNode.getNodeName() + "-> OPEN");
                ident(nestingLevel);
                System.out.println("    Node value = " + copyNode.getTextContent());
                
                // handling attributes
                if (copyNode.hasAttributes()) {
                     NamedNodeMap nodeMap = copyNode.getAttributes();
                    for (int i = 0; i < nodeMap.getLength(); i++) {
                        
                        for (int ident = 0; ident < nestingLevel; ++ident) {
                            System.out.print("    ");
                        }
                        
                        Node node = (Node) nodeMap.item(i);
                        ident(nestingLevel);
                        System.out.println("    Attribute name : " + node.getNodeName());
                        ident(nestingLevel);
                        System.out.println("    Attribute value : " + node.getNodeValue());

                    }
                }
                
                if (copyNode.hasChildNodes()) {
                    // traverse his childs recursively
                    print(copyNode.getChildNodes(), nestingLevel + 1);
                } 
                ident(nestingLevel);
                System.out.println("Node " + copyNode.getNodeName() + "-> CLOSE");
            }
        }
    }
}
