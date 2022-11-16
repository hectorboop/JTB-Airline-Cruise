<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Flights.aspx.cs" Inherits="JTB_Airline_Cruise.Flights" %>
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
	<div class="cover-image sptb py-9 bg-background" data-image-src="/Assets/images/banners/banner18.jpg">
		<div class="header-text1 mb-0">
			<div class="container">
				<div class="text-start text-white mb-4">
					<a href="" class="typewrite font-weight-bold" data-period="2000" data-type='[ "Search For Your Flight" ]'>
						<span class="wrap"></span>
					</a>
					<p>Find the world's largest collection of tours & travel Packages.</p>
				</div>
				<div class="row pt-5">
					<div class="col-xl-12 col-lg-12 col-md-12 d-block mx-auto">
						<div class="dark-checkboxes text-white d-flex">
							<div class="custom-controls-stacked d-sm-flex ">
								<label class="custom-control custom-radio ms-4">
									<input type="radio" class="custom-control-input" name="example-radios" value="option1" checked="">
									<span class="custom-control-label">Round-Trip</span>
								</label>
								<label class="custom-control custom-radio ms-4">
									<input type="radio" class="custom-control-input" name="example-radios" value="option2">
									<span class="custom-control-label">One-Way</span>
								</label>
								<label class="custom-control custom-radio ms-4">
									<input type="radio" class="custom-control-input" name="example-radios" value="option2">
									<span class="custom-control-label">Multi-City</span>
								</label>
							</div>
							<div class="dropdown ms-5 ps-4 mt-1">
								<a href="javascript:void(0)" class="text-white mt-2 py-1 px-3 br-2" data-bs-toggle="dropdown" aria-expanded="false"><span> Economy <i class="fa fa-caret-down text-white ms-2"></i></span> </a>
								<div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow" style="">
									<a href="javascript:void(0)" class="dropdown-item">
										Economy
									</a>
									<a href="javascript:void(0)" class="dropdown-item">
										Premium Economy
									</a>
									<a class="dropdown-item" href="javascript:void(0)">
										Business
									</a>
									<a class="dropdown-item" href="javascript:void(0)">
										First
									</a>
								</div>
							</div>
						</div>
						<div class="search-background mt-4">
							<div class="form row g-0">
								<div class="form-group  col-xl-2 col-lg-2 col-md-12 mb-0">
									<input type="text" class="form-control location-input border-end br-te-0 br-be-0 input-lg" placeholder="Search for  Flight">
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
	<section class="sptb bg-white">
		<div class="container">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">Popular</span>
				<h1>Flights & Deals</h1>
				<p>Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula</p>
			</div>
			<div class="owl-carousel owl-carousel-icons2">
				<div class="item">
					<div class="card">
						<a class="absolute-link2" href="flight-list.html"></a>
						<div class="servic-data card-body text-center">
							<div class="w-50 mx-auto mb-5">
								<img src="/Assets/images/categories/plane/1.png" alt="img" class="bg-primary brround p-4">
							</div>
							<h4 class="font-weight-bold text-default pb-4 mb-0">Singapore Airwings</h4>
							<div class="d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> 14 days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i> 87</a>
							</div>
							<div class="border-top pt-4 mt-4">
								Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$45</span>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<a class="absolute-link2" href="flight-list.html"></a>
						<div class="servic-data card-body text-center">
							<div class="w-50 mx-auto mb-5">
								<img src="/Assets/images/categories/plane/2.png" alt="img" class="bg-secondary brround p-4">
							</div>
							<h4 class="font-weight-bold text-default pb-4 mb-0">Airiwngs New zeland</h4>
							<div class="d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> 8 days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i> 17</a>
							</div>
							<div class="border-top pt-4 mt-4">
								Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$11</span>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<a class="absolute-link2" href="flight-list.html"></a>
						<div class="servic-data card-body text-center">
							<div class="w-50 mx-auto mb-5">
								<img src="/Assets/images/categories/plane/3.png" alt="img" class="bg-success brround p-4">
							</div>
							<h4 class="font-weight-bold text-default pb-4 mb-0">Eirgo India</h4>
							<div class="d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> 9 days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i> 95</a>
							</div>
							<div class="border-top pt-4 mt-4">
								Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$24</span>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<a class="absolute-link2" href="flight-list.html"></a>
						<div class="servic-data card-body text-center">
							<div class="w-50 mx-auto mb-5">
								<img src="/Assets/images/categories/plane/4.png" alt="img" class="bg-info brround p-4">
							</div>
							<h4 class="font-weight-bold text-default pb-4 mb-0">Air Flys</h4>
							<div class="d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> 5 days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i> 65</a>
							</div>
							<div class="border-top pt-4 mt-4">
								Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$14</span>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<a class="absolute-link2" href="flight-list.html"></a>
						<div class="servic-data card-body text-center">
							<div class="w-50 mx-auto mb-5">
								<img src="/Assets/images/categories/plane/5.png" alt="img" class="bg-pink brround p-4">
							</div>
							<h4 class="font-weight-bold text-default pb-4 mb-0">Japan Airwings</h4>
							<div class="d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> 4 days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i> 87</a>
							</div>
							<div class="border-top pt-4 mt-4">
								Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$32</span>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card">
						<a class="absolute-link2" href="flight-list.html"></a>
						<div class="servic-data card-body text-center">
							<div class="w-50 mx-auto mb-5">
								<img src="/Assets/images/categories/plane/6.png" alt="img" class="bg-blue brround p-4">
							</div>
							<h4 class="font-weight-bold text-default pb-4 mb-0">Easr Air</h4>
							<div class="d-inline-flex">
								<a class="mb-1 mt-2" href="javascript:void(0)"><i class="fe fe-clock"></i> 8 days left</a>
								<a class="mb-1 mt-2 border-start ms-3 ps-3" href="javascript:void(0)"><i class="fe fe-heart"></i> 17</a>
							</div>
							<div class="border-top pt-4 mt-4">
								Price Start From <span class="mb-0 font-weight-bold fs-18 ms-1">$26</span>
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
				<h2>Tour Destinations</h2>
				<p>Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula</p>
			</div>
            <div class="row">
				<div class="col-md-6 col-sm-12 col-lg-3">
					<div class="item-card item-card2 overflow-hidden card">
						<div class="item-card-desc ieh-100">
							<a href="flight-list.html"></a>
							<div class="text-center overflow-hidden mb-lg-0">
								<div class="card-img br-bs-0 br-be-0">
									<img src="/Assets/images/locations/losangels.jpg" alt="img" class="cover-image br-bs-0 br-be-0">
								</div>
								<div class="item-card-text text-start">
									<h4 class="mb-2 font-weight-bold">Los Angles</h4>
								</div>
							</div>
						</div>
						<div class="card-body p-4">
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Spain</span>
								<div class="ms-auto font-weight-bold">$45</div>
							</a>
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Canada</span>
								<div class="ms-auto font-weight-bold">$56</div>
							</a>
							<a class="d-flex p-2">
								<span class="font-weight-semibold text-muted">From Australia</span>
								<div class="ms-auto font-weight-bold">$75</div>
							</a>
							<a class="btn btn-light btn-block mt-4" href="javascript:void(0)"><i class="fe fe-search"></i> Find More</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-lg-3">
					<div class="item-card item-card2 overflow-hidden card">
						<div class="special-offer2 bg-secondary">
							<div class="percentage">45%</div>
							<div class="percentage-off"><span>SPECIAL</span> OFF</div>
						</div>
						<div class="item-card-desc ieh-100">
							<a href="flight-list.html"></a>
							<div class="text-center overflow-hidden mb-lg-0">
								<div class="card-img br-bs-0 br-be-0">
									<img src="/Assets/images/locations/germany.jpg" alt="img" class="cover-image br-bs-0 br-be-0">
								</div>
								<div class="item-card-text text-start">
									<h4 class="mb-0 font-weight-bold">Germany</h4>
								</div>
							</div>
						</div>
						<div class="card-body p-4">
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Spain</span>
								<div class="ms-auto font-weight-bold">$45</div>
							</a>
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Canada</span>
								<div class="ms-auto font-weight-bold">$56</div>
							</a>
							<a class="d-flex p-2">
								<span class="font-weight-semibold text-muted">From Australia</span>
								<div class="ms-auto font-weight-bold">$75</div>
							</a>
							<a class="btn btn-light btn-block mt-4" href="javascript:void(0)"><i class="fe fe-search"></i> Find More</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-lg-3">
					<div class="item-card item-card2 overflow-hidden card">
						<div class="special-offer2 bg-primary">
							<div class="percentage">70%</div>
							<div class="percentage-off"><span>SPECIAL</span> OFF</div>
						</div>
						<div class="item-card-desc ieh-100">
							<a href="flight-list.html"></a>
							<div class="text-center overflow-hidden mb-md-0">
								<div class="card-img br-bs-0 br-be-0">
									<img src="/Assets/images/locations/london.jpg" alt="img" class="cover-image br-bs-0 br-be-0">
								</div>
								<div class="item-card-text text-start">
									<h4 class="mb-0 font-weight-bold">London</h4>
								</div>
							</div>
						</div>
						<div class="card-body p-4">
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Spain</span>
								<div class="ms-auto font-weight-bold">$45</div>
							</a>
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Canada</span>
								<div class="ms-auto font-weight-bold">$56</div>
							</a>
							<a class="d-flex p-2">
								<span class="font-weight-semibold text-muted">From Australia</span>
								<div class="ms-auto font-weight-bold">$75</div>
							</a>
							<a class="btn btn-light btn-block mt-4" href="javascript:void(0)"><i class="fe fe-search"></i> Find More</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-lg-3">
					<div class="item-card item-card2 overflow-hidden card">
						<div class="item-card-desc ieh-100">
							<a href="flight-list.html"></a>
							<div class="text-center overflow-hidden mb-0">
								<div class="card-img br-bs-0 br-be-0">
									<img src="/Assets/images/locations/spain.jpg" alt="img" class="cover-image br-bs-0 br-be-0">
								</div>
								<div class="item-card-text text-start">
									<h4 class="mb-0 font-weight-bold">Spain</h4>
								</div>
							</div>
						</div>
						<div class="card-body p-4">
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From London</span>
								<div class="ms-auto font-weight-bold">$45</div>
							</a>
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Canada</span>
								<div class="ms-auto font-weight-bold">$56</div>
							</a>
							<a class="d-flex p-2">
								<span class="font-weight-semibold text-muted">From Australia</span>
								<div class="ms-auto font-weight-bold">$75</div>
							</a>
							<a class="btn btn-light btn-block mt-4" href="javascript:void(0)"><i class="fe fe-search"></i> Find More</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-lg-3">
					<div class="item-card item-card2 overflow-hidden card">
						<div class="item-card-desc ieh-100">
							<a href="flight-list.html"></a>
							<div class="text-center overflow-hidden mb-lg-0">
								<div class="card-img br-bs-0 br-be-0">
									<img src="/Assets/images/locations/austerlia.jpg" alt="img" class="cover-image br-bs-0 br-be-0">
								</div>
								<div class="item-card-text text-start">
									<h4 class="mb-0 font-weight-bold">Australia</h4>
								</div>
							</div>
						</div>
						<div class="card-body p-4">
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Spain</span>
								<div class="ms-auto font-weight-bold">$45</div>
							</a>
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Canada</span>
								<div class="ms-auto font-weight-bold">$56</div>
							</a>
							<a class="d-flex p-2">
								<span class="font-weight-semibold text-muted">From Japan</span>
								<div class="ms-auto font-weight-bold">$75</div>
							</a>
							<a class="btn btn-light btn-block mt-4" href="javascript:void(0)"><i class="fe fe-search"></i> Find More</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-lg-3">
					<div class="item-card item-card2 overflow-hidden card">
						<div class="item-card-desc ieh-100">
							<a href="flight-list.html"></a>
							<div class="text-center overflow-hidden mb-lg-0">
								<div class="card-img br-bs-0 br-be-0">
									<img src="/Assets/images/locations/chicago.jpg" alt="img" class="cover-image br-bs-0 br-be-0">
								</div>
								<div class="item-card-text text-start">
									<h4 class="mb-0 font-weight-bold">Chicago</h4>
								</div>
							</div>
						</div>
						<div class="card-body p-4">
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Spain</span>
								<div class="ms-auto font-weight-bold">$45</div>
							</a>
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Canada</span>
								<div class="ms-auto font-weight-bold">$56</div>
							</a>
							<a class="d-flex p-2">
								<span class="font-weight-semibold text-muted">From Australia</span>
								<div class="ms-auto font-weight-bold">$75</div>
							</a>
							<a class="btn btn-light btn-block mt-4" href="javascript:void(0)"><i class="fe fe-search"></i> Find More</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-lg-3">
					<div class="item-card item-card2 overflow-hidden card">
						<div class="item-card-desc ieh-100">
							<a href="flight-list.html"></a>
							<div class="text-center overflow-hidden mb-md-0">
								<div class="card-img br-bs-0 br-be-0">
									<img src="/Assets/images/locations/india.jpg" alt="img" class="cover-image br-bs-0 br-be-0">
								</div>
								<div class="item-card-text text-start">
									<h4 class="mb-0 font-weight-bold">India</h4>
								</div>
							</div>
						</div>
						<div class="card-body p-4">
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Spain</span>
								<div class="ms-auto font-weight-bold">$45</div>
							</a>
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Canada</span>
								<div class="ms-auto font-weight-bold">$56</div>
							</a>
							<a class="d-flex p-2">
								<span class="font-weight-semibold text-muted">From Australia</span>
								<div class="ms-auto font-weight-bold">$75</div>
							</a>
							<a class="btn btn-light btn-block mt-4" href="javascript:void(0)"><i class="fe fe-search"></i> Find More</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-lg-3">
					<div class="item-card item-card2 overflow-hidden card">
						<div class="item-card-desc ieh-100">
							<a href="flight-list.html"></a>
							<div class="text-center overflow-hidden mb-0">
								<div class="card-img br-bs-0 br-be-0">
									<img src="/Assets/images/locations/japan.jpg" alt="img" class="cover-image br-bs-0 br-be-0">
								</div>
								<div class="item-card-text text-start">
									<h4 class="mb-0 font-weight-bold">Japan</h4>
								</div>
							</div>
						</div>
						<div class="card-body p-4">
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Spain</span>
								<div class="ms-auto font-weight-bold">$45</div>
							</a>
							<a class="d-flex p-2 border-bottom">
								<span class="font-weight-semibold text-muted">From Canada</span>
								<div class="ms-auto font-weight-bold">$56</div>
							</a>
							<a class="d-flex p-2">
								<span class="font-weight-semibold text-muted">From Australia</span>
								<div class="ms-auto font-weight-bold">$75</div>
							</a>
							<a class="btn btn-light btn-block mt-4" href="javascript:void(0)"><i class="fe fe-search"></i> Find More</a>
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
				<span class="heading-style text-secondary">Recent</span>
				<h2>Flight</h2>
				<p>Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula</p>
			</div>
			<div class="owl-carousel owl-carousel-icons">
				<div class="item">
					<div class="card mb-0 overflow-hidden">
						<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
						<div class="item-card2-img">
							<a href="flights.html" class="absolute-link"></a>
							<img src="/Assets/images/categories/flights/1.jpg" alt="img" class="cover-image">
						</div>
						<div class="card-body">
							<div class="d-flex mb-1">
								<div class=" d-inline-flex">
									<div class="rating-star sm block my-rating-5" data-stars="4s">
									</div> (163 Reviews)
								</div>
								<div class="ms-auto fs-20 font-weight-bold">$25</div>
							</div>
							<div class="item-card2">
								<div class="item-card2-desc">
									<div class="item-card2-text">
										<a href="flights.html" class="text-dark"><h4 class="mb-0 fs-16 font-weight-bold">Business Class Canda Flights</h4></a>
									</div>
									<div class="pt-2">
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-map-pin me-2 d-inline-block"></i> Canada - Australia </div></a>
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-calendar me-2 d-inline-block"></i> Fri 15 Oct - Sat 16 Oct</div></a>
										<div class="pb-0 pt-0 mb-0 mt-2"><i class="fe fe-clock me-2 d-inline-block"></i> 1 Stop - 17Hours 45Minutes</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0 overflow-hidden">
						<div class="item-card2-img">
							<a href="flights.html" class="absolute-link"></a>
							<img src="/Assets/images/categories/flights/2.jpg" alt="img" class="cover-image">
						</div>
						<div class="card-body">
							<div class="d-flex mb-1">
								<div class=" d-inline-flex">
									<div class="rating-star sm block my-rating-5" data-stars="4s">
									</div> (186 Reviews)
								</div>
								<div class="ms-auto fs-20 font-weight-bold">$25</div>
							</div>
							<div class="item-card2">
								<div class="item-card2-desc">
									<div class="item-card2-text">
										<a href="flights.html" class="text-dark"><h4 class="mb-0 fs-16 font-weight-bold">Africa Qeter Flight</h4></a>
									</div>
									<div class="pt-2">
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-map-pin me-2 d-inline-block"></i> Spain - Africa </div></a>
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-calendar me-2 d-inline-block"></i> Mon 18 Oct - Wed 20 Oct</div></a>
										<div class="pb-0 pt-0 mb-0 mt-2"><i class="fe fe-clock me-2 d-inline-block"></i> 2 Stops - 28Hours 30Minutes</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0 overflow-hidden">
						<div class="item-card2-img">
							<a href="flights.html" class="absolute-link"></a>
							<img src="/Assets/images/categories/flights/3.jpg" alt="img" class="cover-image">
						</div>
						<div class="card-body">
							<div class="d-flex mb-1">
								<div class=" d-inline-flex">
									<div class="rating-star sm block my-rating-5" data-stars="4s">
									</div> (63 Reviews)
								</div>
								<div class="ms-auto fs-20 font-weight-bold">$25</div>
							</div>
							<div class="item-card2">
								<div class="item-card2-desc">
									<div class="item-card2-text">
										<a href="flights.html" class="text-dark"><h4 class="mb-0 fs-16 font-weight-bold">Australia Special Flight</h4></a>
									</div>
									<div class="pt-2">
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-map-pin me-2 d-inline-block"></i> USA - Australia </div></a>
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-calendar me-2 d-inline-block"></i> Tue 19 Oct - Thu 21 Oct</div></a>
										<div class="pb-0 pt-0 mb-0 mt-2"><i class="fe fe-clock me-2 d-inline-block"></i> 4 Stops - 42Hours 45Minutes</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0 overflow-hidden">
						<div class="item-card2-img">
							<a href="flights.html" class="absolute-link"></a>
							<img src="/Assets/images/categories/flights/4.jpg" alt="img" class="cover-image">
						</div>
						<div class="card-body">
							<div class="d-flex mb-1">
								<div class=" d-inline-flex">
									<div class="rating-star sm block my-rating-5" data-stars="4s">
									</div> (125 Reviews)
								</div>
								<div class="ms-auto fs-20 font-weight-bold">$25</div>
							</div>
							<div class="item-card2">
								<div class="item-card2-desc">
									<div class="item-card2-text">
										<a href="flights.html" class="text-dark"><h4 class="mb-0 fs-16 font-weight-bold">Dubai Chopper Flight</h4></a>
									</div>
									<div class="pt-2">
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-map-pin me-2 d-inline-block"></i> Canada - Dubai </div></a>
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-calendar me-2 d-inline-block"></i> Thu 14 Oct - Sat 16 Oct</div></a>
										<div class="pb-0 pt-0 mb-0 mt-2"><i class="fe fe-clock me-2 d-inline-block"></i> 2 Stops - 27Hours 45Minutes</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0 overflow-hidden">
						<div class="item-card2-img">
							<a href="flights.html" class="absolute-link"></a>
							<img src="/Assets/images/categories/flights/5.jpg" alt="img" class="cover-image">
						</div>
						<div class="card-body">
							<div class="d-flex mb-1">
								<div class=" d-inline-flex">
									<div class="rating-star sm block my-rating-5" data-stars="4s">
									</div> (45 Reviews)
								</div>
								<div class="ms-auto fs-20 font-weight-bold">$25</div>
							</div>
							<div class="item-card2">
								<div class="item-card2-desc">
									<div class="item-card2-text">
										<a href="flights.html" class="text-dark"><h4 class="mb-0 fs-16 font-weight-bold">Business Airwings from USA</h4></a>
									</div>
									<div class="pt-2">
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-map-pin me-2 d-inline-block"></i> Australia - USA </div></a>
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-calendar me-2 d-inline-block"></i> Fri 15 Oct - Sun 16 Oct</div></a>
										<div class="pb-0 pt-0 mb-0 mt-2"><i class="fe fe-clock me-2 d-inline-block"></i> 4 Stops - 48 Hours 30 Minutes</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0 overflow-hidden">
						<div class="item-card2-img">
							<a href="flights.html" class="absolute-link"></a>
							<img src="/Assets/images/categories/flights/6.jpg" alt="img" class="cover-image">
						</div>
						<div class="card-body">
							<div class="d-flex mb-1">
								<div class=" d-inline-flex">
									<div class="rating-star sm block my-rating-5" data-stars="4s">
									</div> (76 Reviews)
								</div>
								<div class="ms-auto fs-20 font-weight-bold">$25</div>
							</div>
							<div class="item-card2">
								<div class="item-card2-desc">
									<div class="item-card2-text">
										<a href="flights.html" class="text-dark"><h4 class="mb-0 fs-16 font-weight-bold">Special Airlines</h4></a>
									</div>
									<div class="pt-2">
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-map-pin me-2 d-inline-block"></i> Spain - Paris </div></a>
										<a class="mb-1" href="javascript:void(0)"><div class="pb-0 pt-0 mb-2 mt-2"><i class="fe fe-calendar me-2 d-inline-block"></i> Thu 14 Oct - Sat 16 Oct</div></a>
										<div class="pb-0 pt-0 mb-0 mt-2"><i class="fe fe-clock me-2 d-inline-block"></i> 3 Stops - 38Hours 45Minutes</div>
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
				<span class="heading-style text-secondary">Today</span>
				<h2>Travel Flight List</h2>
				<p>Mauris ut cursus nunc. Morbi eleifend, ligula at consectetur vehicula</p>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-body">
							<div class="table-responsive bg-white">
								<table class="table table-bordered border-top table-stripped mb-0 text-nowrap">
									<thead>
										<tr>
											<th class="border-bottom-0 py-3">Flight Name</th>
											<th class="border-bottom-0 py-3">Timing</th>
											<th class="border-bottom-0 py-3">From - To</th>
											<th class="border-bottom-0 py-3">Week</th>
											<th class="border-bottom-0 py-3">Flight</th>
											<th class="border-bottom-0 py-3">Details</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="item-card2-desc"><a class="" href="javascript:void(0)"><i class="fa fa-plane ms-2 text-primary bg-primary-transparent"></i>Canda Flight</a></td>
											<td>
												<span class="">12:50 <i class="fe fe-arrow-right"></i> 05:50 <sup class="text-danger">+1 day</sup></span>
											</td>
											<td>Canada <i class="fe fe-arrow-right"></i> spain</td>
											<td>Mon, Wed</td>
											<td>Air Canada</td>
											<td><a class="btn btn-light btn-sm">Book Tickets</a></td>
										</tr>
										<tr>
											<td class="item-card2-desc"><a class="" href="javascript:void(0)"><i class="fa fa-plane ms-2 text-success bg-success-transparent"></i>Newzland businee Flight</a></td>
											<td>
												<span class="">14:50 <i class="fe fe-arrow-right"></i> 00:50 <sup class="text-danger">+2 days</sup></span>
											</td>
											<td>Spain <i class="fe fe-arrow-right"></i> New zeland</td>
											<td>Tue, Thu</td>
											<td>Airiwngs New zeland</td>
											<td><a class="btn btn-light btn-sm">Book Tickets</a></td>
										</tr>
										<tr>
											<td class="item-card2-desc"><a class="" href="javascript:void(0)"><i class="fa fa-plane ms-2 text-danger bg-danger-transparent"></i>Spain Qetes Flight</a></td>
											<td>
												<span class="">08:20 <i class="fe fe-arrow-right"></i> 06:40 <sup class="text-danger">+1 day</sup></span>
											</td>
											<td>Paris <i class="fe fe-arrow-right"></i> spain</td>
											<td>Mon, Wed, Thu</td>
											<td>Qetes</td>
											<td><a class="btn btn-light btn-sm">Book Tickets</a></td>
										</tr>
										<tr>
											<td class="item-card2-desc"><a class="" href="javascript:void(0)"><i class="fa fa-plane ms-2 text-info bg-info-transparent"></i>Eirgo India Flight</a></td>
											<td>
												<span class="">17:50 <i class="fe fe-arrow-right"></i> 23:50 <sup class="text-danger">+2 days</sup></span>
											</td>
											<td>Canada <i class="fe fe-arrow-right"></i> Delhi</td>
											<td>Mon, Wed, Fri, Sun</td>
											<td>Eirgo India</td>
											<td><a class="btn btn-light btn-sm">Book Tickets</a></td>
										</tr>
										<tr>
											<td class="item-card2-desc"><a class="" href="javascript:void(0)"><i class="fa fa-plane ms-2 text-warning bg-warning-transparent"></i>Qatar London Flight</a></td>
											<td>
												<span class="">03:30 <i class="fe fe-arrow-right"></i> 12:40 <sup class="text-danger">+2 days</sup></span>
											</td>
											<td>Korea <i class="fe fe-arrow-right"></i> London</td>
											<td>Sun, Wed, Sat</td>
											<td>Qutur Airlines</td>
											<td><a class="btn btn-light btn-sm">Book Tickets</a></td>
										</tr>
										<tr>
											<td class="item-card2-desc"><a class="" href="javascript:void(0)"><i class="fa fa-plane ms-2 text-secondary bg-secondary-transparent"></i>Air Flys Flight</a></td>
											<td>
												<span class="">13:20 <i class="fe fe-arrow-right"></i> 22:15 <sup class="text-danger">+1 day</sup></span>
											</td>
											<td>USA <i class="fe fe-arrow-right"></i> spain</td>
											<td>Mon, Wed, Sat</td>
											<td>Air Flys</td>
											<td><a class="btn btn-light btn-sm">Book Tickets</a></td>
										</tr>
										<tr>
											<td class="item-card2-desc"><a class="" href="javascript:void(0)"><i class="fa fa-plane ms-2 text-primary bg-primary-transparent"></i>Australia Flight</a></td>
											<td>
												<span class="">22:50 <i class="fe fe-arrow-right"></i> 05:50 <sup class="text-danger">+2 days</sup></span>
											</td>
											<td>Spain <i class="fe fe-arrow-right"></i> Australia</td>
											<td>Mon, Thu, Sun</td>
											<td>urjan Australia</td>
											<td><a class="btn btn-light btn-sm">Book Tickets</a></td>
										</tr>
										<tr>
											<td class="item-card2-desc"><a class="" href="javascript:void(0)"><i class="fa fa-plane ms-2 text-success bg-success-transparent"></i>Paris Special Flight</a></td>
											<td>
												<span class="">02:50 <i class="fe fe-arrow-right"></i> 03:50 <sup class="text-danger">+1 day</sup></span>
											</td>
											<td>Paris <i class="fe fe-arrow-right"></i> Usa</td>
											<td>Sun, Wed, Sat</td>
											<td>Enoiratoes</td>
											<td><a class="btn btn-light btn-sm">Book Tickets</a></td>
										</tr>
										<tr>
											<td class="item-card2-desc"><a class="" href="javascript:void(0)"><i class="fa fa-plane ms-2 text-info bg-info-transparent"></i>Korean Flights</a></td>
											<td>
												<span class="">04:25 <i class="fe fe-arrow-right"></i> 06:20 <sup class="text-danger">+1 day</sup></span>
											</td>
											<td>Canada <i class="fe fe-arrow-right"></i> Korean</td>
											<td>Mon, Wed, Fri</td>
											<td>All Mippon Airwings</td>
											<td><a class="btn btn-light btn-sm">Book Tickets</a></td>
										</tr>
										<tr>
											<td class="item-card2-desc"><a class="" href="javascript:void(0)"><i class="fa fa-plane ms-2 text-warning bg-warning-transparent"></i>Special Evar Air Flight</a></td>
											<td>
												<span class="">13:50 <i class="fe fe-arrow-right"></i> 18:20 <sup class="text-danger">+2 days</sup></span>
											</td>
											<td>South Africa <i class="fe fe-arrow-right"></i> India</td>
											<td>Mon, Tue, Wed</td>
											<td>Easr Air</td>
											<td><a class="btn btn-light btn-sm">Book Tickets</a></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="mt-4 text-center">
								<a class="btn btn-primary" href="javascript:void(0)"><i class="fa fa-chevron-down"></i> View More</a>
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
							<img src="/Assets/images/categories/flights/1.jpg" alt="img" class="cover-image">
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
							<img src="/Assets/images/categories/flights/2.jpg" alt="img" class="cover-image">
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
							<img src="/Assets/images/categories/flights/3.jpg" alt="img" class="cover-image">
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
			<div id="defaultCarousel" class="owl-carousel owl-carousel-icons3">
				<div class="item">
					<div class="card mb-0">
						<div class="d-xl-flex ieh-100">
							<div class="item7-card-img  br-te-0">
								<a href="blog-details.html"></a>
								<img src="/Assets/images/thumbnails/thumb3.jpg" alt="img" class="cover-image h-100 w-100 br-te-0">
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
								<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-1 leading-normal">We had lot of Enjoyment in Tour. Its A Great Trip</h4></a>
								<p>On the other hand, we denounce with righteous indignation and dislike </p>
								<a class="btn-link" href="blog-list.html">Read More <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0">
						<div class="d-xl-flex ieh-100">
							<div class="item7-card-img br-te-0">
								<a href="blog-details.html"></a>
								<img src="/Assets/images/thumbnails/thumb2.jpg" alt="img" class="cover-image h-100 w-100">
								<div class="date-blog bg-secondary">
									<h4 class="mb-0 font-weight-semibold2">27</h4>
									<small>JUL</small>
								</div>
							</div>
							<div class="card-body">
								<div class="mb-3 mt-0 d-inline-flex">
									<a href="javascript:void(0)" class="ms-0 ms-0 btn-link"><span class="text-default">By</span> John Smith</a>
									<a href="javascript:void(0)" class="ps-4 ms-4 border-start"> 14 comments</a>
								</div>
								<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-1 leading-normal">Best Tour Places and It's a Great Adventure Trip</h4></a>
								<p>On the other hand, we denounce with righteous indignation and dislike </p>
								<a class="btn-link" href="blog-list.html">Read More <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0">
						<div class="d-xl-flex ieh-100">
							<div class="item7-card-img br-te-0">
								<a href="blog-details.html"></a>
								<img src="/Assets/images/thumbnails/thumb1.jpg" alt="img" class="cover-image h-100 w-100">
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
								<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-1 leading-normal">We had lot of Enjoyment in Tour. Its A Great Trip</h4></a>
								<p>On the other hand, we denounce with righteous indignation and dislike </p>
								<a class="btn-link" href="blog-list.html">Read More <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0">
						<div class="d-xl-flex ieh-100">
							<div class="item7-card-img br-te-0">
								<a href="blog-details.html"></a>
								<img src="/Assets/images/thumbnails/thumb7.jpg" alt="img" class="cover-image h-100 w-100">
								<div class="date-blog bg-secondary">
									<h4 class="mb-0 font-weight-semibold2">27</h4>
									<small>JUL</small>
								</div>
							</div>
							<div class="card-body">
								<div class="mb-3 mt-0 d-inline-flex">
									<a href="javascript:void(0)" class="ms-0 ms-0 btn-link"><span class="text-default">By</span> John Smith</a>
									<a href="javascript:void(0)" class="ps-4 ms-4 border-start"> 4 comments</a>
								</div>
								<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-1 leading-normal">Best Tour Places and It's a Great Adventure Trip</h4></a>
								<p>On the other hand, we denounce with righteous indignation and dislike </p>
								<a class="btn-link" href="blog-list.html">Read More <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0">
						<div class="d-xl-flex ieh-100">
							<div class="item7-card-img br-te-0">
								<a href="blog-details.html"></a>
								<img src="/Assets/images/thumbnails/thumb5.jpg" alt="img" class="cover-image h-100 w-100">
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
								<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-1 leading-normal">We had lot of Enjoyment in Tour. Its A Great Trip</h4></a>
								<p>On the other hand, we denounce with righteous indignation and dislike </p>
								<a class="btn-link" href="blog-list.html">Read More <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card mb-0">
						<div class="d-xl-flex ieh-100">
							<div class="item7-card-img br-te-0">
								<a href="blog-details.html"></a>
								<img src="/Assets/images/thumbnails/thumb6.jpg" alt="img" class="cover-image h-100 w-100">
								<div class="date-blog bg-secondary">
									<h4 class="mb-0 font-weight-semibold2">27</h4>
									<small>JUL</small>
								</div>
							</div>
							<div class="card-body">
								<div class="mb-3 mt-0 d-inline-flex">
									<a href="javascript:void(0)" class="ms-0 ms-0 btn-link"><span class="text-default">By</span> John Smith</a>
									<a href="javascript:void(0)" class="ps-4 ms-4 border-start"> 4 comments</a>
								</div>
								<a href="blog-details.html" class="text-dark leading-normal"><h4 class="font-weight-semibold2 mt-1 leading-normal">Best Tour Places and It's a Great Adventure Trip</h4></a>
								<p>On the other hand, we denounce with righteous indignation and dislike </p>
								<a class="btn-link" href="blog-list.html">Read More <i class="fa fa-angle-right"></i></a>
							</div>
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
