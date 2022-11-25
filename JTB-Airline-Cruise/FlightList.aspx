<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FlightList.aspx.cs" Inherits="JTB_Airline_Cruise.FlightList" EnableEventValidation="false" %>
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
									<input type="text" class="form-control location-input border-end br-te-0 br-be-0 input-lg" placeholder="Search for  Flight" disabled="disabled">
									<span><img src="/Assets/images/svgs/gps.svg" class="location-gps" alt="img"></span>
								</div>
								<div class="form-group  col-xl-2 col-lg-2 col-md-12 mb-0 select2-lg border-end">
									<asp:DropDownList ID="DepartureDropDownList" runat="server" placeholder="From"
										CssClass="form-control custom-select select2-show-search"></asp:DropDownList>
								</div>								
								<div class="form-group  col-xl-2 col-lg-2 col-md-12 mb-0 select2-lg border-end">
									<asp:DropDownList ID="DestinationDropDownList" runat="server" placeholder="To"
										CssClass="form-control custom-select select2-show-search"></asp:DropDownList>
								</div>
								<div class="form-group  col-xl-2 col-lg-2 col-md-12 mb-0 select2-lg border-end bg-light-30">
									<div class="input-group d-flex align-items-center">
										<span class="label ms-2 text-default mt-2 fs-14">Adults</span>
										<span class="input-group-btn minus"><i class="fe fe-minus"></i></span>
										<asp:TextBox ID="AdultsTextBox" runat="server" CssClass="form-control input-lg text-center qty px-0" name="quantity" value="1"></asp:TextBox>
										<span class="input-group-btn add me-2"><i class="fe fe-plus"></i></span>
									</div>
								</div>
								<div class="form-group col-xl-4 col-lg-4  col-md-12 mb-0 location">
									<div class="row g-0">
										<div class="form-group  col-xl-6 col-lg-6 col-md-12 mb-0 border-end border-start">
											<asp:TextBox ID="DateRangeTextBox" runat="server" CssClass="form-control daterange-btn br-0 input-lg" placeholder="From When To When"></asp:TextBox>
										</div>
										<div class="col-xl-6 col-lg-6 col-md-12 mb-0">
											<asp:LinkButton ID="SubmitButton" runat="server" CssClass="btn btn-block btn-secondary fs-14 br-ts-0 br-bs-0 shadow-none btn-lg" >Search</asp:LinkButton>
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
									<!-- Add Repeater -->
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											<a class="text-dark">Singapore Airwings<span class="label label-light float-end">14</span></a>
										</span>
									</label>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-9 col-lg-9 col-md-7">
					
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
												<input type="radio" name="value" value="Latest" class="selectgroup-input">
												<span class="selectgroup-button">Latest</span>
											</label>
											
										</div>
										<ul class="nav item2-gl-menu ms-auto mt-1">
											<li class=""><a href="#tab-11" class="active show" data-bs-toggle="tab" title="List style"><i class="fe fe-list"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="tab-content">
									<div class="tab-pane active" id="tab-11">
										<div class="row">
											<!-- Add Repeater -->
											<div class="col-xl-12 col-lg-6 col-md-12">
												<div class="card overflow-hidden">
													<asp:Repeater ID="FlightRepeater" runat="server">
														<ItemTemplate>
															<div class="d-xl-flex ieh-100">
																<div class="item-card9-img w-100">
																	<div class="item-card9-imgs">
																		<img src="/Assets/images/categories/flights/1.jpg" alt="img" class="cover-image">
																		<div class="item-card2-img1" data-bs-toggle="modal" data-bs-target="#gallery">
																			<span class="badge bg-dark-transparent6 text-white fs-14 font-weight-semibold2">
																				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ticketModal">View modal</button>
																			</span>
																		</div>
																	</div>
																</div>
																<div class="card border-0 mb-0 br-0">
																	<div class="card-body">
																		<div class="item-card9 mb-4">
																			<div class="d-sm-flex">
																				<div class="">
																				<!--	<a href="<%#: GetRouteUrl("FlightDetails", new {Id = 1}) %>"></a> --> 
																					<a href="#" class="text-dark">
																						<h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal">
																							<%# Eval("AirlineName") %> Flight-<%# Eval("Id") %>
																						</h4>
																					</a>
																					<asp:Repeater ID="FlightClassRepeater" runat="server" DataSource='<%# Eval("FlightClass") %>'>
																						<ItemTemplate>
																							<span class="badge bg-pill border mt-1 fs-12"><%# Container.DataItem.ToString() %></span>
																						</ItemTemplate>
																					</asp:Repeater>
																				</div>
																			</div>
																		</div>
																		<div class="item-card2-desc">
																			<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block">
																				<i class="fe fe-calendar me-1 d-inline-block"></i> <%# Eval("DepartureDate") %> - <%# Eval("ReturnDate") %></a>
																			<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block">
																				<i class="fe fe-clock me-1 d-inline-block"></i> <%# Eval("DepartureCity") %> - <%# Eval("DestinationCity") %> </a>
																		</div>
																	</div>
																	<div class="card-footer d-flex">
																		<div class=" d-inline-flex">
																			<a class="fs-13 leading-tight mt-1" href="javascript:void(0)"><%# Eval("Plane") %></a>
																		</div>
																		<div class="ms-auto">
																			<h3 class="mb-0 font-weight-semibold2">$<%# Eval("FlightPrice[0]") %>*</h3>
																		</div>
																	</div>
																</div>
															</div>
														</ItemTemplate>
													</asp:Repeater>

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
																	<a class="fs-13 leading-tight mt-1" href="javascript:void(0)">124 Reviews</a>
																</div>
																<div class="ms-auto">
																	<h3 class="mb-0 font-weight-semibold2">$354</h3>
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
					</div>
					<!--/Add lists-->
				</div>
			</div>
		</div>
	</section>
	<!--/Add Listings-->

	<!-- Modal -->
	<div class="modal fade" id="ticketModal" tabindex="-1" role="dialog" aria-labelledby="ticketModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="ticketModalLabel">Book FLight</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="btn-close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<asp:DropDownList ID="FlightClassDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>
					</div>
					<div class="form-group">
						<h4>
							<asp:Label ID="PriceLabel" runat="server" Text="Label"></asp:Label>
						</h4>
					</div>
				</div>
				<div class="modal-footer">
					<asp:Button ID="BookFlightButton" runat="server" Text="Book Flight" CssClass="btn btn-primary" />
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
				</div>
			</div>
		</div>
	</div>

</asp:Content>
