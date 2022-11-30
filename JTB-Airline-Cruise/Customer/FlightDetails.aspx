<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FlightDetails.aspx.cs" Inherits="JTB_Airline_Cruise.FlightDetails" %>
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
				<h4 class="page-title">Flight Details</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
					<li class="breadcrumb-item"><a href="javascript:void(0)">Categories</a></li>
					<li class="breadcrumb-item active" aria-current="page">Flight Details</li>
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
							<h3 class="card-title">Flight Information </h3>
						</div>
						<div class="card-body">
							<div class="form-group">
								<asp:Label ID="FlightClassLabel" runat="server" Text="Flight Class" CssClass="form-label"></asp:Label>
								<asp:DropDownList ID="FlightClassDropDownList" runat="server" CssClass="form-control custom-select select2" AutoPostBack="true" OnSelectedIndexChanged="FlightClassDropDownList_SelectedIndexChanged"></asp:DropDownList>
							</div>
							<div class="form-group">
								<asp:Label ID="SeatNumberLabel" runat="server" Text="Seat Number" CssClass="form-label"></asp:Label>
								<asp:DropDownList ID="SeatNumberDropDownList" runat="server" CssClass="form-control custom-select select2" AutoPostBack="true" OnSelectedIndexChanged="SeatNumberDropDownList_SelectedIndexChanged" ></asp:DropDownList>
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
											<asp:RegularExpressionValidator ID="ExpiryDateExpressionValidator" runat="server" ErrorMessage="Invalid Expiry Date" ForeColor="Red" ControlToValidate="ExpiryDateTextBox" ValidationExpression="^(0[1-9]|1[0-2])\/?([0-9]{2})$"></asp:RegularExpressionValidator>
											
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
									<h3> Returning Flight </h3>
								</a>
							</div>
							
							<h4 class="card-title mt-6 mb-3">Select Flight</h4>
							<div class="row">
								<div class="col-md-12">
									<asp:Label ID="ReturnDateLabel" runat="server" Text="Return Date" CssClass="form-label"></asp:Label>
									<asp:DropDownList ID="ReturnDateDropDownList" runat="server" CssClass="form-control custom-select select2" AutoPostBack="true" OnSelectedIndexChanged="ReturnDateDropDownList_SelectedIndexChanged"></asp:DropDownList>

									<asp:Label ID="ReturnFlightLabel" runat="server" Text="Return Flight" CssClass="form-label"></asp:Label>
									<asp:DropDownList ID="ReturnFlightDropDownList" runat="server" CssClass="form-control custom-select select2" AutoPostBack="true" OnSelectedIndexChanged="ReturnFlightDropDownList_SelectedIndexChanged"></asp:DropDownList>
								</div>
							</div>
						</div>

						<div class="card-body">
							<div class="item-det mb-4">
								<a href="#" class="text-dark">
									<h3>
										<asp:Label ID="FlightNameLabel" runat="server" Text="Label"></asp:Label>
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
													<td class="px-0"><span class="font-weight-semibold">Class Type :</span> <asp:Label ID="ClassLabel" runat="server" Text="Label"></asp:Label> </td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Departure Date :</span> <asp:Label ID="DepartureDateLabel" runat="server" Text="Label"></asp:Label> </td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Departing From :</span> <asp:Label ID="DepartureCityLabel" runat="server" Text="Label"></asp:Label> </td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Flight Stops :</span> <asp:Label ID="FlightStopLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Airline :</span> <asp:Label ID="AirlineLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
											</tbody>
											<tbody class="col-lg-12 col-xl-6 p-0">
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Flight Time :</span> <asp:Label ID="FlightTimeLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Arrival Date  :</span> <asp:Label ID="ArrivalDateLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Arriving At :</span> <asp:Label ID="DestinationLabel" runat="server" Text="Label"></asp:Label> </td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Seat Number :</span> <asp:Label ID="SeatLabel" runat="server" Text="Label"></asp:Label></td>
												</tr>
												<tr>
													<td class="px-0"><span class="font-weight-semibold">Air Fare :</span> <asp:Label ID="AirFareLabel" runat="server" Text="Label"></asp:Label></td>
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
											<td class="font-weight-semibold px-0">Flight ID</td>
											<td class="px-0"> <asp:Label ID="FlightIdLabel" runat="server" Text="Label"></asp:Label> </td>
										</tr>
										<tr>
											<td class="font-weight-semibold px-0">Airline</td>
											<td class="px-0"> <asp:Label ID="FlightAirlineLabel" runat="server" Text="Label"></asp:Label> </td>
										</tr>
										<tr>
											<td class="font-weight-semibold px-0">Aircraft</td>
											<td class="px-0"> <asp:Label ID="FlightAircraftLabel" runat="server" Text="Label"></asp:Label></td>
										</tr>
										<tr>
											<td class="font-weight-semibold px-0">Certification</td>
											<td class="px-0">EASA Certified</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="card-footer border bg-white">
							<div class="icons">
								<asp:Button ID="BookFlightButton" runat="server" CssClass="btn btn-primary px-5" Text="Book Flight" OnClick="BookFlightButton_Click" />
								<p> By choosing "Book Flight" without selecting a return flight your ticket will be defaulted to "One-Way" </p>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>

    
</asp:Content>
