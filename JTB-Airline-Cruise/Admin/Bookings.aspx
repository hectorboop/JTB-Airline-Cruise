<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="JTB_Airline_Cruise.Admin.Bookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- This Script Chnages The Background Colour Of Invalid Inputs -->
	<script type="text/javascript">
    function ValidatorUpdateDisplay(val) {
        if (typeof (val.display) == "string") {
            if (val.display == "None") {
                return;
            }
            if (val.display == "Dynamic") {
                val.style.display = val.isvalid ? "none" : "inline";
                return;
            }

        }
        val.style.visibility = val.isvalid ? "hidden" : "visible";
        if (val.isvalid) {
            document.getElementById(val.controltovalidate).style.border = '1px solid #333';
        }
        else {
            document.getElementById(val.controltovalidate).style.border = '1px solid red';
        }          
    }
    </script>

    <!--Loader-->
	<div id="global-loader" class="bg-primary">
		<div class="loader-svg-img">
			<img src="/Assets/images/brand/2.png" class="" alt="">
			<div class="flight-icon"><i class="fa fa-plane"></i></div>
		</div>
	</div>
	<!--/Loader-->

    <!-- Will be added to a repeater -->
    <div class="app-content">
        <div class="side-app">
            <div class="page-header">
				<h4 class="page-title">All Bookings</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fe   fe-layout me-1"></i> Dashboard</a></li>
					<li class="breadcrumb-item active" aria-current="page">All Bookings</li>
				</ol>
			</div>

			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">Cruise Bookings</h3>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table id="example" class="hover table-bordered table border-bottom-0" >
									<thead>
										<tr>
											<th>Id</th>
											<th>Passenger</th>
											<th>Cruise</th>
											<th>Room Number</th>
											<th>Check In</th>
											<th>Check Out</th>
											<th>Options</th>
										</tr>
									</thead>
									<tbody>
										<asp:Repeater ID="CruiseRepeater" runat="server">
											<ItemTemplate>
												<tr>
													<td><%# Eval("Id") %></td>
													<td><%# Eval("PassengerName") %></td>
													<td><%# Eval("CruiseName") %></td>
													<td><%# Eval("RoomNumber") %></td>
													<td><%# Eval("CheckInDate") %></td>
													<td><%# Eval("CheckOutDate") %></td>
													<td>
														<asp:LinkButton ID="EditCruiseLinkButton" runat="server">Edit</asp:LinkButton>
														/
														<asp:LinkButton ID="DeleteCruiseLinkButton" runat="server">Delete</asp:LinkButton>
													</td>
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

			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">Flight Bookings</h3>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table id="example2" class="hover table-bordered table border-bottom-0" >
									<thead>
										<tr>
											<th>Id</th>
											<th>Passenger</th>
											<th>Flight</th>
											<th>Seat Number</th>
											<th>Date</th>
											<th>Options</th>
										</tr>
									</thead>
									<tbody>
										<asp:Repeater ID="FlightRepeater" runat="server">
											<ItemTemplate>
												<tr>
													<td><%# Eval("Id") %></td>
													<td><%# Eval("PassengerName") %></td>
													<td><%# Eval("FlightName") %></td>
													<td><%# Eval("SeatNumber") %></td>
													<td><%# Eval("Date") %></td>
													<td>
														<asp:LinkButton ID="EditFlightLinkButton" runat="server">Edit</asp:LinkButton>
														/
														<asp:LinkButton ID="DeleteFlightLinkButton" runat="server">Delete</asp:LinkButton>
													</td>
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

		<!-- Modal -->
		<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="deleteModalLabel">Delete Flight #Ab-546-8?</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="btn-close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<p>Are you sure you want to delete?</p>
					</div>
					<div class="modal-footer">
						<asp:Button ID="Button1" runat="server" Text="Delete" CssClass="btn btn-primary" />
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
					</div>
				</div>
			</div>
		</div>
    </div>
</asp:Content>
