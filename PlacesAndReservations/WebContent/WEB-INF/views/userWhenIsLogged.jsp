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
	
	<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-4">
		<div class="form-group">
  	<label for="usr">Numele :</label>
 	 <input type="text" class="form-control" id="nume">
	</div>
	<div class="form-group">
	  <label for="mese">Numar de mese:</label>
  		<input type="text" class="form-control" id="mese">
	</div>
	
	<button class="btn btn-primary" onclick="sendDataToServer()">Trimite</button>
	<button class="btn btn-danger" onclick="getDataFromServer()">Test</button>
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
	
	
	<div id="restaurantContainer">
		
	</div>
	
</body>

<script>
	$(document).ready(function(){
		getAllRestaurants();
	});

	function sendDataToServer() {
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
	}

	function getDataFromServer() {
		var ctx = "${pageContext.request.contextPath}";

		$.ajax({
			method : "GET",
			url : ctx + "/api/test/",
			success : function(response) {
			for(var i in response)
				$("#restaurantContainer").append(response[i].nume);
			},
			error : function() {
				alert("eroare");
			}
		});
		
	}
	
	
		function getAllRestaurants() {
		var ctx = "${pageContext.request.contextPath}";
		alert("intra");
		$.ajax({
			method : "GET",
			url : ctx + "/api/getAllRestaurants/",
			success : function(response) {
			for(var i in response)
				$("#restaurantContainer").append(response[i].nume);
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