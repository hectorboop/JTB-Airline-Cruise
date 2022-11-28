<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JTB_Airline_Cruise.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <!--Breadcrumb-->
	<section class="bannerimg cover-image bg-background3" data-image-src="/Assets/images/banners/slide-banner.jpg">
		<div class="header-text mb-0">
			<div class="container">
				<div class="row text-white">
					<div class="col"><h1 class="">Login</h1></div>
					<div class="col col-auto">
						<ol class="breadcrumb text-center">
							<li class="breadcrumb-item"><a href="/Default.aspx">Home</a></li>
							<li class="breadcrumb-item active text-white" aria-current="page">Login</li>
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
						<asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
							<p class="text-danger">
								<asp:Literal runat="server" ID="Literal1" />
							</p>
						</asp:PlaceHolder>
						<div class="wrapper wrapper2 text-start">
							<div class="login card-body" tabindex="500">
								<h4 class="font-weight-semibold2 pb-4">Sign In Account</h4>
								<div class="user-input-box">
									<asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Url" />
									<asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
										CssClass="text-danger" ErrorMessage="The email field is required." />
									<label>Email</label>
								</div>
								<div class="user-input-box">
									<asp:TextBox runat="server" ID="Password" TextMode="Url" CssClass="form-control" />
									<asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
									<label>Password</label>
								</div>
								<div class="submit">
									<asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-primary btn-block" />
								</div>
								<div class="row">
									<div class="col">
										<p class="text-dark mb-0 fs-12">Don't have account?
											<asp:HyperLink CssClass="text-primary ms-1" runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
										</p>
									</div>
									<div class="col col-auto">
										<p class="mb-0 mt-0 fs-12"><a href="/ForgotPassword.aspx" >Forgot Password</a></p>
									</div>
								</div>
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
