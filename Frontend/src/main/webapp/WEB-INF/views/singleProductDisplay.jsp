<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/Resources/css" />

<spring:url var="js" value="/Resources/js" />

<spring:url var="img" value="/Resources/image" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${css }/home.css" rel="stylesheet">


<link href="${css }/my.css" rel="stylesheet">

<script src="${js}/ActveMenu.js"></script>



<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${contextRoot}/home">home</a></li>
					<li class="breadcrumb-item"><a
						href="${contextRoot}/show/all/products">Products</a></li>
					<li class="breadcrumb-item active" aria-current="page">${product.name}</li>
				</ol>
			</nav>

<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<div class="row"> -->
<!-- 		<!-- display the product image --> -->
<!-- 		<div class="col-xs-12 col-sm-4"> -->

<!-- 			<div class="thumbnail"> -->
<%-- 				<img src="${img}/${product.code}.jpg" class="img img-responsive" /> --%>

<!-- 			</div> -->


<!-- 		</div> -->

<!-- 		<!-- displaying Product discription --> -->
<!-- 		<div class="col-xs-12 col-sm-8"></div> -->

<%-- 		<h3>${product.name}</h3> --%>
<!-- 		<hr /> -->

<%-- 		<p>${product.description}</p> --%>
<!-- 		<hr /> -->

<!-- 		<h4> -->
<%-- 			price:<strong>&#8377; ${product.unitprice}/-</strong> --%>
<!-- 		</h4> -->
<!-- 		<hr /> -->

<%-- 		<h6>Qty.Available: ${product.quantity }</h6> --%>

<%-- 		<a href="${contextRoot }/cart/add${product.id }/product" --%>
<!-- 			class="btn btn-success"><span -->
<!-- 			class="glyphicon glyhucon-shopping-cart"></span>Add to Cart</a> <a -->
<%-- 			href="${contextRoot }/show/all/products" class="btn btn-success">Back</a> --%>

<!-- 	</div> -->
<!-- </div> -->














<div class="container">
	<div class="row">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<h4 class="text-center">
					<span class="label label-info"></span>
				</h4>
				<img src="${img}/${product.code}.jpg" class="img img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-6 col-xs-6">
							<h3>${product.name }</h3>
						</div>
						<hr/>
						<div class="col-md-6 col-xs-6 price">
							<h3>
								<label>${product.unitprice }</label>
							</h3>
						</div>
					</div>
					<p>${product.description }</p>
					<div class="row">

						<a href="${contextRoot }/cart/add${product.id }/product"
							class="btn btn-success"><span
							class="glyphicon glyhucon-shopping-cart"></span>Add to Cart</a> <a
							href="${contextRoot }/show/all/products" class="btn btn-success">Back</a>

						<p></p>
					</div>
				</div>
			</div>

		</div>
</div>
</div>
</div>
	</div>
</div>