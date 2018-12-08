package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.time.*;
import java.time.temporal.ChronoField;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html >\n");
      out.write("    \n");
      out.write("    <head >\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\n");
      out.write("    <bR>\n");
      out.write("    <br>\n");
      out.write("    <link rel=\"stylesheet\" href=\"bootstrap/css/bootstrap.min.css\"/>\n");
      out.write("<link rel=\"stylesheet\" href=\"bootstrap/css/bootstrap-theme.min.css\"/>\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("           <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\">\n");
      out.write("               \n");
      out.write("           </script>\n");
      out.write("\n");
      out.write("      \n");
      out.write("           <br>\n");
      out.write("                \n");
      out.write("        ");

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

      out.write(" \n");
      out.write("<!--\n");
      out.write("<div class=\"row\">\n");
      out.write("            <div class=\"col-xs-5\">\n");
      out.write("        <div class=\"panel panel-info\">\n");
      out.write("            <div class=\"panel-heading\"><em>TOTAL NO OF VISITS </em><br></div>\n");
      out.write("            <h3><div class=\"panel-body\"><= hitsCount%><br><br></div></h3>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("            <br>\n");
      out.write(" \n");
      out.write("    <p>Total number of visits:<h1> <= hitsCount%></h1>\n");
      out.write("         <=\"monday hits:\"%>    <h1>   <=mon%></h1>\n");
      out.write("  \n");
      out.write("         <=\"tuesday hits:\"%> <h1>   <=tue %></h1>\n");
      out.write("         \n");
      out.write("         <=\"wednesday hits:\"%>    \n");
      out.write("         <h1>   <=wed%></h1> \n");
      out.write("     <=\"thurday hits:\"%>       \n");
      out.write("     <h1>   <=thu%></h1> \n");
      out.write("  <=\"friday hits:\"%>    \n");
      out.write("  <h1>   <=fri%></h1>\n");
      out.write("        <=\"saturday hits:\"%>      \n");
      out.write("        <h1>   <=sat%></h1>\n");
      out.write("\n");
      out.write("    </p>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("        <a href=\"listuser2.jsp\">Display</a>\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("     \n");
      out.write("   -->\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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



      out.write("<!--\n");
      out.write("<h2 align=\"center\"><font><strong>Retrieve data from database in jsp</strong></font></h2>\n");
      out.write("<div class=\"container\">\n");
      out.write("  <table class=\"table table-striped\">\n");
      out.write("      <thead style=\"background-color:red\">\n");
      out.write("<tr>\n");
      out.write("<th><b>id</b></th>\n");
      out.write("<th><b>no</b></th>\n");
      out.write("<th><b>datetime</b></th>\n");
      out.write("<th><b>seqno</b></th>\n");
      out.write("<th><b>Country</b></th>\n");
      out.write("<th><b>Region</b></th>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("</thead>\n");
      out.write("-->\n");

try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
Statement s2  =null;
s2=connection.createStatement();
String sql ="SELECT * FROM iplog";
int as=0;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      out.write(" <!--  \n");
      out.write("<tbody >\n");
      out.write("<tr style=\"background-color:blueviolet\">\n");
      out.write("\n");
      out.write("<td><=resultSet.getString(\"ip_int\") %></td>\n");
      out.write("<td><=resultSet.getString(\"ipno\") %></td>\n");
      out.write("<td><=resultSet.getString(\"datetime\") %></td>\n");
      out.write("<td><=resultSet.getString(\"seqno\") %></td>\n");
      out.write("\n");
      out.write("<td><=resultSet.getString(\"out_country\") %></td>\n");
      out.write("<td><=resultSet.getString(\"out_region\") %></td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("</tbody>\n");
      out.write("-->\n");
 
}



} 
catch (Exception e) {
e.printStackTrace();
}




      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("  ");

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
  
  
      out.write('\n');

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
    
      out.write('\n');
      out.write('\n');

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
    
      out.write('\n');
      out.write('\n');

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
    
      out.write("\n");
      out.write("\n");
      out.write("\n");

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
    
      out.write("\n");
      out.write("    \n");

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
    
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("    <div class=\"row\" >\n");
      out.write("        <div class=\"col-sm-6\" >\n");
      out.write("            \n");
      out.write("             \n");
      out.write("    <a href=\"listuser1.jsp\"> <P><H3>TOTAL NO OF RECORDS :");
      out.print(indnum+nonindnum);
      out.write("</h3></p></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("<a  href=\"indiadata.jsp\">\n");
      out.write("    <p id =\"test\">  INDIA: ");
      out.print(indnum);
      out.write("</p></a>\n");
      out.write("    <a href=\"nonindiadata.jsp\"><p>NON-INDIA: ");
      out.print(nonindnum);
      out.write("</p></a>\n");
      out.write("<a href=\"japandata.jsp\">\n");
      out.write("<p>JAPAN: ");
      out.print(japnum);
      out.write("</p></a>\n");
      out.write("<a href=\"australiadata.jsp\">\n");
      out.write("\n");
      out.write("    <p>AUSTRALIA: ");
      out.print(ausnum);
      out.write("</p></a>\n");
      out.write("<a href=\"asiadata.jsp\">\n");
      out.write("\n");
      out.write("    <p>ASIA/PACIFIC: ");
      out.print(asinum);
      out.write("</p></a>\n");
      out.write("\n");
      out.write("<a href=\"usdata.jsp\">\n");
      out.write("\n");
      out.write("    <p>USA: ");
      out.print(usnum);
      out.write("</p></a>\n");
      out.write("    \n");
      out.write("\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-6\" >\n");
      out.write("            <div id=\"rec\" class=\"carousel slide vertical\" data-ride=\"carousel\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <!--indicaters or dots-->\n");
      out.write("                <ol class=\"carousel-indicators\">\n");
      out.write("    <li data-target=\"#rec\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("    <li data-target=\"#rec\" data-slide-to=\"1\"></li>\n");
      out.write("  <li data-target=\"#rec\" data-slide-to=\"2\"></li>\n");
      out.write("  <li data-target=\"#rec\" data-slide-to=\"3\"></li>\n");
      out.write("  <li data-target=\"#rec\" data-slide-to=\"4\"></li>\n");
      out.write("\n");
      out.write("  </ol>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <!--IMAGES AND SLIDES                  -->\n");
      out.write("                <div class=\"carousel-inner\" role=\"listbox\"><a href=\"listuser1.jsp\">\n");
      out.write("                    <div class=\"item active\" style=\"background-color: black\">\n");
      out.write("                        \n");
      out.write("                    <img src=\"totalimg.png\" alt =\"one\"/>TOTAL\n");
      out.write("                    <div class=\"carousel-caption center-block\">\n");
      out.write("                        <h1>");
      out.print(indnum+nonindnum);
      out.write("</h1>\n");
      out.write("                    </div>\n");
      out.write("                    </a>\n");
      out.write("                </div> <a href=\"indiadata.jsp\">\n");
      out.write("                <div class=\"item\" style=\"background-color: black\">\n");
      out.write("                    <img src=\"indhigimg.jpg\" alt =\"two\"/>INDIA\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h1>");
      out.print(indnum);
      out.write("</h1>\n");
      out.write("                    </div></a>\n");
      out.write("                </div><a href=\"japandata.jsp\">\n");
      out.write("                      <div class=\"item\" style=\"background-color: black\">\n");
      out.write("                    <img src=\"japhig.jpg\" alt =\"one\"/>JAPAN\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h1>");
      out.print(japnum);
      out.write("</h1>\n");
      out.write("                    </div></a>\n");
      out.write("                </div><a href=\"australiadata.jsp\">  \n");
      out.write("                    <div class=\"item\" style=\"background-color: black\">\n");
      out.write("                    <img src=\"aushigimg.jpg\" alt =\"one\"/>AUSTRALIA\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h1>");
      out.print(ausnum);
      out.write("</h1>\n");
      out.write("                    </div></a>\n");
      out.write("                </div> <a href=\"usdata.jsp\">\n");
      out.write("                    <div class=\"item\" style=\"background-color: black\">\n");
      out.write("                    <img src=\"ushigimg.jpg\" alt =\"one\"/>USA\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h1>");
      out.print(usnum);
      out.write("</h1>\n");
      out.write("                    </div></a>\n");
      out.write("                </div> <a href=\"asiadata.jsp\"> <div class=\"item\" style=\"background-color: black\">\n");
      out.write("                    <img src=\"asihigimg.jpg\" alt =\"one\"/>ASIA/PACIFIC\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h1>");
      out.print(asinum);
      out.write("</h1>\n");
      out.write("                    </div></a>\n");
      out.write("                </div>\n");
      out.write("                </div>   \n");
      out.write("         \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <!-- ARROWS TO HOVER BETWEEN SLIDES      -->\n");
      out.write("                <a class=\"left carousel-control\" href=\"#rec\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                    <span class=\"glyphicon glyphicon-chevron-left\" >  </span>\n");
      out.write("                    <span class=\"sr-only\">PREVIOUS</span>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </a>\n");
      out.write("             \n");
      out.write("            \n");
      out.write("                <a class=\"right carousel-control\" href=\"#rec\" role=\"button\" data-slide=\"next\">\n");
      out.write("                    <span class=\"glyphicon glyphicon-chevron-right\" >  </span>\n");
      out.write("                    <span class=\"sr-only\">NEXT</span>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </a> \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </div>   \n");
      out.write("</div>\n");
      out.write("</div> \n");
      out.write("   \n");
      out.write("<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\">\n");
      out.write("    \n");
      out.write("</script><!-- \n");
      out.write("<div class=\"container\">\n");
      out.write("  <table class=\"table table-striped\">\n");
      out.write("      <thead >\n");
      out.write("<tr>\n");
      out.write("<th><b>TOTAL</b></th>\n");
      out.write("<th><b>INDIA</b></th>\n");
      out.write("<th><b>NONINDIA</b></th>\n");
      out.write("<th><b>JAPAN</b></th>\n");
      out.write("<th><b>AUSTRALIA</b></th>\n");
      out.write("<th><b>ASIA</b></th>\n");
      out.write("<th><b>USA</b></th>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("</thead>\n");
      out.write("<tbody >\n");
      out.write("<tr >\n");
      out.write("\n");
      out.write("<td><=indnum+nonindnum %></td>\n");
      out.write("<td><=indnum %></td>\n");
      out.write("<td><=nonindnum%></td>\n");
      out.write("<td><=japnum %></td>\n");
      out.write("\n");
      out.write("<td><=ausnum %></td>\n");
      out.write("<td><=asinum %></td>\n");
      out.write("<td><=usnum %></td> \n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("</tbody>\n");
      out.write("     -->\n");
      out.write("          </body>\n");
      out.write("          <script>\n");
      out.write("              $('.carousel').carousel({\n");
      out.write("   interval: 3000\n");
      out.write("})\n");
      out.write("          </script>\n");
      out.write("          <style> \n");
      out.write("\n");
      out.write(".carousel.vertical .item {\n");
      out.write("   -webkit-transition: 0.6s ease-in-out top;\n");
      out.write("   -moz-transition: 0.6s ease-in-out top;\n");
      out.write("   -ms-transition: 0.6s ease-in-out top;\n");
      out.write("   -o-transition: 0.6s ease-in-out top;\n");
      out.write("   transition: 0.6s ease-in-out top;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".carousel.vertical .active {\n");
      out.write("   top: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".carousel.vertical .next {\n");
      out.write("   top: 400px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".carousel.vertical .prev {\n");
      out.write("   top: -400px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".carousel.vertical .next.left,\n");
      out.write(".carousel.vertical .prev.right {\n");
      out.write("   top: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".carousel.vertical .active.left {\n");
      out.write("   top: -400px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".carousel.vertical .active.right {\n");
      out.write("   top: 400px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".carousel.vertical .item {\n");
      out.write("   left: 0;\n");
      out.write("}\n");
      out.write("              </style>\n");
      out.write("              \n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
