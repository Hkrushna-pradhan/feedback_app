<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>feedback form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
	<%@include file ="links.jsp" %>  
  </head>
  <body>
  	<%@include file="header.jsp" %>
    
    <div style ="height:80vh" class="content_container py-4 d-flex flex-column justify-content-center align-items-center"> 
    <a href="<%= application.getContextPath()%>/feedback.jsp"><button class="btn btn-light btn-lg"> Give us feedback</button></a> 
    </div>
    
    <%@include file="scripts.jsp" %>
  </body>
</html>