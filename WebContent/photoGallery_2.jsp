<!DOCTYPE html>
<html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="jquery.gallerie.js"></script>
<link rel="stylesheet" type="text/css" href="gallerie.css"/>
<link rel="stylesheet" type="text/css" href="gallerie-effects.css"/>

<script type="text/javascript">
$(document).ready(function(){
	$('#gallery').gallerie();
});

</script>

<style>
	
	
	#gallery {
		margin-left: auto;
		margin-right: auto;
	}
</style>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
<div id="gallery">
 <c:forEach items="${requestScope.files}" var="i">

<a href="${i}"><img src="${i}" width="200" height="200"/></a>
<a href="${i}"><img src="${i}" width="200" height="200"/></a>
<a href="${i}"><img src="${i}" width="200" height="200"/></a>
<a href="${i}"><img src="${i}" width="200" height="200"/></a>
<a href="${i}"><img src="${i}" width="200" height="200"/></a>
</c:forEach>
</div>
</body>
</html>
