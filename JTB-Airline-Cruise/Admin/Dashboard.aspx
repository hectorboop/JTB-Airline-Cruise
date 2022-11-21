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
				<h4 class="page-title">Dashboard 02</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fe   fe-home me-1"></i> Dashboard</a></li>
					<li class="breadcrumb-item active" aria-current="page">Dashboard 02</li>
				</ol>
			</div>
			<div class="row row-cards">
				<div class="col-sm-12 col-lg-6 col-xl-3">
					<div class="card">
						<div class="card-body iconfont text-center">
							<h5 class="mb-0">Total Tourists</h5>
							<h1 class="mb-2 font-weight-semibold2">6,545</h1>
							<p class="text-muted"><span class="text-green"><i class="fa fa-arrow-up text-green"> </i>23% increase</span> in Last week</p>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-lg-6 col-xl-3">
					<div class="card">
						<div class="card-body iconfont text-center">
							<h5 class="mb-0">Total Bookings</h5>
							<h1 class="mb-2 font-weight-semibold2">6,54,856</h1>
							<p class="text-muted"><span class="text-green"><i class="fa fa-arrow-up text-green"></i> 3.25% less</span> than 1 yrs ago</p>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-lg-6 col-xl-3">
					<div class="card">
						<div class="card-body iconfont text-center">
							<h5 class="mb-0">Average Listing Value</h5>
							<h1 class="mb-2 font-weight-semibold2">525</h1>
							<p class="text-muted"><span class="text-red"><i class="fa fa-arrow-down text-red"></i> 4 lead less</span> than last week</p>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-lg-6 col-xl-3">
					<div class="card">
						<div class="card-body iconfont text-center">
							<h5 class="mb-0">Total Profits</h5>
							<h1 class="mb-2 font-weight-semibold2">42%</h1>
							<p class="text-muted"><span class="text-green"><i class="fa fa-arrow-up text-green"></i> 5.25% increase</span> last month</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-12">
					<div class="card shadow">
						<div class="card-header">
							<h3 class="card-title">Tourist Details</h3>
						</div>
						<div class="card-body">
							<div class="chart-wrap">
								<canvas id="survey" class="dropshadow h-350"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-12">
					<div class="card">
						<div class="card-header">
							<div class="card-title">Tour Bookings Details</div>
						</div>
						<div class="card-body overflow-hidden">
							<div class="chart-wrap">
								<canvas id="lineChart1" class="dropshadow h-350"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row ">
				<div class="col-md-12 col-xl-4 col-lg-12">
					<div class="card">
						<div class="card-header">
							<div class="card-title">Browsing Status</div>
						</div>
						<div class="card-body text-center">
							<div id="morrisBar8" class="h-220 overflow-hidden"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-xl-8">
					<div class="card ">
						<div class="card-header bg-transparent">
							<div class="card-title">Social Followers</div>
						</div>
						<div class="card-body pb-0">
							<div class="row item-all-cat">
								<div class="col-xl-3 col-md-6">
									<div class="card text-center">
										<div class="card-body pt-6">
											<a href="javascript:void(0)"></a>
											<div class="cat-img category-svg bg-light">
												<i class="fa fa-twitter fs-30 text-primary icon-lineheight"></i>
											</div>
											<div class="item-all-text mt-5">
												<p class="mb-0">Twitter</p>
												<h1 class="mb-0 counter mt-0 font-weight-semibold2">6542</h1>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-md-6">
									<div class="card text-center">
										<div class="card-body pt-6">
											<a href="javascript:void(0)"></a>
											<div class="cat-img category-svg bg-light">
												<i class="fa fa-google fs-30 text-primary icon-lineheight"></i>
											</div>
											<div class="item-all-text mt-5">
												<p class="mb-0">Google</p>
												<h1 class="mb-0 counter mt-0 font-weight-semibold2">3564</h1>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-md-6">
									<div class="card text-center">
										<div class="card-body pt-6">
											<a href="javascript:void(0)"></a>
											<div class="cat-img category-svg bg-light">
												<i class="fa fa-facebook-f fs-30 text-primary icon-lineheight"></i>
											</div>
											<div class="item-all-text mt-5">
												<p class="mb-0">Facebook</p>
												<h1 class="mb-0 counter mt-0 font-weight-semibold2">7458</h1>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-md-6">
									<div class="card text-center">
										<div class="card-body pt-6">
											<a href="javascript:void(0)"></a>
											<div class="cat-img category-svg bg-light">
												<i class="fa fa-pinterest-p fs-30 text-primary icon-lineheight"></i>
											</div>
											<div class="item-all-text mt-5">
												<p class="mb-0">Pinterst</p>
												<h1 class="mb-0 counter mt-0 font-weight-semibold2">9635</h1>
											</div>
										</div>
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
