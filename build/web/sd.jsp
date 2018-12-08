<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
        <jsp:include page="navbar.jsp"></jsp:include>
        <div class="row">
            <div class="col-xs-3"> 
<form class="form form-group" method="post" action="datesorter.jsp"  id="s12" style="text-align:center" align="center">
                <label for="date">FROM</label> 
                <input type="date" class="form-control" placeholder="YEAR-MONTH-DAY" name="date" >
                </div>
            <DIV CLASS="col-xs-3">
               <label for="date1">TO</label> 
                <input type="date" class="form-control" placeholder="YEAR-MONTH-DAY" name="date1"  >
            </div><div class="col-xs-3"><br>
                <input class="btn btn-primary" type="submit" value="SEARCH" onclick="datesorter.jsp">
            </DIV>
            </form> 
        
   </div>   