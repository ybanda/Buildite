<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buildite ImageGallery</title>
<link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./bootstrap/css/blueimp-gallery.min.css">
<link rel="stylesheet" href="./bootstrap/css/bootstrap-image-gallery.min.css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
   <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Image Gallery
                    <small>Images for the Events</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">Image Gallery</li>
                </ol>
            </div>
        </div>
       
        <div class="row">
            <div class="col-md-12 img-portfolio">
            <p>The overview of the all the images are available,For convenience click on the image to enlarge it and open it with a Image Viewer</p>
<!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
<div id="blueimp-gallery" class="blueimp-gallery">
    <!-- The container for the modal slides -->
    <div class="slides"></div>
    <!-- Controls for the borderless lightbox -->
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
    <!-- The modal dialog, which will be used to wrap the lightbox content -->
    <div class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body next"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left prev">
                        <i class="glyphicon glyphicon-chevron-left"></i>
                        Previous
                    </button>
                    <button type="button" class="btn btn-primary next">
                        Next
                        <i class="glyphicon glyphicon-chevron-right"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>

<script src="./bootstrap/js/jquery.js"></script>
<script src="./bootstrap/js/jquery.blueimp-gallery.min.js"></script>
<script src="./bootstrap/js/bootstrap-image-gallery.min.js"></script>



<div id="links">
 <c:forEach items="${requestScope.files}" var="i">

<a href="${i}" data-gallery><img src="${i}" width="100" height="100"/></a>

</c:forEach>
</div>
 </div>
</body>
</html>