

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
            <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INDIA</title>
          <jsp:include page="navbar.jsp"></jsp:include>

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
  </head>



    <body>

<h2 align="center"><font><strong>Retrieve data from database </strong></font></h2>
<div class="container">
  <table class="table table-striped">
      <thead style="background-color:red">
<tr>
<th><b>id</b></th>
<th><b>no</b></th>
<th><b>datetime</b></th>
<th><b>seqno</b></th>
<th><b>Country</b></th>
<th><b>Region</b></th>

</tr>
</thead>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
Statement s2  =null;
s2=connection.createStatement();
String sql ="SELECT * FROM iplog WHERE out_country='India(IN)'";
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

    </body>

    

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js">
    
</script> 
<script type="text/javascript">
var b1=<%=indnum%>;
var a1=<%=nonindnum%>;

google.charts.load('upcoming', {'packages':['corechart']});

google.charts.setOnLoadCallback(drawChart1);
function drawChart1() {
        var piedata = new google.visualization.DataTable();
        
        piedata.addColumn('string', 'country');
        piedata.addColumn('number', 'Slices');
        
        piedata.addRows([ 
          ['INDIA',b1],
          ['NON-INDIA', a1],
         
        ]);
         
         var histogramdata = google.visualization.arrayToDataTable([
          ['COUNTRY', 'total'],
          ['INDIA',a1],
          ['NON-INDIA', b1],
         
          ]);
           
         
         var histogramoptions = {
          title: 'COUNTRY HISTOGRAMS',
        
          'width':400,
          'height':300,
          
        };
        
        var pieoptions = {'title':'COUNTRY PIE CHART',
           'width':1200,
           'height':300,
            colors: ['red', 'green']};
        
        
                     
        
             
            
          var datab = google.visualization.arrayToDataTable([
        ['COUNTRY', 'RECORDS',{ role: 'style' }],
    
        ['INDIA',a1,'color:pink' ],
        ['NON-INDIA',b1,'color:green']
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
        }
      };



 var datac = google.visualization.arrayToDataTable([
          ['COUNTRY',  'RECORDS',{ role: 'style' }],
          ['INDIA',a1,'color:pink' ],
          ['NON-INDIA',b1,'color:green']
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
   
    
    
    </body>
    
      <div id="chart_div"></div>  <div id="chart_div3"></div>  
       <div id="curve_chart"></div>
</html>
