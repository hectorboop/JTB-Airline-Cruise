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
									<a href="javascript:void(0)" class="icon d-none d-md-inline-block ms-3" data-bs-toggle="modal" data-bs-target="#deleteModal" ><i class="fa fa-trash-o"></i></a>
								</div>
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
