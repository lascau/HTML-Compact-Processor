/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package work;

import java.util.ArrayList;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.NodeList;

/**
 *
 * @author Lascau
 */


public class Node {

    static boolean ELEMENT_NODE;
    public String type; // the type of the node
    public String content; // actual content if it can not contains nodes
    private ArrayList<Node> children; // links with other nodes
    
    public Node(String type) {
        this.children = new ArrayList<Node>();
        this.type = type; 
    }
    
    public static Node createNode(String type){
        Node node = new Node(type);        
        return node;
    } 
    
    public void addLink(Node child) {
        if (child != null) {
            children.add(child);
        }
    }
    
    public void printAst(int level) {       
        for (int index = 0; index < level; ++index) {
            System.out.print(" ");           
            
            if (type != null) {
                System.out.print("  " + type);
            }
            
            if (children.size() > 0) {
                System.out.print(" - " + children.size() + "\n    ");
            }
            for (Node node : children) {
                node.printAst(level + 1);
            }   
        }
    }
    
    public static Node createHtmlNode(Node htmlContent){
        Node htmlNode = createNode("Html node");    
        if (htmlNode != null){
            htmlNode.children.add(htmlContent);            
        }       
        return htmlNode;
    }
    
    public static Node createHeadNode(Node headContent){
        Node headNode = createNode("Head node");
        
        if (headContent != null){
            headNode.children.add(headContent);            
        }      
        return headNode;
    }
    
    public static Node createBodyNode(Node bodyContent){
        Node bodyNode = createNode("Body node");
        
        if (bodyNode != null){
            bodyNode.children.add(bodyContent);            
        }
        return bodyNode;
    }
    
    public static Node createBNode(String content){
        Node bNode = createNode("B node");
        
        if (bNode != null && content != null){
            bNode.content = content;            
        }      
        return bNode;
    }
    
    public static Node createBasefontNode(String content){
        Node basefontNode = createNode("Basefont node");
        
        if (basefontNode != null && content != null){
            basefontNode.content = content;            
        }      
        return basefontNode;
    }
    
}
