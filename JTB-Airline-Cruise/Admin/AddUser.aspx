<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="JTB_Airline_Cruise.Admin.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
				<h4 class="page-title">New User</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fe   fe-edit me-1"></i> Dashboard</a></li>
					<li class="breadcrumb-item active" aria-current="page">New User</li>
				</ol>
			</div>

			<div class="row">
				<div class="col-xl-12">
					<div class="card m-b-20">
						<div class="card-header">
							<h3 class="card-title">Horizontal form</h3>
						</div>
						<div class="card-body mb-0">
							<div class="form-horizontal" >
								<div class="form-group">
									<div class="row">
										<div class="col-md-3">
											<label class="form-label" id="examplenameInputname2">User Name</label>
										</div>
										<div class="col-md-9">
											<input type="text" class="form-control" id="examplenameInputname3"  placeholder="Enter Name">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-3">
											<label class="form-label" id="inputEmail3">Email</label>
										</div>
										<div class="col-md-9">
											<input type="email" class="form-control" id="inputEmail4" placeholder="Email" >
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-3">
											<label class="form-label" id="inputPassword5">Password</label>
										</div>
										<div class="col-md-9">
											<input type="password" class="form-control" id="inputPassword6" placeholder="Password">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-3">
											<label class="form-label" id="inputPassword7">Re Password</label>
										</div>
										<div class="col-md-9">
											<input type="password" class="form-control" id="inputPassword8" placeholder="Retype Password">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-3">
											<label class="form-label" id="exampleInputnumber4">User Name</label>
										</div>
										<div class="col-md-9">
											<input type="text" class="form-control" id="examplenameInputname5"  placeholder="Enter Name">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-3">
											<label class="form-label" id="exampleInputnumber6">Phone Number</label>
										</div>
										<div class="col-md-9">
											<input type="Number" class="form-control"  id="exampleInputnumber7" placeholder="Phone number">
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-md-3">
											<label class="form-label">Select Test Area</label>
										</div>
										<div class="col-md-9">
											<select class="form-control select2-no-search">
												<option selected>Select Test Center</option>
												<option>Hyderabad</option>
												<option>Vizag</option>
												<option>Guntur</option>
												<option>Vijayawada</option>
												<option>Rajahmundry</option>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group row justify-content-end">
									<div class="col-md-9 float-end">
										<label class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input">
											<span class="custom-control-label text-dark"> I Agree</span>
										</label>
									</div>
								</div>
								<div class="form-group mb-0 row justify-content-end">
									<div class="col-md-9 float-end">
										<button type="submit" class="btn btn-primary waves-effect waves-light">Sign in</button>
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
