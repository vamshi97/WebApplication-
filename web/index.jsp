

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page  import="java.util.Date" %>
<%@page import="java.time.*"%>
<%@page import="java.time.temporal.ChronoField"%>
<!DOCTYPE html>
<html >
    
    <head >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="navbar.jsp"></jsp:include>
    <bR>
    <br>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
               
           </script>

      
           <br>
                
        <%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");//STATIC
  LocalDate localDate = LocalDate.now();  
   DayOfWeek dayOfWeek = DayOfWeek.from(localDate);  
                 int b=dayOfWeek.get(ChronoField.DAY_OF_WEEK);     
     Integer tue=(Integer)application.getAttribute("tuesdayhits");
     Integer mon=(Integer)application.getAttribute("mondayhits");
     Integer fri=(Integer)application.getAttribute("fridayhits");
     Integer wed=(Integer)application.getAttribute("wednesdayhits");
     Integer thu=(Integer)application.getAttribute("thursdayhits");
     Integer sat=(Integer)application.getAttribute("saturdayhits");
     Integer sun=(Integer)application.getAttribute("sundayhits");

         if(mon==null||mon==0)
         {
         mon=1;
         }
           if(tue==null||tue==0)
         {
         tue=1;
         }
               if(wed==null||wed==0)
         {
         wed =1;
         }
         if(thu==null||thu==0)
         {
         thu=1;
         }
      
            if(sun==null||sun==0)
         {
         sun=1;
         }
            if(thu==null||thu==0)
         {
         thu=1;
         }
            if(fri==null||fri==0)
         {
         fri=1;
         }
                if(sat==null||sat==0)
         {
         sat =1;
         }
              if(wed==null||wed==0)
         {
         wed =1;
         }
           
         if( hitsCount ==null || hitsCount == 0 ) {
            out.println("Welcome to my website!");
           hitsCount = 1;
                   
           }
       
         else
         {
            
            out.println("Welcome back to my website!");
            hitsCount += 1;
         }
        if(mon!=0&&b==1){
            out.println("today is monday\n");
            mon=mon+1;
            }
        if(tue!=0&&b==2)
            {
            out.println("today is tuesday\n");
            tue=tue+1;
            }
          
        if(wed!=0&&b==3)
        {
            out.println("today is wednesday\n");
            wed=wed+1;
            }
         if(thu!=0&&b==4)
            {
            out.println("today is thursday\n");
            thu=thu+1;
            }
        
            if(fri!=0&&b==5)
            {
            out.println("today is friday\n");
            fri=fri+1;
            }
            if(sat!=0&&b==6){
            out.println("today is saturday\n");
            sat=sat+1;
            }
            if(sun!=0&&b==0)
            {
            out.println("today is sunday\n");
            sun=sun+1; 
            }
           
         
         application.setAttribute("hitCounter",hitsCount );
        application.setAttribute("mondayhits",mon);      
         application.setAttribute("tuesdayhits",tue);
        application.setAttribute("wednesdayhits",wed);      
          application.setAttribute("thursdayhits",thu);    
  application.setAttribute("fridayhits",fri);    
  application.setAttribute("saturdayhits",sat);    
       application.setAttribute("sundayhits",sun);    
%> 
<!--
<div class="row">
            <div class="col-xs-5">
        <div class="panel panel-info">
            <div class="panel-heading"><em>TOTAL NO OF VISITS </em><br></div>
            <h3><div class="panel-body"><= hitsCount%><br><br></div></h3>
            </div>
            </div>
        </div>
            <br>
 
    <p>Total number of visits:<h1> <= hitsCount%></h1>
         <="monday hits:"%>    <h1>   <=mon%></h1>
  
         <="tuesday hits:"%> <h1>   <=tue %></h1>
         
         <="wednesday hits:"%>    
         <h1>   <=wed%></h1> 
     <="thurday hits:"%>       
     <h1>   <=thu%></h1> 
  <="friday hits:"%>    
  <h1>   <=fri%></h1>
        <="saturday hits:"%>      
        <h1>   <=sat%></h1>

    </p>
    
    </head>

        <a href="listuser2.jsp">Display</a>
</head>
    <body>
     
   -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    

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


%><!--
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
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
-->
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
%> <!--  
<tbody >
<tr style="background-color:blueviolet">

<td><=resultSet.getString("ip_int") %></td>
<td><=resultSet.getString("ipno") %></td>
<td><=resultSet.getString("datetime") %></td>
<td><=resultSet.getString("seqno") %></td>

<td><=resultSet.getString("out_country") %></td>
<td><=resultSet.getString("out_region") %></td>

</tr>
</tbody>
-->
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
    }  
    %>
    
<%
 int usnum=0;
       try{
        Statement st1 = connection.createStatement();

            ResultSet rs4 = st1.executeQuery("SELECT COUNT(out_country) AS count6 FROM iplog WHERE  out_country='United States(US)' ");

        while(rs4.next()){
            usnum = rs4.getInt("count6");
        }
        
    } catch (SQLException e){
        e.printStackTrace();
    }  
    %>
    <div class="container">
    <div class="row" >
        <div class="col-sm-6" >
            
             
    <a href="listuser1.jsp"> <P><H3>TOTAL NO OF RECORDS :<%=indnum+nonindnum%></h3></p></a>


