<%-- 
    Document   : navbar
    Created on : 20 Feb, 2018, 1:41:48 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<body>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
               
           </script>

<nav class="navbar  navbar-inverse" >
            
    <div class="navbar-header" style="text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF">   
          <a href="index.jsp" class="navbar-brand" style="color: red">
              <img class="img-responsive" src="logoNIC.gif" style="background-color: black"> 
             
          </a>
    </div>
     <ul class="nav navbar-nav">
          <li class="active" style="color: blue">
              <a href="index.jsp" style="color: blue">
  HOME
              </a>
          </li>
          <li class="dropdown">
              <a href="sd.jsp"  type="button"  style="color: blue" >
                 SEARCH BY DATE
                
              </a>
    
          </li>

     
        
      
   
    
    </ul>
            
              
    
            
          <ul class="nav navbar-nav navbar-right">
          
      <li>
          <a href="login.jsp"style="color:lime">
              <span class="glyphicon glyphicon-log-in" style="color: lime">
              </span> 
              LOGOUT
          </a>
      </li>
    </ul>
                
</nav>



  <br>  
  

 
</body>
</html>