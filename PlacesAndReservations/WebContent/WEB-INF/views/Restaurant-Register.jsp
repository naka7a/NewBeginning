<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

    <script src="<c:url value="/resources/bootstrap/js/jquery-3.2.1.min.js" />"></script>

    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/fa/css/font-awesome.min.css" />" rel="stylesheet">
    
    
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>

</head>
<body>
	<div class="jumbotron" style="background-color:black;color:white;font-weight:bold;font-size:20pt">
	<i class="fa fa-camera-retro fa-lg"> Places And Reservations</i>
	</div>
	
	<h3>Restaurant View</h3>
	
	<!-- `RESTAURANT_ID` int AUTO_INCREMENT PRIMARY KEY,
`TELEFON` varchar(20) default null, x
`EMAIL` varchar(100) default null, x
`IMAGINE` blob default null, x
`NUME` varchar(100) DEFAULT NULL,   x
`ORAS` varchar(100) DEFAULT NULL,
`STRADA` varchar(100) DEFAULT NULL,
`NR` varchar(10) DEFAULT NULL,
`JUDET` varchar(100) DEFAULT NULL,
`TARA` varchar(100) DEFAULT NULL,
`DESCRIERE` varchar(2000) DEFAULT NULL x--> 
	
	<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-4">
	
	<div class="form-group">
  		 <label for="email">Email:</label>
 		 <input type="text" class="form-control" id="email">
	</div>
	<div class="form-group">
  		 <label for="password">Password:</label>
 		 <input type="password" class="form-control" id="password">
	</div>
	<div class="form-group">
  		 <label for="usr">Numele :</label>
 		 <input type="text" class="form-control" id="nume">
	</div>
		<div class="form-group">
  		 <label for="descriere">Descriere:</label>
 		 <input type="text" class="form-control" id="descriere">
	</div>
		<div class="form-group">
  		 <label for="telefon">Telefon:</label>
 		 <input type="text" class="form-control" id="telefon">
	</div>
		<div class="form-group">
  		 <label for="imagine">Imagine:</label>
 		 <input class="form-control" type="file" name="pic" id="image" accept="image/*">
	</div>
	<h4>Adresa</h4>
		<div class="form-group">
	  <label for="tara">Tara:</label>
  		<input type="text" class="form-control" id="tara">
	</div>
			<div class="form-group">
	    <label for="judet">Judet:</label>
  		<input type="text" class="form-control" id="judet">
	</div>
	<div class="form-group">
	  <label for="localitate">Localitate:</label>
  		<input type="text" class="form-control" id="localitate">
	</div>
		<div class="form-group">
	  <label for="strada">Strada:</label>
  		<input type="text" class="form-control" id="strada">
	</div>
		<div class="form-group">
	  <label for="nr">Numar:</label>
  		<input type="text" class="form-control" id="nr">
	</div>

	
	<button class="btn btn-primary" onclick="sendRegisterFormToServer()">Trimite</button>
	<button class="btn btn-danger" onclick="getDataFromServer()">Test</button>
		<button class="btn btn-danger" onclick="getUsersFromServer()">get users from server!</button>
			<button class="btn btn-danger" onclick="getUsersFromServer()">get users from server!</button>

	
	<div id="test">
		here:<!--  Text will be generated here-->
	</div>
	
		<div class="panel-default">
			<div class="panel-heading">Users List</div>
			<div class="panel-body" id="usersList">
				
			</div>
		</div>
		
</div>

<div class="col-md-2"></div>
<div class="col-md-4">
		<h3>Afacerea ta conteaza pentru noi!</h3>
</div>
	</div>
	
	
	
</body>

<script>
	

	function sendDataToServer() {
		var ctx = "${pageContext.request.contextPath}";

		var obj = {
			nume : $("#nume").val(),
			mese : $("#mese").val()
		};
		
		alert("daa");
		
		$.ajax({
			type : "POST",
			url : ctx + "/rest/receive/",
			data : JSON.stringify(obj),
			success : function(data) {
				alert("data has been sent");
			},
			error : function() {
				alert("error");
			}

		});
	}

	/*function sendDataToServer() {
		var ctx = "${pageContext.request.contextPath}";
		alert("daa");

		var obj = {

		};
		
		alert("daa");
		
		$.ajax({
			method : "POST",
			url : ctx + "/api/recive/",
			data : {
				"nume" : $("#nume").val(),
				"mese" : $("#mese").val()
			},
			success : function() {
				alert("data has been sent");
			},
			error : function() {
				alert("error");
			}

		});
	}*/
	
	function sendRegisterFormToServer(){
				var ctx = "${pageContext.request.contextPath}";
				$.ajax({
				method : "POST",
				url : ctx + "/api/postRestaurantRegistrationForm",
				data : {
					"email" : $("#email").val(),
					"password" : $("#password").val(),
					"nume" : $("#nume").val(),
					"descriere": $("#descriere").val(),
					"tara":$("#tara").val(),
					"judet":$("#judet").val(),
					"localitate":$("#localitate").val(),
					"strada":$("#strada").val(),
					"telefon":$("#telefon").val(),
					"numar" :$("#nr").val(),
					"imagine":$("#imagine").val()
				},
				success : function() {
					alert("data has been sent");
				},
				error : function() {
					alert("error");
				}

		});
				
	}

	function getDataFromServer() {
		var ctx = "${pageContext.request.contextPath}";

		$.ajax({
			method : "GET",
			url : ctx + "/api/test/",
			success : function(response) {
				$("#test").append(response);
			},
			error : function() {
				alert("eroare");
			}
		});
		
	}
	
	
		function getUsersFromServer() {
		var ctx = "${pageContext.request.contextPath}";

		$.ajax({
			method : "GET",
			url : ctx + "/api/getUsers/",
			success : function(response) {
				for (var i in response){
					$("#usersList").append(response[i].nume+" varsta:"+response[i].varsta);
				}
			},
			error : function() {
				alert("eroare");
			}
		});
		
		
		
	}
</script>
</html>