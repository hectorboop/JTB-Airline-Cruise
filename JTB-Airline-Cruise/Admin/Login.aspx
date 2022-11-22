<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JTB_Airline_Cruise.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- META DATA -->
	<meta charset="utf-8"/>
	<meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content="Jamaica's Vacation Marketplace"/>
	<meta name="author" content="Jamaica™ Tourist Board"/>
	<meta name="keywords" content=" "/>
	<link rel="icon" href="~/favicon.ico" type="image/x-icon"/>
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

	<!-- Title -->
	<title><%: Page.Title %> Jamaica Tourist Board Admin Dashboard</title>

	<!-- Bootstrap Css -->
	<link id="style" href="/Assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

	<!-- Sidemenu Css -->
	<link href="/Assets/css/dashboard/sidemenu.css" rel="stylesheet" />

	<!-- Dashboard css -->
	<link href="/Assets/css/style.css" rel="stylesheet" />
	<link href="/Assets/css/plugins.css" rel="stylesheet" />

	<!-- Admin-Custom Css -->
	<link href="/Assets/css/dashboard/admin-custom.css" rel="stylesheet" />

	<!---Font icons-->
	<link href="/Assets/css/icons.css" rel="stylesheet"/>
</head>
<body class="page-section">
    <form id="form1" runat="server">
		<!--Loader-->
		<div id="global-loader" class="bg-primary">
			<div class="loader-svg-img">
				<img src="/Assets/images/brand/2.png" class="" alt="">
				<div class="flight-icon"><i class="fa fa-plane"></i></div>
			</div>
		</div>

		<!--Page-->
		<div class="page h-100">
			<div class="page-content zindex-10">
				<div class="container">
					<div class="row">
						<div class="col-xl-4 col-md-12 col-md-12 d-block mx-auto">
							<div class="card mb-0 shadow-none">
								<div class="card-header">
									<h3 class="card-title">Login to your Account</h3>
								</div>
								<div class="card-body">
									<div class="form-group">
										<label class="form-label">Email address</label>
										<input type="email" class="form-control" placeholder="Enter email">
									</div>
									<div class="form-group">
										<label class="form-label">Password</label>
										<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
									</div>
									<div class="form-group">
										<label class="custom-control custom-checkbox">
											<a href="forgot-password.html" class="float-end small text-dark mt-1">I forgot password</a>
											<input type="checkbox" class="custom-control-input">
											<span class="custom-control-label text-dark">Remember me</span>
										</label>
									</div>
									<div class="form-footer mt-2">
										<a href="index.html" class="btn btn-primary btn-block">SignIn</a>
									</div>
									<div class="text-center  mt-3 text-dark">
										Don't have account yet? <a href="register.html">SignUp</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- JQuery js-->
		<script src="/Assets/js/jquery-3.5.1.min.js"></script>

		<!-- Bootstrap js -->
		<script src="/Assets/plugins/bootstrap/js/popper.min.js"></script>
		<script src="/Assets/plugins/bootstrap/js/bootstrap.bundle.js"></script>


		<!--JQuery Sparkline Js-->
		<script src="/Assets/js/jquery.sparkline.min.js"></script>

		<!-- Circle Progress Js-->
		<script src="/Assets/js/circle-progress.min.js"></script>

		<!-- Selectize Js-->
		<script src="/Assets/js/selectize.min.js"></script>


		<!-- Jquery-bar-rating Js-->
		<script src="/Assets/plugins/jquery-bar-rating/jquery.barrating.js"></script>

		<!-- Perfect scroll bar Js-->
		<script src="/Assets/plugins/perfect-scrollbar/perfect-scrollbar.js"></script>

		<!--Side-menu Js-->
		<!-- <script src="/Assets/plugins/toggle-sidebar/sidemenu.js"></script> -->

		<!--Internal Counters -->
		<script src="/Assets/plugins/counters/counterup.min.js"></script>
		<script src="/Assets/plugins/counters/waypoints.min.js"></script>

		<!-- Theme color Js-->
		<script src="/Assets/js/themeColors.js"></script>

		<!-- Switcher Styles Js-->
		<script src="/Assets/js/switcher-styles.js"></script>

		<!-- Custom Js-->
		<script src="/Assets/js/admin-custom.js"></script>

    </form>
</body>
</html>
