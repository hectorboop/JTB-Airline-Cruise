<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="JTB_Airline_Cruise.UserDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Loader-->
	<div id="global-loader" class="bg-primary">
		<div class="loader-svg-img">
			<img src="/Assets/images/brand/2.png" class="" alt="">
			<div class="flight-icon"><i class="fa fa-plane"></i></div>
		</div>
	</div>

	<!--Breadcrumb-->
	<section class="bannerimg cover-image bg-background3" data-image-src="/Assets/images/banners/slide-banner.jpg">
		<div class="header-text mb-0">
			<div class="container">
				<div class="row text-white">
					<div class="col"><h1 class="">User Profile</h1></div>
					<div class="col col-auto">
						<ol class="breadcrumb text-center">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
							<li class="breadcrumb-item active text-white" aria-current="page">User Profile</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/Breadcrumb-->

	<!--User Profile-->
	<section class="sptb">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="card overflow-hidden">
						<div class="card-status bg-primary"></div>
						<div class="card-body p-5">
							<div class="wideget-user">
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="wideget-user-desc d-sm-flex p-4 bg-light-50 br-5">
											<div class="wideget-user-img me-4 relative mb-3 mb-sm-0">
												<img class="brround border w-auto" src="/Assets/images/faces/male/20.jpg" alt="img">
												<a class="edit-profile-icon" href="javascript:void(0)"><i class="fe fe-camera"></i></a>
											</div>
											<div class="user-wrap wideget-user-info mt-4">
												<a href="javascript:void(0)" class="">
													<h4 class="font-weight-semibold2 mb-2">
														<asp:Label ID="UserNameLabel" runat="server" Text="Label"></asp:Label>
													</h4>
												</a>
												<div class="wideget-user-rating mb-3">

												</div>
												<div class="wideget-user-info ">
													<div class="wideget-user-icons mt-2">
														<a href="javascript:void(0)" class="facebook-bg mt-0 text-primary"><i class="fa fa-facebook"></i></a>
														<a href="javascript:void(0)" class="twitter-bg text-primary"><i class="fa fa-twitter"></i></a>
														<a href="javascript:void(0)" class="google-bg text-primary"><i class="fa fa-google"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="wideget-user-tab wideget-user-tab3 mt-5">
								<div class="tab-menu-heading">
									<div class="tabs-menu1">
										<ul class="nav">
											<li class=""><a href="#tab-5" class="active" data-bs-toggle="tab">Profile</a></li>
											<li><a href="#tab-6" data-bs-toggle="tab" class="">Edit Profile</a></li>
											<li><a href="#tab-7" data-bs-toggle="tab" class="">Cruise Bookings</a></li>
											<li><a href="#tab-8" data-bs-toggle="tab" class="">Flight Bookings</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="br-4 mb-0 overflow-hidden border br-ts-0 bg-white">
								<div class="card-body">
									<div class="border-0">
										<div class="tab-content">
											<div class="tab-pane active p-3" id="tab-5">
												<div class="profile-log-switch">
													<div class="media-heading">
														<h3 class="card-title mb-3 font-weight-semibold2">Personal Details</h3>
													</div>
													<ul class="usertab-list mb-0 mt-3">
														<li><a href="javascript:void(0)" class="text-dark"><span class="font-weight-semibold">Full Name :</span> Rubin Carmody</a></li>
														<li><a href="javascript:void(0)" class="text-dark"><span class="font-weight-semibold">Location :</span> USA</a></li>
														<li><a href="javascript:void(0)" class="text-dark"><span class="font-weight-semibold">Languages :</span> English, German, Spanish.</a></li>
														<li><a href="javascript:void(0)" class="text-dark"><span class="font-weight-semibold">Website :</span> https://www.spruko.com/gowell</a></li>
														<li><a href="javascript:void(0)" class="text-dark"><span class="font-weight-semibold">Email :</span> georgemestayer@Gowell.com</a></li>
														<li><a href="javascript:void(0)" class="text-dark"><span class="font-weight-semibold">Phone :</span> +125 254 3562 </a></li>
														<li><a href="javascript:void(0)" class="text-dark"><span class="font-weight-semibold">Designation :</span> CEO of Company </a></li>
														<li><a href="javascript:void(0)" class="text-dark"><span class="font-weight-semibold">Gender :</span> Male </a></li>
													</ul>
													<div class="mt-5 profie-img">
														<div class="leading-normal-2">
															<div class="media-heading">
																<h3 class="card-title mb-3 font-weight-semibold2">Biography</h3>
															</div>
															<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus how to pursue pleasure rationally encounter but because those who do not know how to pursue consequences that are extremely</p>
															<p class="mb-0">because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter but because those who do not know how to pursue consequences the extre painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>
														</div>
													</div>
													<div class="mt-5 profie-img">
														<div class="leading-normal-2">
															<div class="media-heading">
																<h3 class="card-title mb-3 font-weight-semibold2">Gallery</h3>
															</div>
															<div class="row row-deck">
																<div class="col-sm-6 col-md-3 col-lg-2">
																	<div class="text-center mb-4 mb-lg-0">
																		<a class="" href="javascript:void(0)"><img src="/Assets/images/categories/category/1.png" alt="img"></a>
																		<h6 class="mb-0 p-3 border border-top-0">Gallery Img-01</h6>
																	</div>
																</div>
																<div class="col-sm-6 col-md-3 col-lg-2">
																	<div class="text-center mb-4 mb-lg-0">
																		<a class="" href="javascript:void(0)"><img src="/Assets/images/categories/category/2.png" alt="img"></a>
																		<h6 class="mb-0 p-3 border border-top-0">Gallery Img-02</h6>
																	</div>
																</div>
																<div class="col-sm-6 col-md-3 col-lg-2">
																	<div class="text-center mb-4 mb-md-0">
																		<a class="" href="javascript:void(0)"><img src="/Assets/images/categories/category/3.png" alt="img"></a>
																		<h6 class="mb-0 p-3 border border-top-0">Gallery Img-03</h6>
																	</div>
																</div>
																<div class="col-sm-6 col-md-3 col-lg-2">
																	<div class="text-center mb-4 mb-md-0">
																		<a class="" href="javascript:void(0)"><img src="/Assets/images/categories/category/4.png" alt="img"></a>
																		<h6 class="mb-0 p-3 border border-top-0">Gallery Img-04</h6>
																	</div>
																</div>
																<div class="col-sm-6 col-md-3 col-lg-2">
																	<div class="text-center mb-4 mb-sm-0">
																		<a class="" href="javascript:void(0)"><img src="/Assets/images/categories/category/5.png" alt="img"></a>
																		<h6 class="mb-0 p-3 border border-top-0">Gallery Img-05</h6>
																	</div>
																</div>
																<div class="col-sm-6 col-md-3 col-lg-2">
																	<div class="text-center mb-0 bg-light border p-4 relative w-100">
																		<a class="absolute-link2" href="javascript:void(0)"><span class="absolute-span">View all</span></a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane p-3" id="tab-6">
												<div class="row">
													<div class="col-sm-6 col-md-6">
														<div class="form-group">
															<label class="form-label">First Name</label>
															<input type="text" class="form-control" placeholder="First Name">
														</div>
													</div>
													<div class="col-sm-6 col-md-6">
														<div class="form-group">
															<label class="form-label">Last Name</label>
															<input type="text" class="form-control" placeholder="Last Name">
														</div>
													</div>
													<div class="col-sm-6 col-md-6">
														<div class="form-group">
															<label class="form-label">Email address</label>
															<input type="email" class="form-control" placeholder="Email">
														</div>
													</div>
													<div class="col-sm-6 col-md-6">
														<div class="form-group">
															<label class="form-label">Phone Number</label>
															<input type="number" class="form-control" placeholder="Number">
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<label class="form-label">Address</label>
															<input type="text" class="form-control" placeholder="Home Address">
														</div>
													</div>
													<div class="col-sm-6 col-md-4">
														<div class="form-group">
															<label class="form-label">City</label>
															<input type="text" class="form-control" placeholder="City">
														</div>
													</div>
													<div class="col-sm-6 col-md-3">
														<div class="form-group">
															<label class="form-label">Postal Code</label>
															<input type="number" class="form-control" placeholder="ZIP Code">
														</div>
													</div>
													<div class="col-md-5">
														<div class="form-group">
															<label class="form-label">Country</label>
															<select class="form-control select2-show-search border-bottom-0 w-100 select2-show-search" data-placeholder="Select">
																<optgroup label="Categories">
																	<option>--Select--</option>
																	<option value="1">Germany</option>
																	<option value="2">Real Estate</option>
																	<option value="3">Canada</option>
																	<option value="4">Usa</option>
																	<option value="5">Afghanistan</option>
																	<option value="6">Albania</option>
																	<option value="7">China</option>
																	<option value="8">Denmark</option>
																	<option value="9">Finland</option>
																	<option value="10">India</option>
																	<option value="11">Kiribati</option>
																	<option value="12">Kuwait</option>
																	<option value="13">Mexico</option>
																	<option value="14">Pakistan</option>
																</optgroup>
															</select>
														</div>
													</div>
													<div class="col-sm-6 col-md-6">
														<div class="form-group">
															<label class="form-label">Designation</label>
															<input type="text" class="form-control" placeholder="Email">
														</div>
													</div>
													<div class="col-sm-6 col-md-6">
														<div class="form-group">
															<label class="form-label">Gender</label>
															<select class="form-control select2-show-search border-bottom-0 w-100 select2" data-placeholder="Select">
																<optgroup label="Categories">
																	<option value="1">Male</option>
																	<option value="2">Female</option>
																</optgroup>
															</select>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<label class="form-label">About Me</label>
															<textarea rows="5" class="form-control" placeholder="Enter About your description"></textarea>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<label class="form-label">Upload Image</label>
															<div class="input-group mb-5">
																<input type="text" class="form-control browse-file" placeholder="Choose" readonly>
																<label class="input-group-btn">
																	<span class="btn btn-primary br-ts-0 br-bs-0">
																		Browse <input type="file" style="display: none;" multiple>
																	</span>
																</label>
															</div>
														</div>
													</div>
													<div class="col-md-12">
														<button type="submit" class="btn btn-secondary">Update Profile</button>
													</div>
												</div>
											</div>

											<div class="tab-pane userprof-tab" id="tab-7">
												<div class="row">
													
													<div class="col-lg-4 col-md-6">
														<div class="card overflow-hidden card-absolute">
															<div class="">
																<div class="item-card9-img w-100">
																	<div class="item-card9-imgs">
																		<img src="/Assets/images/categories/03.png" alt="img" class="cover-image">
																	</div>
																</div>
																<div class="card border-0 mb-0 br-0">
																	<div class="card-body">
																		<div class="item-card9">
																			<div class="d-sm-flex">
																				<div class="">
																					<div class=" d-inline-flex">
																						<div class="rating-star sm block my-rating-5" data-stars="4s">
																						</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">Superb</a>
																					</div>
																					<a href="tours.html" class="text-dark"><h4 class="font-weight-semibold2 mt-0 mb-0 leading-normal">India Tour</h4></a>
																				</div>
																				<div class="ms-auto"><b class="text-secondary fs-30 leading-tight">$421</b></div>
																			</div>
																		</div>
																		<p class="fs-14 mt-2 leading-normal">We denounce with righteous indignation and dislike men who are so beguiled</p>
																		<div class="item-card2-desc d-inline-flex">
																			<a href="javascript:void(0)" class="mt-1 mb-0 me-3 pe-3 border-end text-dark"><i class="fe fe-map-pin me-1 d-inline-block"></i> India</a>
																			<a href="javascript:void(0)" class="mt-1 mb-0 me-3 pe-3 border-end text-dark"><i class="fe fe-clock me-1 d-inline-block"></i> 16 Days</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="center-block text-center ">
													<ul class="pagination mb-0 mt-5">
														<li class="page-item page-prev disabled">
															<a class="page-link" href="javascript:void(0)" tabindex="-1">Prev</a>
														</li>
														<li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
														<li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
														<li class="page-item page-next">
															<a class="page-link" href="javascript:void(0)">Next</a>
														</li>
													</ul>
												</div>
											</div>

											<div class="tab-pane userprof-tab" id="tab-8">
												<div class="row">
													
													<div class="col-lg-4 col-md-6">
														<div class="card overflow-hidden card-absolute">
															<div class="">
																<div class="item-card9-img w-100">
																	<div class="item-card9-imgs">
																		<img src="/Assets/images/categories/03.png" alt="img" class="cover-image">
																	</div>
																</div>
																<div class="card border-0 mb-0 br-0">
																	<div class="card-body">
																		<div class="item-card9">
																			<div class="d-sm-flex">
																				<div class="">
																					<div class=" d-inline-flex">
																						<div class="rating-star sm block my-rating-5" data-stars="4s">
																						</div>  <a class="fs-13 leading-tight mt-1" href="javascript:void(0)">Superb</a>
																					</div>
																					<a href="tours.html" class="text-dark"><h4 class="font-weight-semibold2 mt-0 mb-0 leading-normal">India Tour</h4></a>
																				</div>
																				<div class="ms-auto"><b class="text-secondary fs-30 leading-tight">$421</b></div>
																			</div>
																		</div>
																		<p class="fs-14 mt-2 leading-normal">We denounce with righteous indignation and dislike men who are so beguiled</p>
																		<div class="item-card2-desc d-inline-flex">
																			<a href="javascript:void(0)" class="mt-1 mb-0 me-3 pe-3 border-end text-dark"><i class="fe fe-map-pin me-1 d-inline-block"></i> India</a>
																			<a href="javascript:void(0)" class="mt-1 mb-0 me-3 pe-3 border-end text-dark"><i class="fe fe-clock me-1 d-inline-block"></i> 16 Days</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="center-block text-center ">
													<ul class="pagination mb-0 mt-5">
														<li class="page-item page-prev disabled">
															<a class="page-link" href="javascript:void(0)" tabindex="-1">Prev</a>
														</li>
														<li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
														<li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
														<li class="page-item page-next">
															<a class="page-link" href="javascript:void(0)">Next</a>
														</li>
													</ul>
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
		</div>
	</section>
</asp:Content>
