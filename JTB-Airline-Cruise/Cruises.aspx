<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cruises.aspx.cs" Inherits="JTB_Airline_Cruise.Cruises" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Loader-->
	<div id="global-loader" class="bg-primary">
		<div class="loader-svg-img">
			<img src="/Assets/images/brand/2.png" class="" alt="">
			<div class="flight-icon"><i class="fa fa-plane"></i></div>
		</div>
	</div>
	<!--/Loader-->

	<!--Section-->
	<div class="cover-image sptb py-9 bg-background" data-image-src="/Assets/images/banners/banner22.jpg">
		<div class="header-text1 mb-0">
			<div class="container">
				<div class="text-center text-white mb-4">
					<a href="" class="typewrite font-weight-bold" data-period="2000" data-type='[ "Search a Ship For Your Trip" ]'>
						<span class="wrap"></span>
					</a>
					<p>Find the world's largest collection of tours & travel Packages.</p>
				</div>
				<div class="row pt-5">
					<div class="col-xl-12 col-lg-12 col-md-12 d-block mx-auto">
						<div class="search-background">
							<div class="form row g-0">
								<div class="form-group  col-xl-2 col-lg-2 col-md-12 mb-0">
									<input type="text" class="form-control location-input border-end br-te-0 br-be-0 input-lg" placeholder="Search for Flight">
									<span><img src="/Assets/images/svgs/gps.svg" class="location-gps" alt="img"></span>
								</div>
								<div class="form-group  col-xl-2 col-lg-2 col-md-12 mb-0 select2-lg border-end">
									<select name="country" id="select-countries" class="form-control custom-select select2-show-search">
										<option>Destination</option>
										<option>Australia</option>
										<option>Chicago</option>
										<option>Germany</option>
										<option>India</option>
										<option>Japan</option>
										<option>London</option>
										<option>Los angels</option>
										<option>Spain</option>
										<option>Sidney</option>
									</select>
								</div>
								<div class="form-group  col-xl-2 col-lg-2 col-md-12 mb-0 select2-lg border-end bg-light-30">
									<div class="input-group d-flex align-items-center">
										<span class="label ms-2 text-default mt-2 fs-14">Adults</span>
										<span class="input-group-btn minus"><i class="fe fe-minus"></i></span>
										<input type="text" name="quantity" class="form-control input-lg text-center qty px-0" value="1">
										<span class="input-group-btn add me-2"><i class="fe fe-plus"></i></span>
									</div>
								</div>
								<div class="form-group  col-xl-2 col-lg-2 col-md-12 mb-0 select2-lg bg-light-30">
									<div class="input-group d-flex align-items-center">
										<span class="label ms-2 text-default mt-2 fs-14">Kids</span>
										<span class="input-group-btn minus"><i class="fe fe-minus"></i></span>
										<input type="text" name="quantity" class="form-control input-lg text-center qty px-0" value="1">
										<span class="input-group-btn add me-2"><i class="fe fe-plus"></i></span>
									</div>
								</div>
								<div class="form-group col-xl-4 col-lg-4  col-md-12 mb-0 location">
									<div class="row g-0">
										<div class="form-group  col-xl-6 col-lg-6 col-md-12 mb-0 border-end border-start">
											<input class="form-control daterange-btn br-0 input-lg" placeholder="Checkin" type="text">
										</div>
										<div class="col-xl-6 col-lg-6 col-md-12 mb-0">
											<a class="btn btn-block btn-secondary fs-14 br-ts-0 br-bs-0 shadow-none btn-lg" href="javascript:void(0)">Search</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!-- /header-text -->
	</div>
	<!--Section-->

	<!--Section-->
	<section class="sptb">
		<div class="container">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">Top Rated</span>
				<h2>Tour Destinations</h2>
				<p>Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula</p>
			</div>
            <div class="row">
				<div class="col-sm-12 col-lg-3 col-md-6">
					<div class="card gallery-item">
						<a class="absolute-link2" href="cruises-list.html"></a>
						<div class="text-center overflow-hidden">
							<div class="text-start card-body p-4">
								<div class="mb-4">
									<img src="/Assets/images/categories/01.png" alt="img" class="br-5">
								</div>
								<div class="d-flex border-bottom pb-3 mb-3 border-dashed border-top-0 border-start-0 border-end-0">
									<h4 class="mb-0 font-weight-semibold2">Canada</h4>
									<div class=" d-inline-flex ms-auto">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>
									</div>
								</div>
								<small class=""><i class="fe fe-map-pin"></i> 4 location Ports  <i class="ms-3 fe fe-plus"></i> 36 Cruises </small>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-lg-3 col-md-6">
					<div class="card gallery-item">
						<a class="absolute-link2" href="cruises-list.html"></a>
						<div class="text-center overflow-hidden">
							<div class="text-start card-body p-4">
								<div class="mb-4">
									<img src="/Assets/images/categories/03.png" alt="img" class="br-5">
								</div>
								<div class="d-flex border-bottom pb-3 mb-3 border-dashed border-top-0 border-start-0 border-end-0">
									<h4 class="mb-0 font-weight-semibold2">India</h4>
									<div class=" d-inline-flex ms-auto">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>
									</div>
								</div>
								<small class=""><i class="fe fe-map-pin"></i> 6 location Ports  <i class="ms-3 fe fe-plus"></i> 65 Cruises </small>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-lg-3 col-md-6">
					<div class="card gallery-item">
						<a class="absolute-link2" href="cruises-list.html"></a>
						<div class="text-center overflow-hidden">
							<div class="text-start card-body p-4">
								<div class="mb-4">
									<img src="/Assets/images/categories/04.png" alt="img" class="br-5">
								</div>
								<div class="d-flex border-bottom pb-3 mb-3 border-dashed border-top-0 border-start-0 border-end-0">
									<h4 class="mb-0 font-weight-semibold2">Japan</h4>
									<div class=" d-inline-flex ms-auto">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>
									</div>
								</div>
								<small class=""><i class="fe fe-map-pin"></i> 8 location Ports  <i class="ms-3 fe fe-plus"></i> 46 Cruises </small>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-lg-3 col-md-6">
					<div class="card gallery-item">
						<a class="absolute-link2" href="cruises-list.html"></a>
						<div class="text-center overflow-hidden">
							<div class="text-start card-body p-4">
								<div class="mb-4">
									<img src="/Assets/images/categories/05.png" alt="img" class="br-5">
								</div>
								<div class="d-flex border-bottom pb-3 mb-3 border-dashed border-top-0 border-start-0 border-end-0">
									<h4 class="mb-0 font-weight-semibold2">Australia</h4>
									<div class=" d-inline-flex ms-auto">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>
									</div>
								</div>
								<small class=""><i class="fe fe-map-pin"></i> 2 location Ports  <i class="ms-3 fe fe-plus"></i> 51 Cruises </small>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-lg-3 col-md-6">
					<div class="card gallery-item">
						<a class="absolute-link2" href="cruises-list.html"></a>
						<div class="text-center overflow-hidden mb-lg-0">
							<div class="text-start card-body p-4">
								<div class="mb-4">
									<img src="/Assets/images/categories/06.png" alt="img" class="br-5">
								</div>
								<div class="d-flex border-bottom pb-3 mb-3 border-dashed border-top-0 border-start-0 border-end-0">
									<h4 class="mb-0 font-weight-semibold2">USA</h4>
									<div class=" d-inline-flex ms-auto">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>
									</div>
								</div>
								<small class=""><i class="fe fe-map-pin"></i> 10 location Ports  <i class="ms-3 fe fe-plus"></i> 37 Cruises </small>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-lg-3 col-md-6">
					<div class="card gallery-item">
						<a class="absolute-link2" href="cruises-list.html"></a>
						<div class="text-center overflow-hidden mb-lg-0">
							<div class="text-start card-body p-4">
								<div class="mb-4">
									<img src="/Assets/images/categories/07.png" alt="img" class="br-5">
								</div>
								<div class="d-flex border-bottom pb-3 mb-3 border-dashed border-top-0 border-start-0 border-end-0">
									<h4 class="mb-0 font-weight-semibold2">Australia</h4>
									<div class=" d-inline-flex ms-auto">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>
									</div>
								</div>
								<small class=""><i class="fe fe-map-pin"></i> 3 location Ports  <i class="ms-3 fe fe-plus"></i> 45 Cruises </small>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-lg-3 col-md-6">
					<div class="card gallery-item">
						<a class="absolute-link2" href="cruises-list.html"></a>
						<div class="text-center overflow-hidden mb-md-0">
							<div class="text-start card-body p-4">
								<div class="mb-4">
									<img src="/Assets/images/categories/09.png" alt="img" class="br-5">
								</div>
								<div class="d-flex border-bottom pb-3 mb-3 border-dashed border-top-0 border-start-0 border-end-0">
									<h4 class="mb-0 font-weight-semibold2">Paris</h4>
									<div class=" d-inline-flex ms-auto">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>
									</div>
								</div>
								<small class=""><i class="fe fe-map-pin"></i> 6 location Ports  <i class="ms-3 fe fe-plus"></i> 64 Cruises </small>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-lg-3 col-md-6">
					<div class="card gallery-item">
						<a class="absolute-link2" href="cruises-list.html"></a>
						<div class="text-center overflow-hidden mb-0">
							<div class="text-start card-body p-4">
								<div class="mb-4">
									<img src="/Assets/images/categories/10.png" alt="img" class="br-5">
								</div>
								<div class="d-flex border-bottom pb-3 mb-3 border-dashed border-top-0 border-start-0 border-end-0">
									<h4 class="mb-0 font-weight-semibold2">Japan</h4>
									<div class=" d-inline-flex ms-auto">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>
									</div>
								</div>
								<small class=""><i class="fe fe-map-pin"></i> 7 location Ports  <i class="ms-3 fe fe-plus"></i> 57 Cruises </small>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Section-->

	<!--Section-->
	<section class="sptb bg-white">
		<div class="container">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">Most Popular</span>
				<h2>Cruises</h2>
				<p>Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula</p>
			</div>
			<div class="owl-carousel owl-carousel-icons">
				<div class="item">
					<div class="card overflow-hidden">
						<div class="ieh-100">
							<div class="item-card9-img w-100">
								<div class="item-card9-imgs">
									<img src="/Assets/images/categories/cruises/1.jpg" alt="img" class="cover-image">
									<div class="item-card2-img1" data-bs-toggle="modal" data-bs-target="#gallery">
										<span class="badge bg-dark-transparent6 text-white fs-14 font-weight-semibold2"><i class="fe fe-image "></i> 5</span>
									</div>
								</div>
								<div class="item-card9-icons">
									<a href="javascript:void(0)" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
								</div>
							</div>
							<div class="card border-0 mb-0 br-0">
								<div class="card-body">
									<div class="item-card9 mb-4">
										<div class="d-sm-flex">
											<div class="">
												<a href="cruises.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Canada Cruises</h4></a>
												<span class="badge bg-pill border mt-1 fs-12">Deluxe Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Fisrt Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Second Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Bunk Class</span>
											</div>
										</div>
									</div>
									<div class="item-card2-desc">
										<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Thu 14 Oct - Sat 16 Oct</a>
										<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 3  Days 38Hours 45Minutes</a>
									</div>
								</div>
								<div class="card-footer d-flex">
									<div class=" d-inline-flex ms-1">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">124 Reviews</a>
									</div>
									<div class="ms-auto">
										<h3 class="mb-0 font-weight-semibold2">$354</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card overflow-hidden">
						<div class="ieh-100">
							<div class="item-card9-img w-100">
								<div class="item-card9-imgs">
									<img src="/Assets/images/categories/cruises/2.jpg" alt="img" class="cover-image">
								</div>
								<div class="item-card9-icons">
									<a href="javascript:void(0)" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
								</div>
							</div>
							<div class="card border-0 mb-0 br-0">
								<div class="card-body">
									<div class="item-card9 mb-4">
										<div class="d-sm-flex">
											<div class="">
												<a href="cruises.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">India Cruises</h4></a>
												<span class="badge bg-pill border mt-1 fs-12">Deluxe Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Fisrt Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Second Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Bunk Class</span>
											</div>
										</div>
									</div>
									<div class="item-card2-desc">
										<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Fri 15 Oct - Sat 16 Oct</a>
										<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 1  Days 17Hours 45Minutes</a>
									</div>
								</div>
								<div class="card-footer d-flex">
									<div class=" d-inline-flex ms-1">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">75 Reviews</a>
									</div>
									<div class="ms-auto">
										<h3 class="mb-0 font-weight-semibold2">$654</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card overflow-hidden">
						<div class="ieh-100">
							<div class="item-card9-img w-100">
								<div class="item-card9-imgs">
									<img src="/Assets/images/categories/cruises/3.jpg" alt="img" class="cover-image">
								</div>
								<div class="item-card9-icons">
									<a href="javascript:void(0)" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
								</div>
							</div>
							<div class="card border-0 mb-0 br-0">
								<div class="card-body">
									<div class="item-card9 mb-4">
										<div class="d-sm-flex">
											<div class="">
												<a href="cruises.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Dubai Cruises</h4></a>
												<span class="badge bg-pill border mt-1 fs-12">Deluxe Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Fisrt Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Second Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Bunk Class</span>
											</div>
										</div>
									</div>
									<div class="item-card2-desc">
										<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Mon 18 Oct - Wed 20 Oct</a>
										<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 2 Days 28Hours 30Minutes</a>
									</div>
								</div>
								<div class="card-footer d-flex">
									<div class=" d-inline-flex ms-1">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">56 Reviews</a>
									</div>
									<div class="ms-auto">
										<h3 class="mb-0 font-weight-semibold2">$826</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card overflow-hidden">
						<div class="ieh-100">
							<div class="item-card9-img w-100">
								<div class="item-card9-imgs">
									<img src="/Assets/images/categories/cruises/4.jpg" alt="img" class="cover-image">
								</div>
								<div class="item-card9-icons">
									<a href="javascript:void(0)" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
								</div>
							</div>
							<div class="card border-0 mb-0 br-0">
								<div class="card-body">
									<div class="item-card9 mb-4">
										<div class="d-sm-flex">
											<div class="">
												<a href="cruises.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Australia Cruises</h4></a>
												<span class="badge bg-pill border mt-1 fs-12">Deluxe Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Fisrt Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Second Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Bunk Class</span>
											</div>
										</div>
									</div>
									<div class="item-card2-desc">
										<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Tue 19 Oct - Thu 21 Oct</a>
										<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 4 Days 42Hours 45Minutes</a>
									</div>
								</div>
								<div class="card-footer d-flex">
									<div class=" d-inline-flex ms-1">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">41 Reviews</a>
									</div>
									<div class="ms-auto">
										<h3 class="mb-0 font-weight-semibold2">$524</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card overflow-hidden">
						<div class="ieh-100">
							<div class="item-card9-img w-100">
								<div class="item-card9-imgs">
									<img src="/Assets/images/categories/cruises/5.jpg" alt="img" class="cover-image">
								</div>
								<div class="item-card9-icons">
									<a href="javascript:void(0)" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
								</div>
							</div>
							<div class="card border-0 mb-0 br-0">
								<div class="card-body">
									<div class="item-card9 mb-4">
										<div class="d-sm-flex">
											<div class="">
												<a href="cruises.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">USA Cruises</h4></a>
												<span class="badge bg-pill border mt-1 fs-12">Deluxe Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Fisrt Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Second Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Bunk Class</span>
											</div>
										</div>
									</div>
									<div class="item-card2-desc">
										<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Thu 14 Oct - Sat 16 Oct</a>
										<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 2 Days 27Hours 45Minutes</a>
									</div>
								</div>
								<div class="card-footer d-flex">
									<div class=" d-inline-flex ms-1">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">51 Reviews</a>
									</div>
									<div class="ms-auto">
										<h3 class="mb-0 font-weight-semibold2">$417</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card overflow-hidden">
						<div class="ieh-100">
							<div class="item-card9-img w-100">
								<div class="item-card9-imgs">
									<img src="/Assets/images/categories/cruises/6.jpg" alt="img" class="cover-image">
								</div>
								<div class="item-card9-icons">
									<a href="javascript:void(0)" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
								</div>
							</div>
							<div class="card border-0 mb-0 br-0">
								<div class="card-body">
									<div class="item-card9 mb-4">
										<div class="d-sm-flex">
											<div class="">
												<a href="cruises.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Paris Cruises</h4></a>
												<span class="badge bg-pill border mt-1 fs-12">Deluxe Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Fisrt Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Second Class</span>
												<span class="badge bg-pill border mt-1 fs-12">Bunk Class</span>
											</div>
										</div>
									</div>
									<div class="item-card2-desc">
										<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Fri 15 Oct - Sun 16 Oct</a>
										<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 4 Days 48 Hours 30 Minutes</a>
									</div>
								</div>
								<div class="card-footer d-flex">
									<div class=" d-inline-flex ms-1">
										<div class="rating-star sm block my-rating-5" data-stars="4s">
										</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">62 Reviews</a>
									</div>
									<div class="ms-auto">
										<h3 class="mb-0 font-weight-semibold2">$325</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Section-->

	<!--Section-->
	<section class="sptb">
		<div class="container">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">Popular</span>
				<h1>Cruise & Deals</h1>
				<p>Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula</p>
			</div>
			<div class="owl-carousel owl-carousel-icons2">
				<div class="item">
					<div class="card">
						<div class="servic-data card-body text-center">
							<a class="absolute-link2" href="cruises-list.html"></a>
							<div class="w-60 mx-auto mb-2">
								<img src="/Assets/images/categories/cruises/logo/logo1.png" alt="img" class="brround op-7">
							</div>
							<h4 class="font-weight-bold text-default pb-1 mb-0">USA Port Lines</h4>
							<div class=" d-inline-flex ms-1">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">542 Reviews</a>
							</div>
							<div class=" d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> <strong>12</strong> days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i><strong> 65</strong></a>
							</div>
						</div>
						<div class="card-footer text-center">
							Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$85</span>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<div class="servic-data card-body text-center">
							<a class="absolute-link2" href="cruises-list.html"></a>
							<div class="w-60 mx-auto mb-2">
								<img src="/Assets/images/categories/cruises/logo/logo2.png" alt="img" class="brround op-7">
							</div>
							<h4 class="font-weight-bold text-default pb-1 mb-0">Canada Port Lines</h4>
							<div class=" d-inline-flex ms-1">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">354 Reviews</a>
							</div>
							<div class=" d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> <strong>14</strong> days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i><strong> 68</strong></a>
							</div>
						</div>
						<div class="card-footer text-center">
							Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$86</span>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<div class="servic-data card-body text-center">
							<a class="absolute-link2" href="cruises-list.html"></a>
							<div class="w-60 mx-auto mb-2">
								<img src="/Assets/images/categories/cruises/logo/logo3.png" alt="img" class="brround op-7">
							</div>
							<h4 class="font-weight-bold text-default pb-1 mb-0">Spain Port Lines</h4>
							<div class=" d-inline-flex ms-1">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">862 Reviews</a>
							</div>
							<div class=" d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> <strong>16</strong> days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i><strong> 78</strong></a>
							</div>
						</div>
						<div class="card-footer text-center">
							Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$78</span>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<div class="servic-data card-body text-center">
							<a class="absolute-link2" href="cruises-list.html"></a>
							<div class="w-60 mx-auto mb-2">
								<img src="/Assets/images/categories/cruises/logo/logo4.png" alt="img" class="brround op-7">
							</div>
							<h4 class="font-weight-bold text-default pb-1 mb-0">Paris Port Lines</h4>
							<div class=" d-inline-flex ms-1">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">452 Reviews</a>
							</div>
							<div class=" d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> <strong>12</strong> days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i><strong> 35</strong></a>
							</div>
						</div>
						<div class="card-footer text-center">
							Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$76</span>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<div class="servic-data card-body text-center">
							<a class="absolute-link2" href="cruises-list.html"></a>
							<div class="w-60 mx-auto mb-2">
								<img src="/Assets/images/categories/cruises/logo/logo1.png" alt="img" class="brround op-7">
							</div>
							<h4 class="font-weight-bold text-default pb-1 mb-0">India Port Lines</h4>
							<div class=" d-inline-flex ms-1">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">965 Reviews</a>
							</div>
							<div class=" d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> <strong>10</strong> days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i><strong> 124</strong></a>
							</div>
						</div>
						<div class="card-footer text-center">
							Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$63</span>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<div class="servic-data card-body text-center">
							<a class="absolute-link2" href="cruises-list.html"></a>
							<div class="w-60 mx-auto mb-2">
								<img src="/Assets/images/categories/cruises/logo/logo2.png" alt="img" class="brround op-7">
							</div>
							<h4 class="font-weight-bold text-default pb-1 mb-0">Australia Port Lines</h4>
							<div class=" d-inline-flex ms-1">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">874 Reviews</a>
							</div>
							<div class=" d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> <strong>15</strong> days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i><strong> 763</strong></a>
							</div>
						</div>
						<div class="card-footer text-center">
							Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$35</span>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<div class="servic-data card-body text-center">
							<a class="absolute-link2" href="cruises-list.html"></a>
							<div class="w-60 mx-auto mb-2">
								<img src="/Assets/images/categories/cruises/logo/logo3.png" alt="img" class="brround op-7">
							</div>
							<h4 class="font-weight-bold text-default pb-1 mb-0">Japan Port Lines</h4>
							<div class=" d-inline-flex ms-1">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">685 Reviews</a>
							</div>
							<div class=" d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> <strong>13</strong> days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i><strong> 96</strong></a>
							</div>
						</div>
						<div class="card-footer text-center">
							Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$75</span>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<div class="servic-data card-body text-center">
							<a class="absolute-link2" href="cruises-list.html"></a>
							<div class="w-60 mx-auto mb-2">
								<img src="/Assets/images/categories/cruises/logo/logo4.png" alt="img" class="brround op-7">
							</div>
							<h4 class="font-weight-bold text-default pb-1 mb-0">Swedan Port Lines</h4>
							<div class=" d-inline-flex ms-1">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)"> 654Reviews</a>
							</div>
							<div class="d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> <strong>12</strong> days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i><strong> 751</strong></a>
							</div>
						</div>
						<div class="card-footer text-center">
							Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$36</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Section-->

	<!--Section-->
	<section class="sptb bg-white">
		<div class="container">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">Why</span>
				<h2>Choose Us</h2>
				<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium</p>
			</div>
			<div class="item-all-cat center-block text-center">
				<div class="row">
					<div class="col-lg-4 col-md-12">
						<div class="status-border mb-4 mb-lg-0 p-5 pt-5 card">
							<div>
								<div class="status-info text-center">
									<div class="cat-img category-svg d-block bg-primary-transparent">
										<i class="fa fa-thumbs-o-up fs-30 text-primary icon-lineheight"></i>
									</div>
									<h4 class="mt-5 mb-2 fs-20 font-weight-semibold2">Best Quality Services</h4>
									<p class="text-muted mb-0">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-12">
						<div class="status-border mb-4 mb-lg-0 p-5 pt-5 card">
							<div>
								<div class="status-info text-center">
									<div class="cat-img category-svg d-block bg-success-transparent">
										<i class="fa fa-shield fs-30 text-success icon-lineheight"></i>
									</div>
									<h4 class="mt-5 mb-2 fs-20 font-weight-semibold2">Travellers Security</h4>
									<p class="text-muted mb-0">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-12">
						<div class="status-border p-5 pt-5 card mb-0">
							<div>
								<div class="status-info text-center">
									<div class="cat-img category-svg d-block  bg-warning-transparent">
										<i class="fa fa-headphones fs-30 text-warning icon-lineheight"></i>
									</div>
									<h4 class="mt-5 mb-2 fs-20 font-weight-semibold2">24/7 Support</h4>
									<p class="text-muted mb-0">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Section-->

	<!--Section-->
	<section class="sptb">
		<div class="container">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">Our</span>
				<h2>Video Testimonials</h2>
				<p>Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula</p>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12">
					<div class="card overflow-hidden">
						<div class="item7-card-img">
							<img src="/Assets/images/categories/cruises/1.jpg" alt="img" class="cover-image">
							<a class="d-block video-btn1 mx-auto" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#homeVideo"><span class="fa fa-play text-white"></span></a>
						</div>
						<div class="card-body">
							<small class="text-muted">Posted By: Royal Hamblin</small>
							<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-2 leading-normal">Found Beautiful Places</h4></a>
							<p>On the other hand, we denounce with righteous indignation and dislike </p>
							<a class="btn-link" href="blog-list.html">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12">
					<div class="card mb-md-0 overflow-hidden">
						<div class="item7-card-img">
							<a class="d-block video-btn1 mx-auto" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#homeVideo"><span class="fa fa-play text-white"></span></a>
							<img src="/Assets/images/categories/cruises/2.jpg" alt="img" class="cover-image">
						</div>
						<div class="card-body">
							<small class="text-muted">Posted By: Rosita Chatmon</small>
							<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-2 leading-normal">Great Adventure Trip</h4></a>
							<p>On the other hand, we denounce with righteous indignation and dislike </p>
							<a class="btn-link" href="blog-list.html">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12">
					<div class="card mb-0 overflow-hidden">
						<div class="item7-card-img">
							<a class="d-block video-btn1 mx-auto" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#homeVideo"><span class="fa fa-play text-white"></span></a>
							<img src="/Assets/images/categories/cruises/3.jpg" alt="img" class="cover-image">
						</div>
						<div class="card-body">
							<small class="text-muted">Posted By: Loyd Nolf</small>
							<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-2 leading-normal">Special Places</h4></a>
							<p>On the other hand, we denounce with righteous indignation and dislike </p>
							<a class="btn-link" href="blog-list.html">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Section-->

	<!--Section-->
	<section class="cover-image sptb bg-background-color" data-image-src="/Assets/images/banners/banner10.jpg">
		<div class="content-text mb-0">
			<div class="content-text mb-0">
				<div class="container">
					<div class="text-center text-white ">
						<span class="heading-style text-white-80">Subscribe</span>
						<h2 class="mb-2 font-weight-bold fs-40">Our Newsletter</h2>
						<p class="fs-16 mb-0">Subscribe to Newsletter to get a notification. We promise not to spam!</p>
						<div class="row">
							<div class="col-lg-7 mx-auto d-block">
								<div class="mt-5">
									<div class="input-group sub-input mt-1">
										<input type="text" class="form-control input-lg " placeholder="Enter your Email">
										<div class="">
											<button type="button"" class="btn btn-secondary btn-lg br-ts-0 br-bs-0 ps-5 pe-5 font-weight-semibold2">
												Subscribe
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Section-->

	<!--Section-->
	<section class="sptb">
		<div class="container">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">New</span>
				<h2>Blog News</h2>
				<p>Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula</p>
			</div>
			<div class="owl-carousel Card-owlcarousel owl-carousel-icons">
				<div class="item">
					<div class="card mb-0">
						<div class="item7-card-img">
							<a href="blog-details.html"></a>
							<img src="/Assets/images/categories/cruises/6.jpg" alt="img" class="cover-image">
							<div class="date-blog bg-primary">
								<h4 class="mb-0 font-weight-semibold2">27</h4>
								<small>JUL</small>
							</div>
						</div>
						<div class="card-body">
							<div class="mb-3 mt-0 d-inline-flex">
								<a href="javascript:void(0)" class="ms-0 ms-0 btn-link"><span class="text-default">By</span> Lilly Wisely</a>
								<a href="javascript:void(0)" class="ps-4 ms-4 border-start"> 4 comments</a>
							</div>
							<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-2 leading-normal mb-0">Nice Weather</h4></a>
							<div class=" d-inline-flex">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div>  (65 Reviews)
							</div>
							<p class="mb-0">On the other hand, we denounce with righteous indignation and dislike </p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0">
						<div class="item7-card-img">
							<a href="blog-details.html"></a>
							<img src="/Assets/images/categories/cruises/5.jpg" alt="img" class="cover-image">
							<div class="date-blog bg-secondary">
								<h4 class="mb-0 font-weight-semibold2">30</h4>
								<small>JUN</small>
							</div>
						</div>
						<div class="card-body">
							<div class="mb-3 mt-0 d-inline-flex">
								<a href="javascript:void(0)" class="ms-0 ms-0 btn-link"><span class="text-default">By</span> Rosita Chatmon</a>
								<a href="javascript:void(0)" class="ps-4 ms-4 border-start"> 30 comments</a>
							</div>
							<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-2 leading-normal mb-0">Its So Comfortable</h4></a>
							<div class=" d-inline-flex">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div> (130 Reviews)
							</div>
							<p class="mb-0">On the other hand, we denounce with righteous indignation and dislike </p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0">
						<div class="item7-card-img">
							<a href="blog-details.html"></a>
							<img src="/Assets/images/categories/cruises/4.jpg" alt="img" class="cover-image">
							<div class="date-blog bg-info">
								<h4 class="mb-0 font-weight-semibold2">13</h4>
								<small>JUN</small>
							</div>
						</div>
						<div class="card-body">
							<div class="mb-3 mt-0 d-inline-flex">
								<a href="javascript:void(0)" class="ms-0 ms-0 btn-link"><span class="text-default">By</span> Loyd Nolf</a>
								<a href="javascript:void(0)" class="ps-4 ms-4 border-start"> 12 comments</a>
							</div>
							<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-2 leading-normal mb-0">Good Services</h4></a>
							<div class=" d-inline-flex">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div> (96 Reviews)
							</div>
							<p class="mb-0">On the other hand, we denounce with righteous indignation and dislike </p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0">
						<div class="item7-card-img">
							<a href="blog-details.html"></a>
							<img src="/Assets/images/categories/cruises/3.jpg" alt="img" class="cover-image">
							<div class="date-blog bg-warning">
								<h4 class="mb-0 font-weight-semibold2">22</h4>
								<small>MAY</small>
							</div>
						</div>
						<div class="card-body">
							<div class="mb-3 mt-0 d-inline-flex">
								<a href="javascript:void(0)" class="ms-0 ms-0 btn-link"><span class="text-default">By</span> Aracely Bashore</a>
								<a href="javascript:void(0)" class="ps-4 ms-4 border-start"> 12 comments</a>
							</div>
							<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-2 leading-normal mb-0">Adventures Trip</h4></a>
							<div class=" d-inline-flex">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div> (57 Reviews)
							</div>
							<p class="mb-0">On the other hand, we denounce with righteous indignation and dislike </p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0">
						<div class="item7-card-img">
							<a href="blog-details.html"></a>
							<img src="/Assets/images/categories/cruises/2.jpg" alt="img" class="cover-image">
							<div class="date-blog bg-success">
								<h4 class="mb-0 font-weight-semibold2">12</h4>
								<small>APR</small>
							</div>
						</div>
						<div class="card-body">
							<div class="mb-3 mt-0 d-inline-flex">
								<a href="javascript:void(0)" class="ms-0 ms-0 btn-link"><span class="text-default">By</span> Royal Hamblin</a>
								<a href="javascript:void(0)" class="ps-4 ms-4 border-start"> 8 comments</a>
							</div>
							<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-2 leading-normal mb-0">Best Cruises</h4></a>
							<div class=" d-inline-flex">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div> (78 Reviews)
							</div>
							<p class="mb-0">On the other hand, we denounce with righteous indignation and dislike </p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0">
						<div class="item7-card-img">
							<a href="blog-details.html"></a>
							<img src="/Assets/images/categories/cruises/1.jpg" alt="img" class="cover-image">
							<div class="date-blog bg-danger">
								<h4 class="mb-0 font-weight-semibold2">16</h4>
								<small>FEB</small>
							</div>
						</div>
						<div class="card-body">
							<div class="mb-3 mt-0 d-inline-flex">
								<a href="javascript:void(0)" class="ms-0 ms-0 btn-link"><span class="text-default">By</span> Aracely Bashore</a>
								<a href="javascript:void(0)" class="ps-4 ms-4 border-start"> 2 comments</a>
							</div>
							<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-2 leading-normal mb-0">Best Experience</h4></a>
							<div class=" d-inline-flex">
								<div class="rating-star sm block my-rating-5" data-stars="4s">
								</div> (145 Reviews)
							</div>
							<p class="mb-0">On the other hand, we denounce with righteous indignation and dislike </p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Section-->

	<!--Section-->
	<section class="sptb cover-image patter-image patter-image bg-background-pattern" data-image-src="/Assets/images/pattern/9.png">
		<div class="container content-text">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">Download</span>
				<h2>Mobile App</h2>
				<p>Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula</p>
			</div>
            <div class="row">
				<div class="col-md-12">
					<div class="text-center text-wrap">
						<div class="btn-list">
							<a href="javascript:void(0)" class="btn btn-secondary btn-lg mb-sm-0 d-inline-flex pb-2 h-100"><i class="fa fa-apple fa-1x me-2 fs-18 mt-1"></i> App Store</a>
							<a href="javascript:void(0)" class="btn btn-primary btn-lg mb-sm-0 d-inline-flex pb-2 h-100"><i class="fa fa-android fs-18 fa-1x me-2  mt-1"></i> Google Play</a>
							<a href="javascript:void(0)" class="btn btn-info btn-lg mb-0 d-inline-flex pb-2 h-100"><i class="fa fa-windows  fs-18 fa-1x me-2  mt-1"></i> Windows</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/Section-->
</asp:Content>
