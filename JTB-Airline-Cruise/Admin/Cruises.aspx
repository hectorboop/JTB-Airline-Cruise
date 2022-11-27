<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Cruises.aspx.cs" Inherits="JTB_Airline_Cruise.Admin.Cruises" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
				<h4 class="page-title">All Cruises</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fe   fe-layout me-1"></i> Dashboard</a></li>
					<li class="breadcrumb-item active" aria-current="page">All Cruises</li>
				</ol>
			</div>

			<div class="row">
				<asp:Repeater ID="CruiseRepeater" runat="server">
					<ItemTemplate>
						<div class="col-md-12 col-lg-4 col-sm-12">
							<div class="card card-aside">
								<div class="card-body">
									<h4><a href="javascript:void(0)">Cruise - 
										<asp:Label ID="Id" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
									    </a></h4>
									<div class="text-muted"> From <%# Eval("DeparturePort") %> To <%# Eval("VisitingPorts[0]") %></div>
									<div class="text-muted"><%# Eval("CruiseLength") %> Nights</div>
									<div class="d-flex align-items-center pt-4 mt-auto">
										<img src="/Assets/images/faces/male/5.jpg" class="avatar brround avatar-md me-3" alt="avatar-img">
										<div>
											<a href="profile.html" class="text-default"><%# Eval("Cruiseline") %></a>
											<small class="d-block text-muted"><%# Eval("Ship") %></small>
										</div>
										<div class="ms-auto text-muted">
											<a href="javascript:void(0)" class="icon d-none d-md-inline-block ms-3"><i class="fa fa-pencil-square-o"></i></a>
											<asp:LinkButton ID="DeleteLinkButton" runat="server" CssClass="icon d-none d-md-inline-block ms-3" 
												OnClick="DeleteLinkButton_Click"><i class="fa fa-trash-o"></i></asp:LinkButton>
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

</asp:Content>
