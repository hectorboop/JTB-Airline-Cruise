<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Flights.aspx.cs" Inherits="JTB_Airline_Cruise.Admin.Flights" %>
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
				<h4 class="page-title">All Flights</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fe   fe-layout me-1"></i> Dashboard</a></li>
					<li class="breadcrumb-item active" aria-current="page">All Flights</li>
				</ol>
			</div>

			<div class="row">
				<div class="col-md-12 col-lg-4 col-sm-12">
					<div class="card card-aside">
						<div class="card-body">
							<h4><a href="javascript:void(0)">Flight #3421-6</a></h4>
							<div class="text-muted">2:00pm KIN</div>
							<div class="text-muted">9:00am POT</div>
							<div class="d-flex align-items-center pt-4 mt-auto">
								<img src="/Assets/images/faces/male/5.jpg" class="avatar brround avatar-md me-3" alt="avatar-img">
								<div>
									<a href="profile.html" class="text-default">Stomp Airways</a>
									<small class="d-block text-muted">Boeing 737</small>
								</div>
								<div class="ms-auto text-muted">
									<a href="javascript:void(0)" class="icon d-none d-md-inline-block ms-3"><i class="fa fa-pencil-square-o"></i></a>
									<a href="javascript:void(0)" class="icon d-none d-md-inline-block ms-3"><i class="fa fa-trash-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
        </div>
    </div>
</asp:Content>