<a  href="indiadata.jsp">
    <p id ="test">  INDIA: <%=indnum%></p></a>
    <a href="nonindiadata.jsp"><p>NON-INDIA: <%=nonindnum%></p></a>
<a href="japandata.jsp">
<p>JAPAN: <%=japnum%></p></a>
<a href="australiadata.jsp">

    <p>AUSTRALIA: <%=ausnum%></p></a>
<a href="asiadata.jsp">

    <p>ASIA/PACIFIC: <%=asinum%></p></a>

<a href="usdata.jsp">

    <p>USA: <%=usnum%></p></a>
    

            
        </div>
        <div class="col-sm-6" >
            <div id="rec" class="carousel slide vertical" data-ride="carousel">
                
                
                <!--indicaters or dots-->
                <ol class="carousel-indicators">
    <li data-target="#rec" data-slide-to="0" class="active"></li>
    <li data-target="#rec" data-slide-to="1"></li>
  <li data-target="#rec" data-slide-to="2"></li>
  <li data-target="#rec" data-slide-to="3"></li>
  <li data-target="#rec" data-slide-to="4"></li>

  </ol>
                
                
                 
                
                
                
                
                
                <!--IMAGES AND SLIDES                  -->
                <div class="carousel-inner" role="listbox"><a href="listuser1.jsp">
                    <div class="item active" style="background-color: black">
                        
                    <img src="totalimg.png" alt ="one"/>TOTAL
                    <div class="carousel-caption center-block">
                        <h1><%=indnum+nonindnum%></h1>
                    </div>
                    </a>
                </div> <a href="indiadata.jsp">
                <div class="item" style="background-color: black">
                    <img src="indhigimg.jpg" alt ="two"/>INDIA
                    <div class="carousel-caption">
                        <h1><%=indnum%></h1>
                    </div></a>
                </div><a href="japandata.jsp">
                      <div class="item" style="background-color: black">
                    <img src="japhig.jpg" alt ="one"/>JAPAN
                    <div class="carousel-caption">
                        <h1><%=japnum%></h1>
                    </div></a>
                </div><a href="australiadata.jsp">  
                    <div class="item" style="background-color: black">
                    <img src="aushigimg.jpg" alt ="one"/>AUSTRALIA
                    <div class="carousel-caption">
                        <h1><%=ausnum%></h1>
                    </div></a>
                </div> <a href="usdata.jsp">
                    <div class="item" style="background-color: black">
                    <img src="ushigimg.jpg" alt ="one"/>USA
                    <div class="carousel-caption">
                        <h1><%=usnum%></h1>
                    </div></a>
                </div> <a href="asiadata.jsp"> <div class="item" style="background-color: black">
                    <img src="asihigimg.jpg" alt ="one"/>ASIA/PACIFIC
                    <div class="carousel-caption">
                        <h1><%=asinum%></h1>
                    </div></a>
                </div>
                </div>   
         
            
            
            
            
            <!-- ARROWS TO HOVER BETWEEN SLIDES      -->
                <a class="left carousel-control" href="#rec" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" >  </span>
                    <span class="sr-only">PREVIOUS</span>
                    
                    
                </a>
             
            
                <a class="right carousel-control" href="#rec" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" >  </span>
                    <span class="sr-only">NEXT</span>
                    
                    
                </a> 
            
            
            
            
            
            
            
            
            
            
            
            
            
        </div>
    </div>   
</div>
</div> 
   
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js">
    
</script><!-- 
<div class="container">
  <table class="table table-striped">
      <thead >
<tr>
<th><b>TOTAL</b></th>
<th><b>INDIA</b></th>
<th><b>NONINDIA</b></th>
<th><b>JAPAN</b></th>
<th><b>AUSTRALIA</b></th>
<th><b>ASIA</b></th>
<th><b>USA</b></th>

</tr>
</thead>
<tbody >
<tr >

<td><=indnum+nonindnum %></td>
<td><=indnum %></td>
<td><=nonindnum%></td>
<td><=japnum %></td>

<td><=ausnum %></td>
<td><=asinum %></td>
<td><=usnum %></td> 

</tr>
</tbody>
     -->
          </body>
          <script>
              $('.carousel').carousel({
   interval: 3000
})
          </script>
          <style> 

.carousel.vertical .item {
   -webkit-transition: 0.6s ease-in-out top;
   -moz-transition: 0.6s ease-in-out top;
   -ms-transition: 0.6s ease-in-out top;
   -o-transition: 0.6s ease-in-out top;
   transition: 0.6s ease-in-out top;
}

.carousel.vertical .active {
   top: 0;
}

.carousel.vertical .next {
   top: 400px;
}

.carousel.vertical .prev {
   top: -400px;
}

.carousel.vertical .next.left,
.carousel.vertical .prev.right {
   top: 0;
}

.carousel.vertical .active.left {
   top: -400px;
}

.carousel.vertical .active.right {
   top: 400px;
}

.carousel.vertical .item {
   left: 0;
}
              </style>
              
</html>
