<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/south-street/jquery-ui.css" id="theme">
<link rel="stylesheet" href="./bootstrap/css/blueimp-gallery.min.css">
<style type="text/css">
ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable {
    bottom: auto;
    display: block;
    height: 552px;
    left: 259px;
    position: absolute;
    right: auto;
    top: 53px !important;
    width: 853px !important;
    z-index: 101;
}
</style>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<!-- The dialog widget -->
<div id="blueimp-gallery-dialog" data-show="fade" data-hide="fade">
    <!-- The gallery widget  -->
    <div class="blueimp-gallery blueimp-gallery-carousel blueimp-gallery-controls">
        <div class="slides"></div>
        <a class="prev" name="<">&lt;</a>
        <a class="next" name=">">&gt;</a>
        <a class="play-pause"></a>
    </div>
</div>


<script src="./bootstrap/js/jquery.js"></script>
<script src="./bootstrap/js/jquery-ui.min.js"></script>
<script src="./bootstrap/js/jquery.blueimp-gallery.min.js"></script>
<script src="jquery.image-gallery.min.js"></script>

<div id="links">
 <c:forEach items="${requestScope.files}" var="i">

<a href="${i}" data-dialog><img src="${i}" width="200" height="200"/></a>
<a href="${i}" data-dialog><img src="${i}" width="200" height="200"/></a>
<a href="${i}" data-dialog><img src="${i}" width="200" height="200"/></a>
<a href="${i}" data-dialog><img src="${i}" width="200" height="200"/></a>
<a href="${i}" data-dialog><img src="${i}" width="200" height="200"/></a>
</c:forEach>
</div>
</body>
</html>