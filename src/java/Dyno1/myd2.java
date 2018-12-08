/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dyno1;
import javax.jws.WebMethod;
import javax.jws.WebService;
@WebService(name = "myd2", targetNamespace = 
    "http://Dyno1/")
public interface myd2 {
    @WebMethod(operationName = "hello")
    public String hello(String name);

    /**
     * Web service operation
     */
    @WebMethod(operationName = "name")
    public String name();
} 