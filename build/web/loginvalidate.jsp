<%-- 
    Document   : loginvalidate
    Created on : 11 Mar, 2018, 11:32:12 PM
    Author     : HP
--%>

<%@page import="java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.PatternSyntaxException"%>


        <%
String driverName = "org.postgresql.Driver";
String connectionUrl = "jdbc:postgresql://localhost:5432/postgres";
String userId = "postgres";
String password = "system";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
        
 Connection con1=null;
 Statement st1=null;
  Statement st2=null;
PreparedStatement pr1=null; 
 ResultSet rs1=null;
  ResultSet rs2=null;
int i=0;
int j=0;
 try{
 
 con1=DriverManager.getConnection(connectionUrl,userId,password);
 st2=con1.createStatement();
String sql="SELECT * FROM userdb2";
rs2=st2.executeQuery(sql);

while(rs2.next()){
 i++;
}
 }
catch (Exception e) 
    {
e.printStackTrace();
    }
 

 try{ 
String a=request.getParameter("usd");  
String b=request.getParameter("psd");
con1=DriverManager.getConnection(connectionUrl,userId,password);
 st1=con1.createStatement();
String sql="SELECT * FROM userdb2";
 String pa ="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$";
 Pattern pa1=Pattern.compile(pa);
int pla=1;       
 boolean found = pa1.matcher(b).lookingAt( );
        String sql2="SELECT * FROM userdb2 WHERE userid="+a+"password="+b+"";
 rs1=st1.executeQuery(sql);
 if(pla==1){ 
        if(found){
            
     
     
while(rs1.next()){
j++;
    if(a.equals(rs1.getString("userid")) && b.equals(rs1.getString("password")))
{ 
        %>
  pla++;
        <jsp:forward page="index.jsp"/>
        
<%
 
}
else {

if(j==i){
%>
<jsp:forward page="errorlogin.jsp"/>

       
<%
    }
}
}
}else{
%>
<%="wrong pattern"%>

<%}

} 
else{
%>
        <jsp:forward page="index.jsp"/>

<%
}
}

  catch (Exception e) 
    {
e.printStackTrace();
    }







        
        
        
        
        %>
        
        
    </body>
</html>
