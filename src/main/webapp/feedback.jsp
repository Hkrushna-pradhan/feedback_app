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
    
    <div class="content_container py-4 d-flex flex-column justify-content-center align-items-center"> 
    	<h3>fill the feedback form</h3>
    	
    	<form action ="<%=application.getContextPath() %>/feedback" method ="post">
  <div class="mb-3">
    <label for="email" class="form-label">Email address</label>
    <input placeholder="enter your email" name="email" type="email" class="form-control"  aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="phone" class="form-label">Phone Number</label>
    <input name="phone" placeholder = "Enter your Phoneno"type="text" class="form-control" >
  </div>
  <div class="mb-3">
    <label for="feedback_message" class="form-label">Your feedback Message</label>
    <textarea name="feedback_message" rows="10" placeholder = "Enter your feedback" type="text" class="form-control" ></textarea>
  </div>
   <div class ="container text-center">
   <button type="submit" class="btn btn-warning">Submit</button>
   <button type="reset" class="btn btn-warning">Reset</button>
   </div>
</form>
    	
    </div>
    
    <%@include file="scripts.jsp" %>
  </body>
</html>