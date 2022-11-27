<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="JTB_Airline_Cruise.Admin.Dashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!--Loader-->
	<div id="global-loader" class="bg-primary">
		<div class="loader-svg-img">
			<img src="/Assets/images/brand/2.png" class="" alt="">
			<div class="flight-icon"><i class="fa fa-plane"></i></div>
		</div>
	</div>
	<!--/Loader-->

    <div class="app-content">
		<div class="side-app">
			<div class="page-header">
				<h4 class="page-title">Home</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fe   fe-home me-1"></i> Dashboard</a></li>
					<li class="breadcrumb-item active" aria-current="page">Home</li>
				</ol>
			</div>
			<div class="row">
				<div class="col-xl-3 col-lg-6 col-md-12">
					<div class="card ">
						<div class="card-body text-center">
							<div class="counter-status dash3-counter">
								<div class="counter-icon bg-primary text-white">
									<i class="icon icon-people text-white"></i>
								</div>
								<h5 class="mb-0">Bookings</h5>
								<h2 class="counter mb-0">
									<asp:Label ID="BookingsLabel" runat="server" Text="500"></asp:Label>
								</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-6 col-md-12">
					<div class="card ">
						<div class="card-body text-center">
							<div class="counter-status dash3-counter">
								<div class="counter-icon bg-info text-white">
									<i class="icon icon-anchor text-white"></i>
								</div>
								<h5 class="mb-0">Cruises</h5>
								<h2 class="counter mb-0">
									<asp:Label ID="CruisesLabel" runat="server" Text="500"></asp:Label>
								</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-6 col-md-12">
					<div class="card ">
						<div class="card-body text-center">
							<div class="counter-status dash3-counter">
								<div class="counter-icon bg-success text-white">
									<i class="icon icon-plane text-white"></i>
								</div>
								<h5 class="mb-0">Flights</h5>
								<h2 class="counter mb-0">
									<asp:Label ID="FlightsLabel" runat="server" Text="500"></asp:Label>
								</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-6 col-md-12">
					<div class="card ">
						<div class="card-body text-center">
							<div class="counter-status dash3-counter">
								<div class="counter-icon bg-danger text-white">
									<i class="icon icon-wallet text-white"></i>
								</div>
								<h5 class="mb-0">Revenue</h5>
								<h2 class="counter mb-0">
									<asp:Label ID="RevenueLabel" runat="server" Text="500"></asp:Label>
								</h2>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">Recent Bookings</h3>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered border-top mb-0 w-100 text-nowrap">
									<thead>
										<tr>
											<th class="border-bottom-0">Booking Number</th>
											<th class="border-bottom-0">Category</th>
											<th class="border-bottom-0">Departure</th>
											<th class="border-bottom-0">Destination</th>
											<th class="border-bottom-0">Price</th>
											<th class="border-bottom-0">Payment</th>
										</tr>
									</thead>
									<tbody>
										<asp:Repeater ID="CruisesRepeater" runat="server">
											<ItemTemplate>
												<tr>
													<td><%# Eval("Id") %></td>
													<td class="font-weight-semibold">Cruise</td>
													<td class="font-weight-semibold"><%# Eval("Departure") %></td>
													<td class="font-weight-semibold"><%# Eval("Destination") %></td>
													<td class="fs-18 font-weight-semibold"><%# Eval("BookingCost") %></td>
													<td class="text-success"><span class="w-2 h-2 brround bg-success d-inline-block"></span> Paid</td>
												</tr>
											</ItemTemplate>
										</asp:Repeater>

										<asp:Repeater ID="FlightsRepeater" runat="server">
											<ItemTemplate>
												<tr>
													<td><%# Eval("Id") %></td>
													<td class="font-weight-semibold">Flight</td>
													<td class="font-weight-semibold"><%# Eval("Departure") %></td>
													<td class="font-weight-semibold"><%# Eval("Destination") %></td>
													<td class="fs-18 font-weight-semibold"><%# Eval("BookingCost") %></td>
													<td class="text-success"><span class="w-2 h-2 brround bg-success d-inline-block"></span> Paid</td>
												</tr>
											</ItemTemplate>
										</asp:Repeater>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</asp:Content>
