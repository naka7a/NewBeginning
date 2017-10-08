<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>NewBeginning</title>
	<!-- <link rel="stylesheet" href="normalize.css" type="text/css">
	<link rel="stylesheet" href="main.css" type="text/css"> -->
	<style>
		@import url('normalize.css')
		@import url('main.css')
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
</head>
<body>
	<header>
		<nav>
			<div class="info-top">
				<div class="search-field">
					<ul>
						<li class="place">
							<span class="search-icons">
							<svg id="places-svg" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" style="height: 14px; width: 14px; display: block; fill: currentColor;"><path d="M16,32A16,16,0,1,1,32,16,16,16,0,0,1,16,32ZM16,2A14,14,0,1,0,30,16,14,14,0,0,0,16,2Z" transform="translate(0 0)"/><polygon points="17.54 28.56 18.95 19.58 12.43 16.31 16.32 11.5 14.96 11.02 9.66 12.23 6.43 9.77 7.65 8.18 10.13 10.07 15.08 8.94 19.66 10.57 15.55 15.64 21.15 18.45 20.37 23.44 23.96 20.31 25.99 12.76 27.92 13.28 25.73 21.41 17.54 28.56"/><polygon points="10.48 25.18 8.51 24.79 9.18 21.4 5.13 21 5.33 19 11.56 19.63 10.48 25.18"/></svg></span>
						Anywhere</li>
						<li class="time">
							<span class="search-icons">
							<svg id="time-svg" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32.1 31.68" style="height: 14px; width: 14px; display: block; fill: currentColor;"><polygon points="23.82 21.82 17.05 15.26 17.05 5.68 15.05 5.68 15.05 16.1 22.43 23.26 23.82 21.82"/><path d="M6.15,25.74l0,0a14,14,0,0,1,7-23.66l-.4-2a16,16,0,0,0,3.2,31.68v0h.13a15.91,15.91,0,0,0,8.8-2.64l-1.11-1.67A14,14,0,0,1,6.15,25.74Z" transform="translate(0.05 -0.16)"/><path d="M32.05,15.85c0-.08,0-.17,0-.25s0-.07,0-.11c0-.42,0-.84-.07-1.25v0c0-.43-.1-.85-.18-1.26,0-.19-.09-.38-.13-.58s-.09-.45-.15-.67a15.93,15.93,0,0,0-4.12-7.16l0,0A16.11,16.11,0,0,0,19.15.16l-.4,2a14.15,14.15,0,0,1,10.82,10.1c0,.1,0,.2.07.29.07.26.13.53.18.8s.1.66.14,1c0,.05,0,.1,0,.15,0,.34.05.68.06,1,0,.05,0,.11,0,.16a13.91,13.91,0,0,1-2.31,7.92l1.67,1.1A15.89,15.89,0,0,0,32,15.85Z" transform="translate(0.05 -0.16)"/></svg></span>
						Anytime</li>
						<li class="people">1</li>
					</ul>
				</div>
				<div class="user-pannel">
					<div class="user-pannel-container">
						<span class="user-arrow">
							<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><path fill-rule="evenodd" d="M16.291 4.295a1 1 0 1 1 1.414 1.415l-8 7.995a1 1 0 0 1-1.414 0l-8-7.995a1 1 0 1 1 1.414-1.415l7.293 7.29 7.293-7.29z"></path></svg></span>
						<div class="user-profile"></div>
					</div>
				</div>
			</div>
		</nav>
	</header>

	<main>
		<div class="wrapper">
			<div class="rst-container">
				<div class="rst rst-1">
					<div class="rst-hero"></div>
					<div class="rst-info">
						<div id="test"></div>
						<!-- <h3>Restaurant Title</h3> -->
						<span class="rst-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel, perspiciatis.</span>
					</div>
				</div>
				<div class="rst rst-2">
					<div class="rst-hero"></div>
					<div class="rst-info">
						<h3>Restaurant Title</h3>
						<span class="rst-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, vel!</span>
					</div>
				</div>
				<div class="rst rst-3">
					<div class="rst-hero"></div>
					<div class="rst-info">
						<h3>Restaurant Title</h3>
						<span class="rst-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, vero.</span>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
<script>
	$(document).ready(function(){
		getUsersFromServer();
	});

	function getUsersFromServer() {
		var ctx = "${pageContext.request.contextPath}";

		$.ajax({
			method : "GET",
			url : ctx + "/api/getStrings/",
			success : function(response) {
			$('#test').append(response);
			},
			error : function() {
				alert("eroare");
			}
		});
		
	}
</script>
</html>