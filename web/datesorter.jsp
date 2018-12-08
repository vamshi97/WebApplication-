<%-- 
    Document   : datesorter
    Created on : 25 Mar, 2018, 12:40:12 PM
    Author     : HP
--%>

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
String date=request.getParameter("date");
String date1=request.getParameter("date1");
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
  <div class="container">
  <table class="table table-striped">
      <thead style="background-color:red">
<tr>
<th><b>ID</b></th>
<th><b>NO</b></th>
<th><b>DATETIME</b></th>
<th><b>SEQNO</b></th>
<th><b>COUNTRY</b></th>
<th><b>REGION</b></th>

</tr>
</thead>
<%
    String a="00-00-000";
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
Statement s2  =null;
s2=connection.createStatement();
String sql1 ="select * from iplog where  to_char(DATE(datetime),'YYYY-mm-dd') BETWEEN ? AND ?";
ps = connection.prepareStatement(sql1);
 ps.setString(1,date);
  ps.setString(2,date1);

        rs = ps.executeQuery(); 

while(rs.next())
{

 
%>   

  
<tbody >
<tr style="background-color:blueviolet">

<td><%=rs.getString("ip_int") %></td> 
<td><%=rs.getString("ipno") %></td>
<td><%=rs.getString("datetime") %></td>
<td><%=rs.getString("seqno") %></td>

<td><%=rs.getString("out_country") %></td>
<td><%=rs.getString("out_region") %></td>

</tr>
</tbody>
        <%  
 

}
}

catch (Exception e) {
e.printStackTrace();
} %>    </body>
</html> 
