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
							<h2 class="fs-50">
								<span class="font-weight-bold">
									<asp:Label ID="FlightCountLabel" runat="server" Text="Label"></asp:Label>
							    </span>  Flights available
							</h2>
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
											<asp:LinkButton ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" CssClass="btn btn-block btn-secondary fs-14 br-ts-0 br-bs-0 shadow-none btn-lg" >Search</asp:LinkButton>
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
											<a class="text-dark">Economy
												<span class="label label-light float-end">
													<asp:Label ID="EconomyLabel" runat="server" Text="Label"></asp:Label>
											    </span>
											</a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											<a class="text-dark">Premium Economy
												<span class="label label-light float-end">
													<asp:Label ID="PremiumEconomyLabel" runat="server" Text="Label"></asp:Label>
												</span>
											</a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">Business
												<span class="label label-light float-end">
													<asp:Label ID="BusinessLabel" runat="server" Text="Label"></asp:Label>
												</span>
											</a>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-3">
										<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
										<span class="custom-control-label">
											<a class="text-dark">First Class
												<span class="label label-light float-end">
													<asp:Label ID="FirstLabel" runat="server" Text="Label"></asp:Label>
												</span>
											</a>
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
									<asp:Repeater ID="AirlineRepeater" runat="server">
										<ItemTemplate>
											<label class="custom-control custom-checkbox mb-3">
												<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
												<span class="custom-control-label">
													<a class="text-dark"><%# Eval("Name") %><span class="label label-light float-end"><%# Eval("FlightCount") %></span></a>
												</span>
											</label>
										</ItemTemplate>
									</asp:Repeater>
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
												
													<asp:Repeater ID="FlightRepeater" runat="server">
														<ItemTemplate>
															<div class="card overflow-hidden">
																<div class="d-xl-flex ieh-100">
																	<div class="card border-0 mb-0 br-0">
																		<div class="card-body">
																			<div class="item-card9 mb-4">
																				<div class="d-sm-flex">
																					<div class="">
																						<i class="text-dark">
																							<h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal"> <%# Eval("Departure.AirlineName") %> </h4>
																						</i>
																						<asp:Repeater ID="Repeater1" runat="server" DataSource='<%# Eval("Departure.FlightClass") %>'>
																							<ItemTemplate>
																								<span class="badge bg-pill border mt-1 fs-12"><%# Container.DataItem.ToString() %></span>
																							</ItemTemplate>
																						</asp:Repeater>
																					</div>
																				</div>
																			</div>
																			<div class="item-card2-desc">
																				<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block">
																					<i class="fe fe-calendar me-1 d-inline-block"></i> 
																					<%# DataBinder.Eval(Container, "DataItem.Departure.DepartureDate", "{0:h:mm tt}") %>
																					- (2 hours) - 
																					<%# DataBinder.Eval(Container, "DataItem.Departure.DepartureDate", "{0:h:mm tt}") %>
																				</a>
																				<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block">
																					<i class="fe fe-map-pin me-1 d-inline-block"></i> <%# Eval("Departure.DepartureCity") %> ---> <%# Eval("Departure.DestinationCity") %> </a>
																			</div>
																		</div>
																		<div class="card-footer d-flex">
																			<div class=" d-inline-flex">
																				<a class="fs-13 leading-tight mt-1" href="javascript:void(0)">
																					#
																					<asp:Label ID="Id" runat="server" Text='<%# Eval("Departure.Id") %>'></asp:Label>
																					     (<%# Eval("Departure.Plane") %>)
																				</a>
																			</div>
																			<div class="ms-auto">
																				<h3 class="mb-0 font-weight-semibold2">
																					<asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" OnClick="SubmitLinkButton_Click" runat="server">From $<%# Eval("Departure.FlightPrice[0]") %>*</asp:LinkButton>
																				</h3>
																			</div>
																		</div>
																	</div>
																	<div class="card border-0 mb-0 br-0">
																		<div class="card-body">
																			<div class="item-card9 mb-4">
																				<div class="d-sm-flex">
																					<div class="">
																						<i class="text-dark">
																							<h4 class="font-weight-semibold2 mt-1 mb-2 leading-normal"> <%# Eval("Return.AirlineName") %> </h4>
																						</i>
																						<asp:Repeater ID="Repeater2" runat="server" DataSource='<%# Eval("Return.FlightClass") %>'>
																							<ItemTemplate>
																								<span class="badge bg-pill border mt-1 fs-12"><%# Container.DataItem.ToString() %></span>
																							</ItemTemplate>
																						</asp:Repeater>
																					</div>
																				</div>
																			</div>
																			<div class="item-card2-desc">
																				<a href="javascript:void(0)" class="mt-1 mb-0 text-dark d-block">
																					<i class="fe fe-calendar me-1 d-inline-block"></i> <%# DataBinder.Eval(Container, "DataItem.Return.DepartureDate", "{0:h:mm tt}") %> - (2 hours) - <%# DataBinder.Eval(Container, "DataItem.Return.DepartureDate", "{0:h:mm tt}") %></a>
																				<a href="javascript:void(0)" class="mt-2 mb-0 text-dark d-block">
																					<i class="fe fe-map-pin me-1 d-inline-block"></i> <%# Eval("Return.DepartureCity") %> ---> <%# Eval("Return.DestinationCity") %> </a>
																			</div>
																		</div>
																		<div class="card-footer d-flex">
																			<div class=" d-inline-flex">
																				<a class="fs-13 leading-tight mt-1" href="javascript:void(0)">
																					#
																					<asp:Label ID="Label2" runat="server" Text='<%# Eval("Return.Id") %>'></asp:Label>
																					     (<%# Eval("Return.Plane") %>)
																				</a>
																			</div>
																			<div class="ms-auto">
																				<h3 class="mb-0 font-weight-semibold2">
																					<asp:LinkButton ID="LinkButton2" CssClass="btn btn-outline-primary" runat="server" Enabled="false">Return Flight</asp:LinkButton>
																				</h3>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</ItemTemplate>
													</asp:Repeater>

												
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

</asp:Content>
