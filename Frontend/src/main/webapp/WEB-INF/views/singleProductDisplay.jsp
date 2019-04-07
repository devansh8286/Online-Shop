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
									<hr />
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label>${product.unitprice }</label>
										</h3>
									</div>

									<div class="col-md-6 col-xs-6 price">
										<h3>

											<c:choose>
												<c:when test="${product.quantity <1 }">

													<h6>
														Quantity<span style="color: red">Out of Stock</span>
													</h6>
												</c:when>
												<c:otherwise>
													<h6>Quantity :${product.quantity }</h6>

												</c:otherwise>
											</c:choose>

										</h3>
									</div>



									<div class="col-md-6 col-xs-6 price">
										<h3>

											<c:choose>
												<c:when test="${product.quantity <1 }">
													<a href="javascript:void(0)"
														class="btn btn-success disabled"><strike> <span
														class="glyphicon glyhucon-shopping-cart"></strike></span>Add to
														Cart
													</a>
												</c:when>
												<c:otherwise>
													<h6>Quantity :${product.quantity }</h6>

												</c:otherwise>
											</c:choose>

										</h3>
									</div>


								</div>
								<p>${product.description }</p>
								<div class="row">

									<a href="${contextRoot }/cart/add${product.id }/product"
										class="btn btn-success"> <span
										class="glyphicon glyhucon-shopping-cart"></span>Add to Cart
									</a> <a href="${contextRoot }/show/all/products"
										class="btn btn-success">Back</a>

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