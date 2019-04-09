
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<div class="container">

	<div class="row">

		<c:if test="${not empty messege }">

			<div class="col-xs-12">
				<div class="alert alert-success alert-dismissible">
					<button type="button" class="close" data-dismiss="alert">&times;</button>

					${message}
				</div>
			</div>
		</c:if>

		<div class="col-md-offset-2 col-md-8">
			<div class="panel panel-default">

				<div class="panel-heading">

					<h4>Product Management</h4>

				</div>
				<div class="panel-body">
					<!-- FORM ELEMENTS -->
					<sf:form class="form-horizontal" modelAttribute="product"
						action="${contextRoot}/manage/products" method="POST"
						enctype="multipart/form-data">
						<!-- modelAttribute linking to manageController -->

						<!--------------------------------------------------------------------------------------------- -->

						<div class="form-group">
							<label class="control-label col-md-4" for="name">Enter
								Product Name:</label>

							<div class="col-md-8">

								<sf:input type="text" path="name" id="name"
									placeholder="Product Name" class="form-control" />
								<sf:errors path="name" cssClass="help-block" element="em" />
							</div>

						</div>

						<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

						<div class="form-group">
							<label class="control-label col-md-4" for="brand">Enter
								Brand Name:</label>

							<div class="col-md-8">

								<sf:input type="text" path="brand" id="brand"
									placeholder="Brand Name" class="form-control" />
								<em class="help-bock">please enter Brand </em>
								<sf:errors path="brand" cssClass="help-block" element="em" />
							</div>

						</div>

						<!-- -------------------------------------------------------------------------------------------------------------------------------------------------- -->

						<div class="form-group">
							<label class="control-label col-md-4" for="description">Enter
								description:</label>

							<div class="col-md-8">
								<sf:textarea rows="5" path="description" id="description"
									placeholder="description" class="form-control" />
								<sf:errors path="description" cssClass="help-block" element="em" />
							</div>

						</div>

						<!-- --------------------------------------------------------------------------------------------------------------------------------------------- -->


						<div class="form-group">
							<label class="control-label col-md-4" for="unitprice">Enter
								Price</label>

							<div class="col-md-8">

								<sf:input type="text" path="unitprice" id="unitprice"
									placeholder="price" class="form-control" />
								<sf:errors path="unitprice" cssClass="help-block" element="em" />
							</div>

						</div>


						<!-- ------------------------------------------------------------------------------------------------------------------------------- -->



						<div class="form-group">
							<label class="control-label col-md-4" for="quantity">Enter
								Quantity:</label>

							<div class="col-md-8">

								<sf:input type="text" path="quantity" id="quantity"
									placeholder="quantity" class="form-control" />
							</div>

						</div>
						<!-- ------------------------------------------------------------------------------------------------>
						
<!-- 						file upload element -->
						
							<div class="form-group">
							<label class="control-label col-md-4" for="file">Image</label>

							<div class="col-md-8">

								<sf:input type="file" path="file" id="file"
									 class="form-control" />
							</div>

						</div>
						
						
						
						<!-- ----------------------------------------------------------------------------------------------------------------------- -->

						<div class="form-group">
							<label class="control-label col-md-4">Category</label>
							<div class="col-md-8">
								<sf:select path="categoryId" items="${categories}"
									itemLabel="name" itemValue="id" class="form-control" />
							</div>
						</div>

						<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------ -->

						<div class="form-group">

							<div class="col-md-offset col-md-8">

								<input type="submit" name="submit" id="submit" value="submit"
									class="btn btn-primary" />


								<sf:hidden path="id" />
								<sf:hidden path="code" />
								<sf:hidden path="supplierId" />
								<sf:hidden path="purchases" />
								<sf:hidden path="views" />
								<sf:hidden path="active" />

							</div>

						</div>

						<!-- --------------------------------------------------------------------------------------------------------------------------------- -->

					</sf:form>


				</div>

			</div>

		</div>

	</div>
</div>