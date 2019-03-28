<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="bgimg">
		<!--Header-->


		<div class="container text-center text-white hearderset">
			<h2>Welcome</h2>
			<button class="btn btn-warning text-white btn-lg">
				<a href=" " style="color: rgb(255, 255, 255)">Login</a>
			</button>
		</div>
	</div>
	<div>


		<section class="container ourservices text-center">

			<div class="row rowsetting">
				<div class="col-lg-4 col-md-4 col-sm-4 d-block m-auto">
					<div class="imgseting d-block m-auto ">
						<a href="https://www.w3schools.com"> <img
							src="image/images.jpg">
						</a>
					</div>
					<h2>your cart</h2>
					<p>see your product</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 d-block m-auto ">
					<div class="imgseting d-block m-auto ">
						<a href="https://www.w3schools.com"> <img
							src="image/images.jpg">
						</a>
					</div>
					<h2>your cart</h2>
					<p>see your product</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 d-block m-auto ">
					<div class="imgseting d-block m-auto">
						<a href="https://www.w3schools.com"> <img
							src="image/images.jpg">
						</a>
					</div>
					<h2>Discount</h2>
					<p>see your product</p>
				</div>

			</div>

		</section>
	</div>




	<div class="Discount">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">

			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<a href="de.html">
					<div class="carousel-item active"
						style="background-image: url('image/images.jpg')">
						<div class="carousel-caption d-none d-md-block">
							<h2 class="display-4">First Slide</h2>
							<p class="lead">This is a description for the first slide.</p>
						</div>
					</div> <!-- Slide Two - Set the background image for this slide in the line below -->

					<div class="carousel-item"
						style="background-image: url('https://source.unsplash.com/bF2vsubyHcQ/1920x1080')">
						<div class="carousel-caption d-none d-md-block">
							<h2 class="display-4">Second Slide</h2>
							<p class="lead">This is a description for the second slide.</p>
						</div>
					</div> <!-- Slide Three - Set the background image for this slide in the line below -->
					<div class="carousel-item"
						style="background-image: url('https://source.unsplash.com/szFUQoyvrxM/1920x1080')">
						<div class="carousel-caption d-none d-md-block">
							<h2 class="display-4">Third Slide</h2>
							<p class="lead">This is a description for the third slide.</p>
						</div>
					</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>

		</div>
		<h1>TODAY DISCOUNT</h1>
	</div>

</body>
</html>