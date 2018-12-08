<%-- 
    Document   : login
    Created on : 5 Mar, 2018, 10:03:14 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PAGE </title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    </head>
    <body style="background-color:#FF8000" >
        <br>        <br>        <br>        <br>        <br>        <br>        <br>        <br>         <br>        <br>
        
        <div class="row" >
            <div style="padding-left:490px"  >
        <div class="col-xs-6" style="background-color:#B3F5F7" >
            <form class="form form-group" method="post" action="loginvalidate.jsp"  id="s12" style="text-align:center" align="center">
                <label for="userid"> USERNAME</label> 
                <input type="userid" class="form-control" placeholder="enter the usserid" name="usd" >
                <label for="password"> PASSWORD</label> 
                <input type="password" class="form-control" placeholder="enter the password" name="psd" ><br>
                <input type="checkbox" >Remember password
                <br>
                <input class="btn btn-primary" type="submit" value="submit" onclick="loginvalidate.jsp">
                
            </form>    
        
        </div>
        </div>
        </div>
        
 
        
    </body>
    <style>
        #s12{
               border-top-left-radius:100px;
            
        }
        
        
    </style>
</html>
