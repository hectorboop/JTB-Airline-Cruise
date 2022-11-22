<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FlightList.aspx.cs" Inherits="JTB_Airline_Cruise.FlightList" %>
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
	<div class="cover-image sptb py-9 bg-background-color bg-background-color-dark1" data-image-src="/Assets/images/banners/banner18.jpg">
		<div class="content-text mb-0">
			<div class="container">
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12 d-block mx-auto">
						<div class="text-white ">
							<h2 class="fs-50"><span class="font-weight-bold">96,758</span>  Flights available</h2>
						</div>
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
	<!--/Sliders Section-->

	<!--Breadcrumb-->
	<div class="bg-white border-bottom">
		<div class="container">
			<div class="page-header">
				<h4 class="page-title">Flight List</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
					<li class="breadcrumb-item"><a href="javascript:void(0)">Pages</a></li>
					<li class="breadcrumb-item active" aria-current="page">Flight List</li>
				</ol>
			</div>
		</div>
	</div>
	<!--/Breadcrumb-->

	<!--Add listing-->
	<section class="sptb">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-5">
					<div class="card mb-lg-0">
						<div class="card-header">
							<h3 class="card-title"><i class="fe fe-sliders"></i> Filters</h3>
						</div>
						<div class="card-body pb-0">
							<h5 class="font-weight-semibold2 mb-3">Flight Type</h5>
							<div class="">
								<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											<a class="text-dark">Economy<span class="label label-light float-end">14</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											<a class="text-dark">Premium Economy<span class="label label-light float-end">22</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">Business<span class="label label-light float-end">78</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">First Class<span class="label label-light float-end">35</span></a>
										</span>
									</label>
								</div>
							</div>
						</div>
						<div class="card-body pb-0 border-top-0">
							<h5 class="font-weight-semibold2 mb-4">Stops</h5>
							<div class="">
								<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											<a class="text-dark">Non Stop</a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											<a class="text-dark">1 Stop</a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">2 Stops</a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">3 Stops</a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">4 Stops</a>
										</span>
									</label>
								</div>
							</div>
						</div><div class="card-body border-top-0 pb-0">
							<h5 class="font-weight-semibold2 mb-3">Ratings</h5>
							<div class="filter-product-checkboxs">
								<label class="custom-control custom-checkbox mb-2">
									<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
									<span class="custom-control-label">
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-yellow ms-2"><i class="fa fa-star"></i></span>
											Great
									</span>
								</label>
								<label class="custom-control custom-checkbox mb-2">
									<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
									<span class="custom-control-label">
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="ms-2 text-muted"><i class="fa fa-star"></i></span>
											Very Good
									</span>
								</label>
								<label class="custom-control custom-checkbox mb-2">
									<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
									<span class="custom-control-label">
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-muted"><i class="fa fa-star"></i></span>
										<span class="text-muted ms-2"><i class="fa fa-star"></i></span>
											Good
									</span>
								</label>
								<label class="custom-control custom-checkbox mb-2">
									<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
									<span class="custom-control-label">
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-muted"><i class="fa fa-star"></i></span>
										<span class="text-muted"><i class="fa fa-star"></i></span>
										<span class="text-muted ms-2"><i class="fa fa-star"></i></span>
											Average
									</span>
								</label>
								<label class="custom-control custom-checkbox mb-2">
									<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
									<span class="custom-control-label">
										<span class="text-yellow"><i class="fa fa-star"></i></span>
										<span class="text-muted"><i class="fa fa-star"></i></span>
										<span class="text-muted"><i class="fa fa-star"></i></span>
										<span class="text-muted"><i class="fa fa-star"></i></span>
										<span class="text-muted ms-2"><i class="fa fa-star"></i></span>
										Bad
									</span>
								</label>
								<label class="custom-control custom-checkbox mb-0">
									<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
									<span class="custom-control-label">
										<span class="text-muted"><i class="fa fa-star"></i></span>
										<span class="text-muted"><i class="fa fa-star"></i></span>
										<span class="text-muted"><i class="fa fa-star"></i></span>
										<span class="text-muted"><i class="fa fa-star"></i></span>
										<span class="text-muted ms-2"><i class="fa fa-star"></i></span>
										No Rating
									</span>
								</label>
							</div>
						</div>
						<div class="card-body border-top-0">
							<h5 class="font-weight-semibold2 mb-3">Price Range</h5>
							<input type="text" id="price" class="h6">
							<div id="mySlider"></div>
						</div>
						<div class="card-body pb-0 border-top-0 pb-7">
							<h5 class="font-weight-semibold2 mb-4">Air Lines</h5>
							<div class="" id="container">
								<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											<a class="text-dark">Singapore Airwings<span class="label label-light float-end">14</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											<a class="text-dark">Airiwngs New zeland<span class="label label-light float-end">22</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">Qetes<span class="label label-light float-end">78</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">Qutur Airlines<span class="label label-light float-end">35</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">Eirgo India<span class="label label-light float-end">35</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">Air Flys<span class="label label-light float-end">35</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">urjan Australia<span class="label label-light float-end">35</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">Enoiratoes<span class="label label-light float-end">35</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">All Mippon Airwings<span class="label label-light float-end">35</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">Easr Air<span class="label label-light float-end">35</span></a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">Japan Airwings<span class="label label-light float-end">35</span></a>
										</span>
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-9 col-lg-9 col-md-7">
					<div class="owl-carousel date-icon mb-5">
						<div class="item bg-white border border-end-0">
							<a class="text-center p-4 d-block" href="javascript:void(0)">
								<h6>Fri, Dec 21</h6>
								<h6 class="mb-0 fs-16 font-weight-bold">$563</h6>
							</a>
						</div>
						<div class="item bg-white border border-end-0">
							<a class="text-center p-4 d-block" href="javascript:void(0)">
								<h6>Sat, Dec 22</h6>
								<h6 class="mb-0 fs-16 font-weight-bold">$865</h6>
							</a>
						</div>
						<div class="item bg-white border border-end-0">
							<a class="text-center p-4 d-block" href="javascript:void(0)">
								<h6>Sun, Dec 23</h6>
								<h6 class="mb-0 fs-16 font-weight-bold">$652</h6>
							</a>
						</div>
						<div class="item bg-white border border-end-0">
							<a class="text-center p-4 d-block" href="javascript:void(0)">
								<h6>Mon, Dec 24</h6>
								<h6 class="mb-0 fs-16 font-weight-bold">$742</h6>
							</a>
						</div>
						<div class="item bg-white border border-end-0">
							<a class="text-center p-4 d-block" href="javascript:void(0)">
								<h6>Tue, Dec 25</h6>
								<h6 class="mb-0 fs-16 font-weight-bold">$365</h6>
							</a>
						</div>
						<div class="item bg-white border border-end-0">
							<a class="text-center p-4 d-block" href="javascript:void(0)">
								<h6>Wed, Dec 26</h6>
								<h6 class="mb-0 fs-16 font-weight-bold">$742</h6>
							</a>
						</div>
						<div class="item bg-white border border-end-0">
							<a class="text-center p-4 d-block" href="javascript:void(0)">
								<h6>Thu, Dec 27</h6>
								<h6 class="mb-0 fs-16 font-weight-bold">$857</h6>
							</a>
						</div>
						<div class="item bg-white border border-end-0">
							<a class="text-center p-4 d-block" href="javascript:void(0)">
								<h6>Fri, Dec 28</h6>
								<h6 class="mb-0 fs-16 font-weight-bold">$875</h6>
							</a>
						</div>
					</div>
					<!--Add lists-->
					<div class=" mb-lg-0">
						<div class="">
							<div class="item2-gl ">
								<div class="">
									<div class="bg-white p-5 item2-gl-nav d-flex">
										<div class="selectgroup">
											<label class="selectgroup-item mb-md-0">
												<input type="radio" name="value" value="All" class="selectgroup-input" checked="">
												<span class="selectgroup-button d-md-flex">All <i class="fa fa-sort ms-2 mt-1"></i></span>
											</label>
											<label class="selectgroup-item mb-md-0">
												<input type="radio" name="value" value="Distance" class="selectgroup-input">
												<span class="selectgroup-button">Famous</span>
											</label>
											<label class="selectgroup-item mb-md-0">
												<input type="radio" name="value" value="Latest" class="selectgroup-input">
												<span class="selectgroup-button">Latest</span>
											</label>
											<label class="selectgroup-item mb-0">
												<input type="radio" name="value" value="Rating" class="selectgroup-input">
												<span class="selectgroup-button">Rating</span>
											</label>
										</div>
										<ul class="nav item2-gl-menu ms-auto mt-1">
											<li class=""><a href="#tab-11" class="active show" data-bs-toggle="tab" title="List style"><i class="fe fe-list"></i></a></li>
											<li><a href="#tab-12" data-bs-toggle="tab" class="" title="Grid"><i class="fe fe-grid"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="tab-content">
									<div class="tab-pane active" id="tab-11">
										<div class="row">
											<div class="col-xl-12 col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="d-xl-flex ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/1.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Canada  Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Thu 14 Oct - Sat 16 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 3 Stops - 38Hours 45Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
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
											<div class="col-xl-12 col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="d-xl-flex ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/2.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">India  Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Fri 15 Oct - Sat 16 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 1 Stop - 17Hours 45Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
																	<div class="rating-star sm block my-rating-5" data-stars="4s">
																	</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">75 Reviews</a>
																</div>
																<div class="ms-auto">
																	<h3 class="mb-0 font-weight-semibold2">$654</h3>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xl-12 col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="d-xl-flex ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/3.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Dubai  Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Mon 18 Oct - Wed 20 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 2 Stops - 28Hours 30Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
																	<div class="rating-star sm block my-rating-5" data-stars="4s">
																	</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">56 Reviews</a>
																</div>
																<div class="ms-auto">
																	<h3 class="mb-0 font-weight-semibold2">$826</h3>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xl-12 col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="d-xl-flex ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/4.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Australia  Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Tue 19 Oct - Thu 21 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 4 Stops - 42Hours 45Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
																	<div class="rating-star sm block my-rating-5" data-stars="4s">
																	</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">41 Reviews</a>
																</div>
																<div class="ms-auto">
																	<h3 class="mb-0 font-weight-semibold2">$524</h3>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xl-12 col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="d-xl-flex ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/5.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">USA  Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Thu 14 Oct - Sat 16 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 2 Stops - 27Hours 45Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
																	<div class="rating-star sm block my-rating-5" data-stars="4s">
																	</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">51 Reviews</a>
																</div>
																<div class="ms-auto">
																	<h3 class="mb-0 font-weight-semibold2">$417</h3>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xl-12 col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="d-xl-flex ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/6.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Paris   Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Fri 15 Oct - Sun 16 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 4 Stops - 48 Hours 30 Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
																	<div class="rating-star sm block my-rating-5" data-stars="4s">
																	</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">62 Reviews</a>
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
									<div class="tab-pane" id="tab-12">
										<div class="row">
											<div class="col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/1.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Canada  Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Thu 14 Oct - Sat 16 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 3 Stops - 38Hours 45Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
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
											<div class="col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/2.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">India  Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Fri 15 Oct - Sat 16 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 1 Stop - 17Hours 45Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
																	<div class="rating-star sm block my-rating-5" data-stars="4s">
																	</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">75 Reviews</a>
																</div>
																<div class="ms-auto">
																	<h3 class="mb-0 font-weight-semibold2">$654</h3>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/3.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Dubai  Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Mon 18 Oct - Wed 20 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 2 Stops - 28Hours 30Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
																	<div class="rating-star sm block my-rating-5" data-stars="4s">
																	</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">56 Reviews</a>
																</div>
																<div class="ms-auto">
																	<h3 class="mb-0 font-weight-semibold2">$826</h3>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/4.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Australia   Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Tue 19 Oct - Thu 21 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 4 Stops - 42Hours 45Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
																	<div class="rating-star sm block my-rating-5" data-stars="4s">
																	</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">41 Reviews</a>
																</div>
																<div class="ms-auto">
																	<h3 class="mb-0 font-weight-semibold2">$524</h3>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/5.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">USA  Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Thu 14 Oct - Sat 16 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 2 Stops - 27Hours 45Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
																	<div class="rating-star sm block my-rating-5" data-stars="4s">
																	</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">51 Reviews</a>
																</div>
																<div class="ms-auto">
																	<h3 class="mb-0 font-weight-semibold2">$417</h3>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<div class="ieh-100">
														<div class="item-card9-img w-100">
															<div class="item-card9-imgs">
																<img src="/Assets/images/categories/flights/6.jpg" alt="img" class="cover-image">
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
																			<a href="flights.html" class="text-dark"><h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">Paris  Flight</h4></a>
																			<span class="badge bg-pill border mt-1 fs-12">Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">Premium Economy</span>
																			<span class="badge bg-pill border mt-1 fs-12">First Class</span>
																			<span class="badge bg-pill border mt-1 fs-12">Business</span>
																		</div>
																	</div>
																</div>
																<div class="item-card2-desc">
																	<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block"><i class="fe fe-calendar me-1 d-inline-block"></i> Fri 15 Oct - Sun 16 Oct</a>
																	<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block"><i class="fe fe-clock me-1 d-inline-block"></i> 4 Stops - 48 Hours 30 Minutes</a>
																</div>
															</div>
															<div class="card-footer d-flex">
																<div class=" d-inline-flex">
																	<div class="rating-star sm block my-rating-5" data-stars="4s">
																	</div> <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">62 Reviews</a>
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
								</div>
							</div>
							<div class="d-sm-flex">
								<h6 class="mb-4 mt-3 mb-sm-0">Showing <b>1 to 10</b> of 30 entries</h6>
								<ul class="pagination mb-5 ms-auto">
									<li class="page-item page-prev disabled">
										<a class="page-link" href="javascript:void(0)" tabindex="-1">Prev</a>
									</li>
									<li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
									<li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
									<li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
									<li class="page-item page-next">
										<a class="page-link" href="javascript:void(0)">Next</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!--/Add lists-->
				</div>
			</div>
		</div>
	</section>
	<!--/Add Listings-->

</asp:Content>
