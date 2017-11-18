<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="<c:url value="/resources/bootstrap/js/jquery-3.2.1.min.js" />"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div id='title'>
	
	</div>
	
	<div id='description'>
	
	</div>
	
	<div id='address'>
	
	</div>
	
	<div id='reservation'>
	
	</div>
	

</body>

<script>
 var id = "${restaurantId}";

 var ctx = "${pageContext.request.contextPath}";
 
 $(document).ready(function(){
 	getData();
 });
 
 function getData(){
 	$.ajax({
 	method:"GET",
 	url:ctx+"/api/getRestaurant/"+id,
 	success:function(response){
 		$("#title").append(response.nume);
 		$("#description").append(response.descriere);
 		$("#address").append(response.oras+",str."+response.strada+",nr"+response.nr+", "+"jud."+response.judet);
 		//$("#reservation").append();	
 	},
 	error:function(){
 	
 	}
 	});
 }
 
</script>
</html>