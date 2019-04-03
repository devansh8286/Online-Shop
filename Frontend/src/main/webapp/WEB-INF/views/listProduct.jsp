<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/Resources/css" />
<spring:url var="js" value="/Resources/js" />
<spring:url var="img" value="/Resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!-- -------------------------------------------------------------------------------------------------------- -->

<link href="${css }/dataTable.css" rel="stylesheet">
<script src="${js}/dataTable.js"></script>
<!-- -------------------------------------------------------------------------------------------------------------------- -->
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script>

window.contextRoot = '${contextRoot}';

</script>

<div class="container">


	<%@ include file="sidebar.jsp"%>

	<div class="col-md-9">
		<!-- adding breadcrumb -->
		<div class="row">

			<div class="col-lg-12">
				<c:if test="${userClickAllProducts==true}">
					<script>
				window.categoryId='';
				</script>

					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="${contextRoot }/home">home</a></li>
							<li class="breadcrumb-item active" aria-current="page">AllProduct</li>
						</ol>
					</nav>

				</c:if>
				<c:if test="${userClickCategoryProducts==true}">
					<script>
					
					window.categoryId='${category.id}';
					</script>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="${contextRoot }/home">home</a></li>
							<li class="breadcrumb-item active" aria-current="page">category</li>
							<li class="breadcrumb-item active" aria-current="page">
								${category.name}</li>

						</ol>
					</nav>

				</c:if>
			</div>

			<script
				src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
			<script
				src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
			<div class="container">
				<div class="row">
					<table id="productListTable"
						class="table table-striped table-bordered" style="width: 100%">
						<thead>
							<tr>
								<th>Name</th>
								<th>brand</th>
								<th>price</th>
								<th>quantity</th>
								
							</tr>


						</thead>
					</table>
				</div>
			</div>

		</div>

	</div>
</div>