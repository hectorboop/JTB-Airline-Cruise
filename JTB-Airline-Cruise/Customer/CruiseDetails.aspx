<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CruiseDetails.aspx.cs" Inherits="JTB_Airline_Cruise.CruiseDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Loader-->
	<div id="global-loader" class="bg-primary">
		<div class="loader-svg-img">
			<img src="/Assets/images/brand/2.png" class="" alt="">
			<div class="flight-icon"><i class="fa fa-plane"></i></div>
		</div>
	</div>
	<!--/Loader-->

	<!--BreadCrumb-->
	<div class="bg-white border-bottom">
		<div class="container">
			<div class="page-header">
				<h4 class="page-title">Cruise Details</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
					<li class="breadcrumb-item"><a href="javascript:void(0)">Categories</a></li>
					<li class="breadcrumb-item active" aria-current="page">Cruise Details</li>
				</ol>
			</div>
		</div>
	</div>
	<!--/BreadCrumb-->

	<!--Add listing-->
	<section class="sptb">
		<div class="container">
			<div class="row">
				<!--Side Content-->
				<div class="col-xl-4 col-lg-4 col-md-12">
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">Cruise Information </h3>
						</div>
						<div class="card-body">
							<div class="form-group">
								<asp:Label ID="RoomTypeLabel" runat="server" Text="Room Type" CssClass="form-label"></asp:Label>
								<asp:DropDownList ID="RoomTypeDropDownList" runat="server" CssClass="form-control custom-select select2" AutoPostBack="true" OnSelectedIndexChanged="RoomTypeDropDownList_SelectedIndexChanged"></asp:DropDownList>
							</div>
							<div class="form-group">
								<asp:Label ID="RoomNumberLabel" runat="server" Text="Room Number" CssClass="form-label"></asp:Label>
								<asp:DropDownList ID="RoomNumberDropDownList" runat="server" CssClass="form-control custom-select select2" AutoPostBack="true" OnSelectedIndexChanged="RoomNumberDropDownList_SelectedIndexChanged" ></asp:DropDownList>
							</div>
						</div>
					</div>
					<div class="card ">
						<div class="card-header">
							<h3 class="card-title">Personal Information</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<asp:Label ID="NameLabel" runat="server" Text="Name" CssClass="form-label"></asp:Label>
										<asp:TextBox ID="NameTextBox" runat="server" CssClass="form-control" placeholder="Name"  ></asp:TextBox>
										<asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="Name Is Required" ForeColor="Red" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
										
									</div>
								</div>
								<div class="col-sm-12 col-md-12">
									<div class="form-group">
										<asp:Label ID="EmailLabel" runat="server" Text="Email" CssClass="form-label"></asp:Label>
										<asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" placeholder="Email Address" TextMode="Email" ></asp:TextBox>
										<asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="Email Is Required" ForeColor="Red" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
										
									</div>
								</div>
								<div class="col-sm-12 col-md-12">
									<div class="form-group">
										<asp:Label ID="NumberLabel" runat="server" Text="Phone Number" CssClass="form-label"></asp:Label>
										<asp:TextBox ID="NumberTextBox" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
										<asp:RequiredFieldValidator ID="NumberValidator" runat="server" ErrorMessage="Phone Number Is Required" ForeColor="Red" ControlToValidate="NumberTextBox"></asp:RequiredFieldValidator>
										
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">Payments </h3>
						</div>
						<div class="card-body">
							<div class="form-group">
								<asp:Label ID="CardNameLabel" runat="server" Text="Cardholder Name" CssClass="form-label"></asp:Label>
								<asp:TextBox ID="CardNameTextBox" runat="server" CssClass="form-control" placeholder="Name On Card"  ></asp:TextBox>
								<asp:RequiredFieldValidator ID="CardNameValidator" runat="server" ErrorMessage="Cardholder Is Required" ForeColor="Red" ControlToValidate="CardNameTextBox"></asp:RequiredFieldValidator>
							</div>
							<div class="form-group">
								<asp:Label ID="CardNumberLabel" runat="server" Text="Card Number" CssClass="form-label"></asp:Label>
								<asp:TextBox ID="CardNumberTextBox" runat="server" CssClass="form-control" placeholder="Card Number"  ></asp:TextBox>
								<asp:RequiredFieldValidator ID="CardNumberValidator" runat="server" ErrorMessage="Card Number Is Required" ForeColor="Red" ControlToValidate="CardNumberTextBox"></asp:RequiredFieldValidator>
							</div>

							<div class="row">
								<div class="col-sm-8">
									<div class="form-group mb-sm-0">
										<label class="form-label">Expiration</label>
										<div class="input-group">
											<asp:TextBox ID="ExpiryDateTextBox" runat="server" CssClass="form-control" placeholder="MM/YY"  ></asp:TextBox>
											
											<asp:RequiredFieldValidator ID="ExpiryDateValidator" runat="server" ErrorMessage="Expiry Date Is Required" ForeColor="Red" ControlToValidate="ExpiryDateTextBox"></asp:RequiredFieldValidator>
											<asp:RegularExpressionValidator ID="ExpiryDateExpressionValidator" runat="server" ErrorMessage="Invalid Expiry Date" ForeColor="Red" ControlToValidate="ExpiryDateTextBox" ValidationExpression="^[0-9]{2}\\/[0-9]{2}$"></asp:RegularExpressionValidator>
											
										</div>
									</div>
								</div>
								<div class="col-sm-4 ">
									<div class="form-group mb-0">
										<label class="form-label">CVV <i class="fa fa-question-circle"></i></label>
										<asp:TextBox ID="CVVTextBox" runat="server" CssClass="form-control" placeholder="CVV"  ></asp:TextBox>
										<asp:RequiredFieldValidator ID="CVVValidator" runat="server" ErrorMessage="CVV Is Required" ForeColor="Red" ControlToValidate="CVVTextBox"></asp:RequiredFieldValidator>
										<asp:RegularExpressionValidator ID="CVVExpressionValidator" runat="server" ErrorMessage="Invalid CVV Date" ForeColor="Red" ControlToValidate="CVVTextBox" ValidationExpression="^[0-9]{3}$"></asp:RegularExpressionValidator>
									</div>
								</div>
							</div>
						</div>
					</div>

					
					<div class="card mt-5">
						<div class="card-body">
							<h4 class="font-weight-semibold2">Need Help for any Details?</h4>
							<div class="support-service bg-light br-5 mt-4">
								<i class="fa fa-phone bg-primary text-white"></i>
								<h6 class="text-default font-weight-bold mt-1">+1 876-929-9200-19</h6>
								<p class="text-default mb-0 fs-12">Jamaica Tourist Board Support!</p>
							</div>
						</div>
					</div>
				</div>
				<!--/ Side Content-->

				<div class="col-xl-8 col-lg-8 col-md-12">
					<!--Flight Overview-->
					<div class="card overflow-hidden">
						
						<div class="card-body">
							<div class="item-det mb-4">
								<a href="#" class="text-dark">
									<h3>
										<asp:Label ID="CruiseNameLabel" runat="server" Text="Label"></asp:Label>
								    </h3>
								</a>
								<div class=" d-flex">
									<ul class="d-flex mb-0">
										<li class="me-5">
											<a href="javascript:void(0)" class="icons">
												<i class="icon icon-location-pin text-muted me-1"></i>
												<asp:Label ID="DeparturePinLabel" runat="server" Text="Label"></asp:Label>
											</a>
										</li>
										<li class="me-5">
											<a href="javascript:void(0)" class="icons">
												<i class="icon icon-calendar text-muted me-1"></i>
												<asp:Label ID="DepartureCalLabel" runat="server" Text="Label"></asp:Label>
										    </a>
										</li>
									</ul>
								</div>
							</div>
							
							<h4 class="card-title mt-6 mb-3">Booking Details</h4>
							<div class="row">
								<div class="col-md-12">
									<div class="table-responsive">
										<table class="table row table-borderless w-100 m-0 text-nowrap">
											<tbody class="col-lg-12 col-xl-6 p-0">
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Room Type :</span> <asp:Label ID="RoomLabel" runat="server" Text="Label"></asp:Label> </td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Departure Date :</span> <asp:Label ID="DepartureDateLabel" runat="server" Text="Label"></asp:Label> </td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Departing From :</span> <asp:Label ID="DepartureCityLabel" runat="server" Text="Label"></asp:Label> </td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Port Calls :</span> <asp:Label ID="PortCallsLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Cruiseline :</span> <asp:Label ID="CruiselineLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
											</tbody>
											<tbody class="col-lg-12 col-xl-6 p-0">
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Cruise Time :</span> <asp:Label ID="CruiseTimeLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Arrival Date  :</span> <asp:Label ID="ArrivalDateLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Arriving At :</span> <asp:Label ID="DestinationLabel" runat="server" Text="Label"></asp:Label> </td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Room Number :</span> <asp:Label ID="RoomNumLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Cruise Price :</span> <asp:Label ID="CruisePriceLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							
							<h4 class="card-title mt-5 mb-4">More Flight Info</h4>
							<div class="table-responsive">
								<table class="table mb-0 table-bordered-0 w-100 text-nowrap">
									<tbody>
										<tr>
											<td class="font-weight-semibold px-0">Cruise ID</td>
											<td class="px-0"> <asp:Label ID="CruiseIdLabel" runat="server" Text="Label"></asp:Label> </td>
										</tr>
										<tr>
											<td class="font-weight-semibold px-0">Cruiseline</td>
											<td class="px-0"> <asp:Label ID="CruiseCruiselineLabel" runat="server" Text="Label"></asp:Label> </td>
										</tr>
										<tr>
											<td class="font-weight-semibold px-0">Ship</td>
											<td class="px-0"> <asp:Label ID="CruiseShipLabel" runat="server" Text="Label"></asp:Label></td>
										</tr>
										<tr>
											<td class="font-weight-semibold px-0">Certification</td>
											<td class="px-0">AT/4 Certified</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="card-footer border bg-white">
							<div class="icons">
								<asp:Button ID="BookCruiseButton" runat="server" CssClass="btn btn-primary px-5" Text="Book Cruise" OnClick="BookCruiseButton_Click" />
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
</asp:Content>
