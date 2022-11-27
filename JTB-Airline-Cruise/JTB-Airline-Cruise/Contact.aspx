<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="JTB_Airline_Cruise.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Breadcrumb-->
	<section class="bannerimg cover-image bg-background3" data-image-src="/Assets/images/banners/slide-banner.jpg">
		<div class="header-text mb-0">
			<div class="container">
				<div class="row text-white">
					<div class="col"><h1 class="">Contact Us</h1></div>
					<div class="col col-auto">
						<ol class="breadcrumb text-center">
							<li class="breadcrumb-item"><a href="Default.aspx">Home</a></li>
							<li class="breadcrumb-item active text-white" aria-current="page">Contact</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/Breadcrumb-->

	<!--Contact-->
	<div class="sptb">
		<div class="container">
			<div class="">
				<div class="row">
					<div class="col-lg-8 col-xl-8 col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">Get In Touch With Me</div>
							</div>
							<div class="card-body">
								<label class="font-weight-semibold">Reason For Contact <sup class="text-danger">*</sup></label>
								<div>
									<div class="form-group">
										<select class="form-control select2">
											<option value="0">Want to know More about the details</option>
											<option value="2">Interested in Partnership</option>
											<option value="3">Bugs</option>
											<option value="4">Any Issue</option>
											<option value="5">Other</option>
										</select>
									</div>
									<div class="form-group">
										<input type="text" class="form-control" id="name1" placeholder="First Name" required>
									</div>
									<div class="form-group">
										<input type="text" class="form-control" id="name2" placeholder="Last Name" required>
									</div>
									<div class="form-group">
										<input type="email" class="form-control" id="email" placeholder="Email Address" required>
									</div>
									<div class="form-group">
										<input type="number" class="form-control" placeholder="Phone Number" required>
									</div>
									<div class="form-group">
										<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Message" required></textarea>
									</div>
									<button type="submit" class="btn btn-primary btn-block">Send Message</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-xl-4 col-md-12">
						<div class="">
							<div class="px-4">
								<div class="map-header h-300 br-5 overflow-hidden">
									<div class="map-header-layer" id="map2"></div>
								</div>
								<div class="item-user mt-5">
									<div class="d-flex">
										<span><i class="fa fa-map me-3 mb-0 bg-primary text-white"></i></span>
										<h6 class="leading-normal"><span class="font-weight-semibold"></span><a href="javascript:void(0)" class="text-body">4102  Masonic Hill Road Little Rock Arkansas-727212</a></h6>
									</div>
								</div>
								<div class="item-user mt-4">
									<div class="d-flex">
										<span><i class="fa fa-envelope me-3 mb-0 bg-secondary text-white"></i></span>
										<h6 class="leading-normal mt-1"><span class="font-weight-semibold"></span><a href="javascript:void(0)" class="text-body">demo@gowell.com, domain@tougo.com</a></h6>
									</div>
								</div>
								<div class="item-user mt-4">
									<div class="d-flex">
										<span><i class="fa fa-phone me-3 mb-0 bg-success text-white"></i></span>
										<h6 class="leading-normal mt-1"><span class="font-weight-semibold"></span><a href="javascript:void(0)" class="text-body">+658 568-965-896, +658 635-965-965</a></h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Contact-->
</asp:Content>
