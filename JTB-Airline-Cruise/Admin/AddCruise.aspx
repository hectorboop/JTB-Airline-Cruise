<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCruise.aspx.cs" Inherits="JTB_Airline_Cruise.Admin.AddCruise" %>
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
				<h4 class="page-title">New Cruise</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fe   fe-edit me-1"></i> Dashboard</a></li>
					<li class="breadcrumb-item active" aria-current="page">New Cruise</li>
				</ol>
			</div>

			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">Cruise Details</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-6 col-lg-6">
									<div class="form-group">
										<asp:Label ID="CruiseIdLabel" runat="server" Text="Cruise ID" CssClass="form-label" AssociatedControlID="CruiseIdTextBox"></asp:Label>
										<asp:TextBox ID="CruiseIdTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
										<asp:RequiredFieldValidator ID="CruiseIdValidator" runat="server" ErrorMessage="Error Generating ID" ControlToValidate="CruiseIdTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="CruiselineLabel" runat="server" Text="Cruiseline" CssClass="form-label" AssociatedControlID="CruiselineDropDownList"></asp:Label>
										<asp:DropDownList ID="CruiselineDropDownList" runat="server" CssClass="form-control form-select select2" ></asp:DropDownList>
										<asp:RequiredFieldValidator ID="CruiselineRequiredValidator" runat="server" ErrorMessage="Please Select An Option" ControlToValidate="CruiselineDropDownList" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="CruiseShipLabel" runat="server" Text="Type" CssClass="form-label" AssociatedControlID="CruiseShipDropDownList"></asp:Label>
										<asp:DropDownList ID="CruiseShipDropDownList" runat="server" CssClass="form-control select2" ></asp:DropDownList>										
										<asp:RequiredFieldValidator ID="CruiseShipValidator" runat="server" ErrorMessage="Please Select At Least One Option" ControlToValidate="CruiseShipDropDownList" ForeColor="Red"></asp:RequiredFieldValidator>

									</div>
									<div class="form-group">
										<asp:Label ID="CruiseClassLabel" runat="server" Text="Class" CssClass="form-label" AssociatedControlID="CruiseClassDropDownList"></asp:Label>
										<asp:DropDownList ID="CruiseClassDropDownList" runat="server" CssClass="form-control form-select select2" ></asp:DropDownList>
										<asp:RequiredFieldValidator ID="CruiseClassValidator" runat="server" ErrorMessage="Please Select An Option" ControlToValidate="CruiseClassDropDownList" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="CruisePriceLabel" runat="server" Text="Price" CssClass="form-label" AssociatedControlID="CruisePriceTextBox"></asp:Label>
										<asp:TextBox ID="CruisePriceTextBox" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
										<asp:RequiredFieldValidator ID="CruisePriceValidator" runat="server" ErrorMessage="Please Input A Price" ControlToValidate="CruisePriceTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="Label1" runat="server" Text="Departing From" CssClass="form-label" AssociatedControlID="DropDownList1"></asp:Label>										
										<asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control form-select select2-show-search" ></asp:DropDownList>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Error" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>										
									</div>
								</div>
								
								<div class="col-md-6 col-lg-6">
									<div class="form-group">
										<asp:Label ID="CruiseNameLabel" runat="server" Text="Cruise Name" CssClass="form-label" AssociatedControlID="CruiseNameTextBox"></asp:Label>										
										<asp:TextBox ID="CruiseNameTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
										<asp:RequiredFieldValidator ID="CruiseNameValidator" runat="server" ErrorMessage="Error Generating Name" ControlToValidate="CruiseNameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>										
									</div>

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
										<asp:Label ID="StartDateLabel" runat="server" Text="Start Date" CssClass="form-label" AssociatedControlID="StartDateTextBox"></asp:Label>
										
										<div class="wd-200 mg-b-30">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">
														<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
													</div>
												</div>
												
												<asp:TextBox ID="StartDateTextBox" runat="server" CssClass="form-control fc-datepicker" placeholder="MM/DD/YYYY"></asp:TextBox>
												
											</div>
										</div>

										<asp:RequiredFieldValidator ID="StartDateValidator" runat="server" ErrorMessage="Please Select A Date" ControlToValidate="StartDateTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="EndDateLabel" runat="server" Text="End Date" CssClass="form-label" AssociatedControlID="EndDateTextBox"></asp:Label>
										
										<div class="wd-200 mg-b-30">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">
														<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
													</div>
												</div>
												
												<asp:TextBox ID="EndDateTextBox" runat="server" CssClass="form-control fc-datepicker" placeholder="MM/DD/YYYY"></asp:TextBox>
												
											</div>
										</div>

										<asp:RequiredFieldValidator ID="EndDateValidator" runat="server" ErrorMessage="Please Select A Date" ControlToValidate="EndDateTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
									<div class="form-group">
										<asp:Label ID="CruiseLengthLabel" runat="server" Text="Cruise Length" CssClass="form-label" AssociatedControlID="CruiseLengthTextBox"></asp:Label>
										<asp:TextBox ID="CruiseLengthTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
										<asp:RequiredFieldValidator ID="CruiseLengthValidator" runat="server" ErrorMessage="Error Generating Cruise Length" ControlToValidate="CruiseLengthTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
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
