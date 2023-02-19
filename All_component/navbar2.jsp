

<div class="container-fluid"
	style="height: 8px; background-color: #3949ab;"></div>

<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fa-sharp fa-solid fa-earth-americas"></i>Akart
			</h3>
		</div>
		<div class="col-md-6">
			<form action="search.jsp" method="post" class="d-flex" role="search">
				<input class="form-control me-2" type="text" placeholder="Search"
					aria-label="Search" name="search">
				<button class="btn btn-primary" type="submit" name="submit">Search</button>
			</form>
		</div>
	</div>

</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">


	<div class="container-fluid">
		<a class="navbar-brand" href="userhome.jsp"><i
			class="fa-sharp fa-solid fa-earth-americas"></i>Akart</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="userhome.jsp"><i
						class="fa-solid fa-house"></i>Home</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="laptopcat.jsp"><i class="fa-solid fa-laptop"></i>Laptops</a></li>

				<li class="nav-item"><a class="nav-link active"
					href="mobilecat.jsp"><i class="fa-solid fa-mobile"></i>Mobiles</a>
				</li>

				<li class="nav-item"><a class="nav-link active"
					href="accessoriescat.jsp"><i
						class="fa-sharp fa-solid fa-computer-mouse"></i>Accessories</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="myCart.jsp"><i class="fa-solid fa-cart-shopping"></i>MyCart</a></li>
				<li class="nav-item"><a class="nav-link active"><i
						class="fa-solid fa-user"></i>
						<%
						String email = session.getAttribute("email").toString();
						out.print(email);
						%></a></li>
				<li class="nav-item"><a class="nav-link active"
					 href="logout.jsp"><i class="fa-solid fa-right-from-bracket"></i>Logout</a></li>
			</ul>

			<form class="d-flex" role="search">

				<a href="contect.jsp" class="btn btn-light" type="submit"> <i
					class="fa-solid fa-phone"></i>Contact us
				</a>
			</form>
		</div>
	</div>
</nav>
