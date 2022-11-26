<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCity.aspx.cs" Inherits="JTB_Airline_Cruise.Admin.AddCity" %>
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
				<h4 class="page-title">New City</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fe   fe-edit me-1"></i> Dashboard</a></li>
					<li class="breadcrumb-item active" aria-current="page">New City</li>
				</ol>
			</div>

			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">City Details</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-6 col-lg-6">
									<div class="form-group">
										<asp:Label ID="CityIdLabel" runat="server" Text="City ID" CssClass="form-label" AssociatedControlID="CityIdTextBox"></asp:Label>
										<asp:TextBox ID="CityIdTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
										<asp:RequiredFieldValidator ID="CityIdValidator" runat="server" ErrorMessage="Error Generating ID" ControlToValidate="CityIdTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
								</div>
								
								<div class="col-md-6 col-lg-6">
									<div class="form-group">
										<asp:Label ID="CityLabel" runat="server" Text="City Name" CssClass="form-label" AssociatedControlID="CityTextBox"></asp:Label>
										<asp:TextBox ID="CityTextBox" runat="server" CssClass="form-control"></asp:TextBox>
										<asp:RequiredFieldValidator ID="CityRequiredValidator" runat="server" ErrorMessage="City Name Is Required" ControlToValidate="CityTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
								</div>

								<div class="card-footer text-end">
									<div class="d-flex">
										<a href="javascript:void(0)" class="btn btn-link">Cancel</a>
										<asp:Button ID="SubmitButton" runat="server" Text="Add City" CssClass="btn btn-primary ms-auto" />
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
