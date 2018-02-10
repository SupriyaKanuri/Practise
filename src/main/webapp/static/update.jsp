<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <% String id=request.getParameter("edit_id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<script>
var hrf=window.location.href.substr(0,window.location.href.lastIndexOf("/"));
$(document).ready(function() 
{
	 //alert(55)
	 var regid=document.getElementById("editid").value;
	 
	 //alert(regid)
	  if(!(regid=="new") ||regid=="null") {
		 //alert(5)
			$.getJSON('http://localhost:8080/single_id?id='+regid, function(data) {
				
				$.each(data, function(i,f){
					//alert(f.firstname)
					  document.getElementById("first_name").value=f.firstname;
				     document.getElementById("last_name").value=f.lastname;
					 
					 document.getElementById("email").value=f.email;
					 
					  document.getElementById("optradio").value=f.gender;
					
					  document.getElementById("user_name").value=f.username; 
					  document.getElementById("user_password").value=f.password;
				});
				

			     	});
 
	  }
			
	 }); 

//alert(hrf)
function update()
{
	//alert(1)
	 	var id=document.getElementById("editid").value;
	//alert(id)
	var firstname=document.getElementById("first_name").value;
	//alert(firstname)
	var lastname=document.getElementById("last_name").value;
	//alert(lastname)
	var email=document.getElementById("email").value;
	///alert(email)
	var gender=document.getElementById("optradio").value;
	//alert(phonenumber)
	var username=document.getElementById("user_name").value;
	//alert(address)
	var password=document.getElementById("user_password").value;
	//alert(password)
	//alert(3)
 
	
	var postData="editid="+id+
				"&first_name="+firstname+
				"&last_name="+lastname+
				"&email="+email+
				"&optradio="+gender+
				"&user_name="+username+
				"&user_password="+password;
	
	//alert(postData)
	// alert(hrf)
	$.ajax({
		url :"http://localhost:8080/data_upadate",
		type: "POST",
		data :postData ,
		success:function(data, textStatus, jqXHR) 
		{	
		alert(data);		      			   
		},
		error: function(jqXHR, textStatus, errorThrown) 
		{	
			alert(data); 
		}
		});//ajax

}

	 </script>
<body>


	    <div class="container">

    <form class="well form-horizontal" action="/static/Listpractise.jsp" method="post"  id="contact_form">
<fieldset>

<legend><center><h2><b>Update Form</b></h2></center></legend><br>
 <input type="hidden" value='<%= id %>' name="editid" id="editid">


<div class="form-group">
  <label class="col-md-4 control-label">First Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="first_name" id="first_name" placeholder="First Name" class="form-control"  type="text">

    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Last Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="last_name" id="last_name" placeholder="Last Name" class="form-control"  type="text">
    </div>
  </div>
</div>

   <div class="form-group">
  <label class="col-md-4 control-label">E-Mail</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="email" id="email"  placeholder="E-Mail Address" class="form-control"  type="text">
    </div>
  </div>
</div>
  <div class="form-group">
  	<label class="col-md-4 control-label">Gender</label>
  	<div class="col-md-4 ">
    <label class="radio-inline"><input type="radio" id="optradio" name="optradio">Male</label>
    <label class="radio-inline"><input type="radio" id="optradio" name="optradio">Female</label>
   </div>
   </div>

<div class="form-group">
  <label class="col-md-4 control-label">User name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="user_name" id="user_name" placeholder="Username" class="form-control"  type="text">
    </div>
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" >Password</label> 
    <div class="col-md-4 inputGroupContainer">
    
  <input name="user_password" id="user_password" placeholder="Password" class="form-control"  type="password">
   
  </div>
</div>




<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    <button type="submit" onclick="javascript:return update()" class="btn btn-success" >SUBMIT <span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>

</fieldset>
</form>
</div>
    </div>

</body>
</html>