/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dyno1;

 import javax.jws.*;

@WebService(portName = "myd2Port", serviceName = "myd2Service", 
    targetNamespace = "http://Dybo1/", 
    endpointInterface = "Dyno1.myd2")
public class  mydemoservice implements myd2{
    public String hello(String name) {
        // replace with your impl here
         return "Hello "+name +" Welcome to Web Services!";
 
    }

    /**
     * Web service operation
     */
    public String name() {
        //TODO write your implementation code here:
        return null;
    }
}
