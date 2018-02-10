<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <script>

var hrf=window.location.href.substr(0,window.location.href.lastIndexOf("/"));
//alert(hrf)
function save()
{
	//alert(1)
	var firstname=document.getElementById("first_name").value;
	//alert(firstname)
	var lastname=document.getElementById("last_name").value;
	//alert(lastname)
	var email=document.getElementById("email").value;
	///alert(email)
	//var gender=document.getElementById("optradio").value;
	if(document.getElementById("male").checked){
		var gender=document.getElementById("male").value;
		//alert(gender)
	}
	else if(document.getElementById("female").checked){
		var gender=document.getElementById("female").value;
		//alert(gender)
	}
	//alert(phonenumber)
	var username=document.getElementById("user_name").value;
	//alert(address)
	var password=document.getElementById("user_password").value;
	//alert(password)
	//alert(3)


	var postData="first_name="+firstname+
	"&last_name="+lastname+
	"&email="+email+
	"&optradio="+gender+
	"&user_name="+username+
	"&user_password="+password;
	
	//alert(postData)
	 
	$.ajax({
		url :hrf+"/reg_save",
		type: "POST",
		data :postData ,
		success:function(data, textStatus, jqXHR) 
		{	
		alert("Success");	
		},
		error: function(jqXHR, textStatus, errorThrown) 
		{	
			alert("fail"); 
			
		}
		});

		
}
function func(){
	var type=document.getElementByName("gender");
	if(type[0].checked)
		{
		var val=type[0].value;
		alert(val);
		}
	elseif(type[1].checked)
	{
		var val=type[1].value;
		alert(val);
	}
}
</script>
 
</head>
<body>

	    <div class="container">

    <form class="well form-horizontal" action="/edit" method="post"  id="contact_form">
<fieldset>

<legend><center><h2><b>Registration</b></h2></center></legend><br>


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
    <label class="radio-inline"><input type="radio" id="male" value="Male" name="gender">Male</label>
    <label class="radio-inline"><input type="radio" id="female" value="Female" name="gender">Female</label>
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
    <button type="submit" onclick="javascript:return save()" class="btn btn-success" >SUBMIT <span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>

</fieldset>
</form>
</div>
    </div>
</body>
</html>