<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddFlight.aspx.cs" Inherits="JTB_Airline_Cruise.Admin.AddFlight" %>
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

	<div class="app-content">
		<div class="side-app">
			<div class="page-header">
				<h4 class="page-title">New Flight</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fe   fe-edit me-1"></i> Dashboard</a></li>
					<li class="breadcrumb-item active" aria-current="page">New Flight</li>
				</ol>
			</div>

			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">Flight Details</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-6 col-lg-6">
									<div class="form-group">
										<asp:Label ID="FlightIdLabel" runat="server" Text="Flight ID" CssClass="form-label" AssociatedControlID="FlightIdTextBox"></asp:Label>
										<asp:TextBox ID="FlightIdTextBox" runat="server" CssClass="form-control"></asp:TextBox>
										<asp:RequiredFieldValidator ID="FlightIdValidator1" runat="server" ErrorMessage="Please Select An Option" ControlToValidate="FlightIdTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="AirlineLabel" runat="server" Text="Airline" CssClass="form-label" AssociatedControlID="AirlineDropDownList"></asp:Label>
										<asp:DropDownList ID="AirlineDropDownList" runat="server" CssClass="form-control form-select select2"></asp:DropDownList>
										<asp:RequiredFieldValidator ID="AirlineRequiredValidator" runat="server" ErrorMessage="Please Select An Option" ControlToValidate="AirlineDropDownList" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="FlightTypeLabel" runat="server" Text="Type" CssClass="form-label" AssociatedControlID="FlightTypeDropDownList"></asp:Label>
										<asp:DropDownList ID="FlightTypeDropDownList" runat="server" CssClass="form-control select2" ></asp:DropDownList>										
										<asp:RequiredFieldValidator ID="FlightTypeValidator" runat="server" ErrorMessage="Please Select At Least One Option" ControlToValidate="FlightTypeDropDownList" ForeColor="Red"></asp:RequiredFieldValidator>

									</div>
									<div class="form-group">
										<asp:Label ID="FlightClassLabel" runat="server" Text="Class" CssClass="form-label" AssociatedControlID="FlightClassDropDownList"></asp:Label>
										<asp:DropDownList ID="FlightClassDropDownList" runat="server" CssClass="form-control form-select select2" ></asp:DropDownList>
										<asp:RequiredFieldValidator ID="FlightClassValidator" runat="server" ErrorMessage="Please Select An Option" ControlToValidate="FlightClassDropDownList" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="FlightPriceLabel" runat="server" Text="Price" CssClass="form-label" AssociatedControlID="FlightPriceTextBox"></asp:Label>
										<asp:TextBox ID="FlightPriceTextBox" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
										<asp:RequiredFieldValidator ID="FlightPriceValidator" runat="server" ErrorMessage="Please Input A Price" ControlToValidate="FlightPriceTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
								</div>
								
								<div class="col-md-6 col-lg-6">
									<div class="form-group">
										<asp:Label ID="DepartureLabel" runat="server" Text="Departing From" CssClass="form-label" AssociatedControlID="DepartureDropDownList"></asp:Label>										
										<asp:DropDownList ID="DepartureDropDownList" runat="server" CssClass="form-control form-select select2-show-search" ></asp:DropDownList>
										<asp:RequiredFieldValidator ID="DepartureValidator" runat="server" ErrorMessage="Please Select An Option" ControlToValidate="DepartureDropDownList" ForeColor="Red"></asp:RequiredFieldValidator>										
									</div>
									<div class="form-group">
										<asp:Label ID="DestinationLabel" runat="server" Text="Arriving At" CssClass="form-label" AssociatedControlID="DestinationDropDownList"></asp:Label>									
										<asp:DropDownList ID="DestinationDropDownList" runat="server" CssClass="form-control form-select select2-show-search" ></asp:DropDownList>
										<asp:RequiredFieldValidator ID="DestinationValidator" runat="server" ErrorMessage="Please Select An Option" ControlToValidate="DestinationDropDownList" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="DepartureDateLabel" runat="server" Text="Departure Date" CssClass="form-label" AssociatedControlID="DepartureDateTextBox"></asp:Label>
										
										<div class="wd-200 mg-b-30">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">
														<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
													</div>
												</div>
												
												<asp:TextBox ID="DepartureDateTextBox" runat="server" CssClass="form-control fc-datepicker" placeholder="MM/DD/YYYY"></asp:TextBox>
												
											</div>
										</div>

										<asp:RequiredFieldValidator ID="DepartureDateValidator" runat="server" ErrorMessage="Please Select A Date" ControlToValidate="DepartureDateTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="DestinationDateLabel" runat="server" Text="Arrival Date" CssClass="form-label" AssociatedControlID="DestinationDateTextBox"></asp:Label>
										
										<div class="wd-200 mg-b-30">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">
														<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
													</div>
												</div>
												
												<asp:TextBox ID="DestinationDateTextBox" runat="server" CssClass="form-control fc-datepicker" placeholder="MM/DD/YYYY"></asp:TextBox>
												
											</div>
										</div>

										<asp:RequiredFieldValidator ID="DestinationDateValidator" runat="server" ErrorMessage="Please Select A Date" ControlToValidate="DestinationDateTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="Label5" runat="server" Text="Price" CssClass="form-label" AssociatedControlID="TextBox5"></asp:Label>
										<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
								</div>

								<div class="card-footer text-end">
									<div class="d-flex">
										<a href="javascript:void(0)" class="btn btn-link">Cancel</a>
										<asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="btn btn-primary ms-auto" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
