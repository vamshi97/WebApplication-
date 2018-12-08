<%-- 
    Document   : listuser1
    Created on : 26 Feb, 2018, 9:38:18 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dyno1.Dyna" %>
<%@page import="UserBean.Bean"%>
<%@ page import="java.util.*"%>

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RECORD INFO</title>
                <jsp:include page="navbar.jsp"></jsp:include>

    </head>
    <body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>



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
int number=0;
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;


%>
<h2 align="center"><font><strong>Retrieved data from database in jsp</strong></font></h2>
<div class="container">
  <table class="table table-striped">
      <thead style="background-color:red">
<tr>
<th><b>ID</b></th>
<th><b>NO</b></th>
<th><b>DATETIME</b></th>
<th><b>SEQUENCE NO</b></th>
<th><b>COUNTRY</b></th>
<th><b>REGION</b></th>

</tr>
</thead>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
Statement s2  =null;
s2=connection.createStatement();
String sql ="SELECT * FROM iplog";
int as=0;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>   
<tbody >
<tr style="background-color:blueviolet">

<td><%=resultSet.getString("ip_int") %></td>
<td><%=resultSet.getString("ipno") %></td>
<td><%=resultSet.getString("datetime") %></td>
<td><%=resultSet.getString("seqno") %></td>

<td><%=resultSet.getString("out_country") %></td>
<td><%=resultSet.getString("out_region") %></td>

</tr>
</tbody>
<% 
}



} 
catch (Exception e) {
e.printStackTrace();
}



%>



</table>
</div>
  <%
  int indnum=0;
 
   try{
        Statement st = connection.createStatement();

        ResultSet rs3 = st.executeQuery("SELECT COUNT(out_country) AS count FROM iplog WHERE out_country='India(IN)'");

        while(rs3.next()){
            indnum = rs3.getInt("count");
        }
        
    } catch (SQLException e){
        e.printStackTrace();
    }     
  
  %>
<%
 int nonindnum=0;
       try{
        Statement st1 = connection.createStatement();

            ResultSet rs4 = st1.executeQuery("SELECT COUNT(out_country) AS count2 FROM iplog WHERE NOT out_country='India(IN)' ");

        while(rs4.next()){
            nonindnum = rs4.getInt("count2");
        }
        
    } catch (SQLException e){
        e.printStackTrace();
    }  
    %>

<%
 int japnum=0;
       try{
        Statement st1 = connection.createStatement();

            ResultSet rs4 = st1.executeQuery("SELECT COUNT(out_country) AS count3 FROM iplog WHERE  out_country='Japan(JP)' ");

        while(rs4.next()){
            japnum = rs4.getInt("count3");
        }
        
    } catch (SQLException e){
        e.printStackTrace();
    }  
    %>

<%
 int ausnum=0;
       try{
        Statement st1 = connection.createStatement();

            ResultSet rs4 = st1.executeQuery("SELECT COUNT(out_country) AS count4 FROM iplog WHERE  out_country='Australia(AU)' ");

        while(rs4.next()){
            ausnum = rs4.getInt("count4");
        }
        
    } catch (SQLException e){
        e.printStackTrace();
    }  
    %>


<%
 int asinum=0;
       try{
        Statement st1 = connection.createStatement();

            ResultSet rs4 = st1.executeQuery("SELECT COUNT(out_country) AS count5 FROM iplog WHERE  out_country='Asia/Pacific Region(AP)' ");

        while(rs4.next()){
            asinum = rs4.getInt("count5");
        }
        
    } catch (SQLException e){
        e.printStackTrace();
    }%>
   
    

<%
 int usnum=0;
       try{
        Statement st1 = connection.createStatement();

            ResultSet rs4 = st1.executeQuery("SELECT COUNT(out_country) AS count5 FROM iplog WHERE  out_country='United States(US)' ");

        while(rs4.next()){
         usnum = rs4.getInt("count5");
        }
        
    } catch (SQLException e){
        e.printStackTrace();
    }
    %>




    

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js">
    
</script> 
<script type="text/javascript">
var b=<%=indnum%>;
var f=<%=nonindnum%>;
var x=<%=japnum%>;
var y=<%=ausnum%>;
var z=<%=asinum%>;
var w=<%=usnum%>;
google.charts.load('upcoming', {'packages':['corechart']});

google.charts.setOnLoadCallback(drawChart1);
function drawChart1() {
        var piedata = new google.visualization.DataTable();
        
        piedata.addColumn('string', 'country');
        piedata.addColumn('number', 'Slices');
        
        piedata.addRows([ 
          ['INDIA',b ],
        ['USA',w],
           ['JAPAN', x],
           ['AUSTRALIA', y],
            ['ASIA', z],
        ]);
         
         var histogramdata = google.visualization.arrayToDataTable([
          ['COUNTRY', 'total'],
          ['INDIA',b ],
          ['USA',w],
          ['JAPAN', x],
          ['AUSTRALIA', y],
          ['ASIA', z],
          ]);
          var histogramoptions = {
          title: 'COUNTRY HISTOGRAMS',
          'width':400,
          'height':300,
           };
        
        var pieoptions = {'title':'COUNTRY PIE CHART',
           'width':1200,
           'height':300,
            colors: ['red', 'green','blue','cyan','yellow']};
               
                var datab = google.visualization.arrayToDataTable([
        ['COUNTRY', 'RECORDS',{ role: 'style' }],
        ['INDIA',b,'color: blue'],
        ['USA', w,' color:red'],
        ['JAPAN',x,'color: lime'],
        ['AUSTRALIA',y,'color:pink' ],
        ['ASIA/PACIFIC',z,'color:green']
      ]);

      var optionsb = {
        title: 'BAR CHART',
        chartArea: {width: '50%'},
       
        hAxis: {
          title: 'NO OF RECORDS',
          minValue: 0,

        },
        vAxis: {
          title: 'COUNTRY',
                     colors :['red', 'green','blue','cyan','yellow'],
        }
      };



 var datac = google.visualization.arrayToDataTable([
          ['COUNTRY',  'RECORDS',{ role: 'style' }],
             ['INDIA',b,'color: blue'],
        ['USA', w,' color:red'],
        ['JAPAN',x,'color: lime'],
        ['AUSTRALIA',y,'color:pink' ],
        ['ASIA/PACIFIC',z,'color:green']
        ]);

        var optionsc = {
          title: 'LINE CHART',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart3 = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart3.draw(datac, optionsc);

      var chart2 = new google.visualization.BarChart(document.getElementById('chart_div3'));

      chart2.draw(datab, optionsb);
              
 
  
        
       
        
        
        
        var chart1 = new google.visualization.PieChart(document.getElementById('chart_div'));
         chart1.draw(piedata, pieoptions);
        var chart = new google.visualization.Histogram(document.getElementById('chart_div2'));
        chart.draw(histogramdata, histogramoptions);
      }
    </script>
   
    
      <div id="chart_div"></div> 
      <div id="chart_div3"></div>
      <div id="curve_chart"></div>
    </body>
    

     
      
      
      
 
</html>
