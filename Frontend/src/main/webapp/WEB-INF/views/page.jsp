<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/Resources/css" />
<spring:url var="js" value="/Resources/js" />
<spring:url var="img" value="/Resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!--JQuery DATATAble -->
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<meta charset="utf-8">

<title>GADGETDEV- ${title}</title>
<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}';
</script>
<!-- Custom styles for this template -->
<link href="${css }/home.css" rel="stylesheet">
<script src="${js}/ActveMenu.js"></script>
</head>

<body>
	<!-- HeAder -->

	<%@include file="Navbar.jsp"%>

	<!-- page content -->
	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp"%>
	</c:if>
	<!-- userclickabout -->
	<c:if test="${userClickAbout == true }">
		<%@include file="about.jsp"%>
	</c:if>
	<!-- userclickContact -->
	<c:if test="${userClickContact == true }">
		<%@include file="contact.jsp"%>
	</c:if>

	<!-- userclickallProduct or CATEGORY product -->
	<c:if
		test="${userClickAllProducts==true or userClickCategoryProducts==true}">
		<%@include file="listProduct.jsp"%>
	</c:if>

	<!-- footeR -->

	<%@include file="Footer.jsp"%>
</body>
</html>
