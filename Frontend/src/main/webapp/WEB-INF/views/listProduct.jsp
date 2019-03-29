<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>



<div class="container">


<%@ include file="sidebar.jsp"%>

	<div class="col-md-9">
		<!-- adding breadcrumb -->
		<div class="row">

			<div class="col-lg-12">
				<c:if test="${userClickAllProducts==true}">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="${contextRoot }/home">home</a></li>
							<li class="breadcrumb-item active" aria-current="page">AllProduct</li>
						</ol>
					</nav>

				</c:if>
				<c:if test="${userClickCategoryProducts==true}">

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

		</div>

	</div>

</div>