<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JTB_Airline_Cruise.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <!--Breadcrumb-->
	<section class="bannerimg cover-image bg-background3" data-image-src="/Assets/images/banners/slide-banner.jpg">
		<div class="header-text mb-0">
			<div class="container">
				<div class="row text-white">
					<div class="col"><h1 class="">Register</h1></div>
					<div class="col col-auto">
						<ol class="breadcrumb text-center">
							<li class="breadcrumb-item"><a href="Default.aspx">Home</a></li>
							<li class="breadcrumb-item active text-white" aria-current="page">Register</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/Breadcrumb-->

	<!--Login-Section-->
	<section class="sptb">
		<div class="container customerpage">
			<div class="row">
				<div class="single-page" >
					<div class="col-lg-5 col-xl-4 col-md-6 d-block mx-auto">
						<div class="wrapper wrapper2 text-start">
							<div id="R" class="card-body" tabindex="500">
								<asp:ValidationSummary runat="server" CssClass="text-danger" />
								<h4 class="font-weight-semibold2 pb-4">Sign Up Account</h4>
								<div class="user-input-box">
									<asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
									<asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
										CssClass="text-danger" ErrorMessage="The email field is required." />
									<label>Email</label>
								</div>
								<div class="user-input-box">
									<asp:TextBox runat="server" ID="Password" TextMode="password" CssClass="form-control" />
									<asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
										CssClass="text-danger" ErrorMessage="The password field is required." />
									<label>Password</label>
								</div>
								<div class="user-input-box">
									<asp:TextBox runat="server" ID="ConfirmPassword" TextMode="password" CssClass="form-control" />
									<asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
										CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
									<asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
										CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
									<label>Confirm Password</label>
								</div>
								<div class="submit">
									<asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-primary btn-block" />
								</div>
								<p class="text-dark mb-0 fs-13">Already have an account?<a href="Login.aspx" class="text-primary ms-1">Sign In</a></p>
							</div>
							<hr class="divider">
							<div class="card-body text-center">
								<ul class="mb-0 login-social-icons">
									<li class="btn-facebook">
										<a class="social-icon" href=""><i class="fa fa-facebook"></i></a>
									</li>
									<li class="btn-twitter">
										<a class="social-icon" href=""><i class="fa fa-twitter"></i></a>
									</li>
									<li class="btn-google">
										<a class="social-icon" href=""><i class="fa fa-google-plus"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/Login-Section-->
</asp:Content>
