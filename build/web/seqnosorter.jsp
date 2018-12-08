
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
int seq1=Integer.parseInt(request.getParameter("seq1"));
int seq2=Integer.parseInt(request.getParameter("seq2")); 
String driverName = "org.postgresql.Driver"; 
String connectionUrl = "jdbc:postgresql://localhost:5432/postgres";
String userId = "postgres";
String password = "system";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
PreparedStatement ps=null;

%>
  
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
Statement s2  =null;
s2=connection.createStatement();
String sql1 ="select * from iplog where seqno BETWEEN ? AND ?";
ps = connection.prepareStatement(sql1);
 ps.setInt(1,seq1); 
  ps.setInt(2,seq2);

        rs = ps.executeQuery(); 

while(rs.next())
{

 
%>   
<%=rs.getString(4)%> 
<br>
        <%  
 

}
}

catch (Exception e) {
e.printStackTrace();
} %>    </body>
</html> 