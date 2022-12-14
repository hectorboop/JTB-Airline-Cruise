<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JTB_Airline_Cruise._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Section-->
	<div id="main">
		<section class="section-first banner-1 cover-image sptb-21 sptb-tab bg-background2" data-vidbg-bg="mp4: /Assets/video/origin.mp4 " data-vidbg-options="loop: true, muted: true, overlay: false">
			<div class="header-text mb-0">
				<div class="container">
					<div class="text-center text-white mb-7">
						<h1 class="mb-0 leading-normal">Plan Your Destination Trip</h1>
						<p>Find the world's largest collection of tours & travel Packages.</p>
					</div>
				</div>
			</div><!-- /header-text -->
		</section>
	</div>
	<!--Section-->

	<!--Section-->
	<div class="categories2 absolute-banner-section">
		<div class="container">
			<div class="card mb-0">
				<div class="card-body">
					<div class="bg-white form-list">
						<div class="">
							<div class="form row g-0">
								<div class="form-group col-xl-2 col-lg-2 col-md-12 mb-lg-0">
									<input type="text" class="form-control input-lg location-input border-end br-te-0 br-be-0" placeholder="Enter Location">
									<span><img src="/Assets/images/svgs/gps.svg" class="location-gps" alt="img"></span>
								</div>
								<div class="form-group col-xl-2 col-lg-2 col-md-12 mb-lg-0 select2-lg">
									<select class="form-control select2-show-search border-bottom-0 w-100">
										<option>Destination Location</option>
										<option>Australia</option>
										<option>Chicago</option>
										<option>Germany</option>
										<option>India</option>
										<option>Japan</option>
										<option>London</option>
										<option>Los angels</option>
										<option>Spain</option>
										<option>Sidney</option>
									</select>
								</div>
								<div class="form-group col-xl-2 col-lg-2 col-md-12 mb-lg-0">
									<input class="form-control input-lg fc-datepicker br-0 border-end border-start-0" placeholder="Travel Date" type="text">
								</div>
								<div class="form-group col-xl-6 col-lg-6 col-md-12 mb-lg-0 location">
									<div class="row g-0">
										<div class="form-group col-xl-3 col-lg-3 col-md-12 mb-lg-0">
											<input class="form-control input-lg fc-datepicker br-0 border-end border-start-0" placeholder="Return Date" type="text">
										</div>
										<div class="form-group col-xl-3 col-lg-3 col-md-12 mb-lg-0 select2-lg">
											<select class="form-control select2-show-search border-bottom-0 w-100">
												<option>Persons</option>
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
												<option>6</option>
												<option>7</option>
												<option>8</option>
												<option>9</option>
												<option>10</option>
												<option>11</option>
												<option>12</option>
											</select>
										</div>
										<div class="form-group col-xl-3 col-lg-3 col-md-12 mb-lg-0 select2-lg">
											<select class="form-control select2-show-search border-bottom-0 w-100">
												<option>Kids</option>
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
												<option>6</option>
												<option>7</option>
												<option>8</option>
												<option>9</option>
												<option>10</option>
												<option>11</option>
												<option>12</option>
											</select>
										</div>
										<div class="col-xl-3 col-lg-3 col-md-12 mb-0">
											<a class="btn btn-block btn-secondary btn-lg fs-14 br-ts-0 br-bs-0 shadow-none ms-0" href="javascript:void(0)">Search</a>
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

	<section class="sptb pt-9">
		<div class="container">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">Best Top</span>
				<h2>Visited Locations</h2>
				<p>These are some major destinations that most of our flights and cruises travel to.</p>
			</div>

				<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<a class="item-card overflow-hidden gallery-item" id="country1">
						<div class="item-card-desc">
							<div class="card text-center overflow-hidden mb-lg-0">
								<div class="card-img">
									<img src="/Assets/images/locations/australia.jpg" alt="img" class="cover-image">
								</div>
							</div>
						</div>
					</a>
					<div class="item-card-text text-start mt-3 mb-5">
						<h4 class="mb-1 fs-18 font-weight-semibold2">Australia</h4>
						<small class="text-muted"> <b>21+</b> Australia Tour Places</small>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<a class="item-card overflow-hidden gallery-item" id="country2">
						<div class="item-card-desc">
							<div class="card text-center overflow-hidden mb-lg-0">
								<div class="card-img">
									<img src="/Assets/images/locations/chicago.jpg" alt="img" class="cover-image">
								</div>
							</div>
						</div>
					</a>
					<div class="item-card-text text-start mt-3 mb-5">
						<h4 class="mb-1 fs-18 font-weight-semibold2">Chicago</h4>
						<small class="text-muted"> <b>18+</b> Chicago Tour Places</small>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<a class="item-card overflow-hidden gallery-item" id="country3">
						<div class="item-card-desc">
							<div class="card text-center overflow-hidden mb-lg-0">
								<div class="card-img">
									<img src="/Assets/images/locations/germany.jpg" alt="img" class="cover-image">
								</div>
							</div>
						</div>
					</a>
					<div class="item-card-text text-start mt-3 mb-5">
						<h4 class="mb-1 fs-18 font-weight-semibold2">Germany</h4>
						<small class="text-muted"> <b>52+</b> Germany Tour Places</small>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<a  class="item-card overflow-hidden gallery-item" id="country4">
						<div class="item-card-desc">
							<div class="card text-center overflow-hidden mb-lg-0">
								<div class="card-img">
									<img src="/Assets/images/locations/india.jpg" alt="img" class="cover-image">
								</div>
							</div>
						</div>
					</a>
					<div class="item-card-text text-start mt-3 mb-5">
						<h4 class="mb-1 fs-18 font-weight-semibold2">India</h4>
						<small class="text-muted">  <b>51+</b> India Tour Places</small>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<a class="item-card overflow-hidden gallery-item" id="country5">
						<div class="item-card-desc">
							<div class="card text-center overflow-hidden mb-lg-0">
								<div class="card-img">
									<img src="/Assets/images/locations/japan.jpg" alt="img" class="cover-image">
								</div>
							</div>
						</div>
					</a>
					<div class="item-card-text text-start mt-3 mb-5">
						<h4 class="mb-1 fs-18 font-weight-semibold2">Japan</h4>
						<small class="text-muted"> <b>42+</b> Japan Tour Places</small>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<a class="item-card overflow-hidden gallery-item" id="country6">
						<div class="item-card-desc">
							<div class="card text-center overflow-hidden mb-lg-0">
								<div class="card-img">
									<img src="/Assets/images/locations/london.jpg" alt="img" class="cover-image">
								</div>
							</div>
						</div>
					</a>
					<div class="item-card-text text-start mt-3 mb-5">
						<h4 class="mb-1 fs-18 font-weight-semibold2">London</h4>
						<small class="text-muted">  <b>12+</b> London Tour Places</small>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<a class="item-card overflow-hidden gallery-item" id="country7">
						<div class="item-card-desc">
							<div class="card text-center overflow-hidden mb-lg-0">
								<div class="card-img">
									<img src="/Assets/images/locations/losangels.jpg" alt="img" class="cover-image">
								</div>
							</div>
						</div>
					</a>
					<div class="item-card-text text-start mt-3 mb-5">
						<h4 class="mb-1 fs-18 font-weight-semibold2">Los Angels</h4>
						<small class="text-muted">  <b>25+</b> Los Angels Tour Places</small>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<a class="item-card overflow-hidden gallery-item" id="country8">
						<div class="item-card-desc">
							<div class="card text-center overflow-hidden mb-lg-0">
								<div class="card-img">
									<img src="/Assets/images/locations/spain.jpg" alt="img" class="cover-image">
								</div>
							</div>
						</div>
					</a>
					<div class="item-card-text text-start mt-3 mb-5">
						<h4 class="mb-1 fs-18 font-weight-semibold2">Spain</h4>
						<small class="text-muted">  <b>36+</b> Spain Tour Places</small>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Categories-->
	<section class="sptb bg-white py-9">
		<div class="container">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">Top Most</span>
				<h2>Rated Countries</h2>
				<p>These are the top rated countries that our tourists love to travel to.</p>
			</div>
			<div class="row" id="container1">
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-pink-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/075-statue-of-liberty.svg" alt="img" class="bg-pink-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-pink">America</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-purple-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/097-taj-mahal.svg" alt="img" class="bg-purple-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-purple">India</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-warning-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/096-eiffel-tower.svg" alt="img" class="bg-warning-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-warning">Paris</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-danger-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/094-sydney-opera-house.svg" alt="img" class="bg-danger-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-danger">Sydeny</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-success-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/010-tokyo-tower.svg" alt="img" class="bg-success-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-success">Tokyo</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-info-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/099-great-wall-of-china.svg" alt="img" class="bg-info-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-info">China</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-primary-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/093-london-eye.svg" alt="img" class="bg-primary-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-primary">London</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-warning-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/087-pyramids.svg" alt="img" class="bg-warning-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-warning">Rome</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-danger-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/071-burj-al-arab.svg" alt="img" class="bg-danger-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-danger">Dubai</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-success-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/065-bridge-of-the-west.svg" alt="img" class="bg-success-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-success">Colombia</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-info-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/057-atomium.svg" alt="img" class="bg-info-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-info">Belgium</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
					<div class="card bg-purple-transparent border-dark-transparent">
						<a class="absolute-link2" href="tour-list.html"></a>
						<div class="card-body p-0">
							<div class="cat-item text-center p-5">
								<div class="w-70 mx-auto">
									<img src="/Assets/images/city/056-milan-cathedral.svg" alt="img" class="bg-purple-transparent brround ieh-100">
								</div>
								<div class="cat-desc">
									<h5 class="mb-0 font-weight-semibold2 text-purple">Italy</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Section-->

	<!--Section-->
	<section class="sptb">
		<div class="container">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">How</span>
				<h2>It Works?</h2>
				<p>Instructions on how to Book a Vacation</p>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="service-icon-timeline11">
						<div class="mb-lg-0 mb-4">
							<div class="service-card text-center">
								<div class="bg-primary-transparent icon-bg  icon-service text-purple about service-card-svg">
									<!-- Register Svg-->
									<svg height="482pt" viewBox="-15 0 482 482.60407" width="482pt" xmlns="http://www.w3.org/2000/svg"><path d="m268.941406 173.949219h25.609375c3.3125 0 6-2.6875 6-6 0-3.316407-2.6875-6-6-6h-25.609375c-3.316406 0-6 2.683593-6 6 0 3.3125 2.683594 6 6 6zm0 0"/><path d="m156.160156 173.949219h89.820313c3.316406 0 6-2.6875 6-6 0-3.316407-2.683594-6-6-6h-89.820313c-3.3125 0-6 2.683593-6 6 0 3.3125 2.6875 6 6 6zm0 0"/><path d="m94.542969 173.949219h38.199219c3.3125 0 6-2.6875 6-6 0-3.316407-2.6875-6-6-6h-38.199219c-3.316407 0-6 2.683593-6 6 0 3.3125 2.683593 6 6 6zm0 0"/><path d="m231.722656 214.8125h-106.386718c-3.316407 0-6 2.6875-6 6s2.683593 6 6 6h106.386718c3.3125 0 6-2.6875 6-6s-2.6875-6-6-6zm0 0"/><path d="m94.542969 226.8125h11.136719c3.3125 0 6-2.6875 6-6s-2.6875-6-6-6h-11.136719c-3.316407 0-6 2.6875-6 6s2.683593 6 6 6zm0 0"/><path d="m94.542969 282.972656h71.257812c3.316407 0 6-2.6875 6-6s-2.683593-6-6-6h-71.257812c-3.316407 0-6 2.6875-6 6s2.683593 6 6 6zm0 0"/><path d="m123.347656 322.875h-28.804687c-3.316407 0-6 2.6875-6 6 0 3.316406 2.683593 6 6 6h28.804687c3.3125 0 6-2.683594 6-6 0-3.3125-2.6875-6-6-6zm0 0"/><path d="m442.261719 132.910156c-7.777344-11.804687-23.644531-15.089844-35.464844-7.339844l-6.515625 4.28125h-.015625l-11.476563 7.550782v-88.261719c-.015624-14.136719-11.472656-25.59375-25.609374-25.609375h-131.363282c-6.847656-14.375-21.347656-23.53125-37.269531-23.53125-15.925781 0-30.425781 9.15625-37.273437 23.53125h-131.363282c-14.136718.015625-25.59375 11.472656-25.609375 25.609375v407.863281c.023438 14.132813 11.476563 25.582032 25.609375 25.601563h337.269532c14.132812-.015625 25.585937-11.46875 25.609374-25.601563v-245.601562l51.964844-34.144532c11.804688-7.777343 15.089844-23.640624 7.339844-35.464843zm-222.734375 175.34375-7.09375-10.800781 203.097656-133.449219 7.097656 10.800782zm111.785156 52.011719h-31.566406c-14.136719.015625-25.59375 11.46875-25.609375 25.605469v30.734375h-212.554688c-2.097656-.003907-3.796875-1.707031-3.800781-3.804688v-319.460937c.003906-2.101563 1.703125-3.800782 3.800781-3.808594h26.960938v16.472656c0 3.3125 2.683593 6 6 6h200.007812c3.3125 0 6-2.6875 6-6v-16.472656h26.957031c2.097657.003906 3.800782 1.707031 3.804688 3.808594v81.828125l-144.167969 94.726562c-.09375.0625-.179687.128907-.269531.199219-.054688.039062-.109375.078125-.164062.121094-.183594.144531-.359376.300781-.527344.464844l-.007813.007812c-.160156.164062-.3125.339844-.453125.523438-.035156.042968-.066406.085937-.101562.128906-.113282.152344-.21875.3125-.316406.476562-.019532.027344-.039063.050782-.058594.082032l-27.257813 46.972656-8.101562 5.320312c-2.769531 1.820313-3.539063 5.539063-1.71875 8.308594 1.820312 2.769531 5.539062 3.539062 8.308593 1.71875l8.101563-5.320312 53.929687-6.375c.03125 0 .0625-.011719.09375-.015626.097657-.015624.191407-.035156.289063-.054687.175781-.03125.347656-.066406.515625-.113281.101562-.027344.203125-.0625.300781-.101563.164063-.054687.324219-.113281.480469-.179687.097656-.042969.199219-.089844.292969-.136719.152343-.078125.300781-.160156.445312-.25.058594-.035156.117188-.058594.175781-.101563l110.210938-72.40625zm-8.242188 12-36.933593 36.933594v-23.328125c.007812-7.511719 6.097656-13.597656 13.609375-13.605469zm-115.609374-60.523437-33.777344 3.996093 17.074218-29.421875 8.351563 12.714844zm-1.617188-24.316407-7.09375-10.800781 187.386719-123.121094.011719-.007812 15.699218-10.316406 7.097656 10.800781zm157.335938-251.894531c7.511718.007812 13.597656 6.09375 13.609374 13.609375v96.144531l-33.476562 22v-73.945312c-.011719-8.726563-7.082031-15.796875-15.804688-15.808594h-26.957031v-18.585938c0-3.316406-2.6875-6-6-6h-58.710937v-11.648437c-.003906-1.929687-.140625-3.855469-.410156-5.765625zm-168.632813-23.527344c16.171875.015625 29.28125 13.125 29.296875 29.300782v17.640624c0 3.3125 2.6875 6 6 6h58.710938v35.058594h-188.011719v-35.058594h58.707031c3.3125 0 6-2.6875 6-6v-17.648437c.019531-16.171875 13.125-29.273437 29.296875-29.292969zm182.242187 445c-.015624 7.507813-6.101562 13.59375-13.609374 13.601563h-337.269532c-7.507812-.011719-13.59375-6.09375-13.609375-13.601563v-407.863281c.007813-7.511719 6.097657-13.601563 13.609375-13.609375h127.75c-.269531 1.910156-.40625 3.835938-.410156 5.765625v11.648437h-58.707031c-3.316407 0-6 2.683594-6 6v18.585938h-26.960938c-8.722656.015625-15.789062 7.082031-15.800781 15.808594v319.464844c.011719 8.71875 7.078125 15.789062 15.800781 15.800781h214.757813c.796875-.007813 1.589844-.066407 2.375-.175781.464844.113281.941406.171874 1.421875.175781 1.734375 0 3.382812-.753907 4.515625-2.058594 1.566406-.832031 2.996094-1.890625 4.25-3.144531l49.207031-49.199219c3.339844-3.324219 5.210937-7.847656 5.199219-12.5625v-120.363281l33.476562-22zm57.375-289.773437-1.507812.988281-20.777344-31.625 1.507813-.988281c6.28125-4.128907 14.71875-2.382813 18.84375 3.898437l5.832031 8.878906c4.117188 6.28125 2.371094 14.710938-3.898438 18.84375zm0 0"/></svg>
									<!-- Register Svg-->
								</div>
								<div class="servic-data mt-3">
									<h4 class="font-weight-semibold2 mb-2">Register</h4>
									<p class="text-muted mb-0">Register an acccount using the register page</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="service-icon-timeline12">
						<div class="mb-lg-0 mb-4">
							<div class="service-card text-center">
								<div class="bg-secondary-transparent icon-bg  icon-service text-purple about service-card-svg">
									<!-- Create account Svg-->
									<svg height="618pt" viewBox="-28 -19 618 618.66574" width="618pt" xmlns="http://www.w3.org/2000/svg"><path d="m211.265625 264.132812c72.9375 0 132.066406-59.125 132.066406-132.066406 0-72.9375-59.128906-132.066406-132.066406-132.066406s-132.066406 59.128906-132.066406 132.066406c.070312 72.914063 59.15625 131.996094 132.066406 132.066406zm0-239.144531c59.140625 0 107.078125 47.945313 107.078125 107.078125 0 59.140625-47.9375 107.078125-107.078125 107.078125-59.136719 0-107.074219-47.9375-107.074219-107.078125.066406-59.109375 47.964844-107.007812 107.074219-107.078125zm0 0"/><path d="m554.492188 337.976562-107.703126-57.347656c-3.710937-2.023437-8.203124-1.976562-11.871093.121094l-98.582031 53.976562c-36.109376-26.863281-79.34375-40.855468-125.316407-40.855468-57.226562.125-110.328125 22.367187-149.6875 62.847656-39.859375 40.855469-61.726562 96.707031-61.597656 157.304688.019531 6.894531 5.601563 12.476562 12.492187 12.496093l347.597657-.625c16.339843 20.289063 37.347656 36.320313 61.222656 46.730469l14.496094 6.371094c1.574219.703125 3.28125 1.042968 5 1 1.710937-.03125 3.40625-.367188 4.996093-1l16.367188-7.121094c60.136719-25.230469 99.25-84.09375 99.207031-149.3125v-73.46875c.003907-4.640625-2.539062-8.910156-6.621093-11.117188zm-529.394532 163.429688c2.621094-49.105469 21.738282-93.957031 54.226563-127.320312 34.605469-35.609376 81.460937-55.226563 131.816406-55.226563h.375c41.359375 0 80.09375 12.996094 112.203125 37.609375v67.59375c.019531 26.835938 6.714844 53.242188 19.488281 76.839844zm511.027344-78.84375c.023438 55.21875-33.140625 105.039062-84.089844 126.324219h-.125l-11.367187 4.871093-9.5-4.125c-49.96875-21.832031-82.28125-71.160156-82.335938-125.691406v-67.597656l92.332031-50.601562 95.085938 50.726562zm0 0"/><path d="m406.804688 415.941406c-4.484376-5.242187-12.371094-5.855468-17.617188-1.371094-5.242188 4.484376-5.855469 12.371094-1.371094 17.613282l28.359375 33.109375c2.382813 2.769531 5.847657 4.363281 9.496094 4.375 2.863281.023437 5.644531-.945313 7.871094-2.75l65.972656-53.597657c5.347656-4.382812 6.128906-12.269531 1.746094-17.621093-4.378907-5.347657-12.265625-6.128907-17.613281-1.746094l-56.476563 45.980469zm0 0"/></svg>
									<!-- Create account Svg-->
								</div>
								<div class="servic-data mt-3">
									<h4 class="font-weight-semibold2 mb-2">Login Account</h4>
									<p class="text-muted mb-0">After registration, log into your account</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="service-icon-timeline13">
						<div class="mb-sm-0 mb-4">
							<div class="service-card text-center">
								<div class="bg-info-transparent icon-bg  icon-service text-purple about service-card-svg">
									<!-- add post Svg-->
									<svg height="496pt" viewBox="-11 0 496 496.00008" width="496pt" xmlns="http://www.w3.org/2000/svg"><path d="m0 452.042969c0 24.265625 21.007812 43.957031 46.421875 43.957031h272.507813c22.773437 0 41.734374-15.832031 45.425781-36.589844 21.882812-3.410156 38.644531-21.554687 38.644531-43.398437v-198.011719h22.148438c1.542968.03125 3.058593-.390625 4.363281-1.207031l40.515625-26.316407c2.269531-1.46875 3.636718-3.988281 3.636718-6.691406 0-2.699218-1.367187-5.21875-3.636718-6.6875l-40.515625-26.582031c-1.277344-.910156-2.792969-1.4375-4.363281-1.515625h-22.148438v-43.640625c-.199219-2.683594-1.484375-5.167969-3.554688-6.886719l-92.226562-93.957031c-.515625-.738281-1.148438-1.386719-1.878906-1.914063l-.25-.234374c-1.507813-1.523438-3.566406-2.3789068-5.707032-2.367188h-214.984374c-22.773438 0-41.898438 15.835938-45.589844 36.589844-21.882813 3.410156-38.808594 21.554687-38.808594 43.398437zm136-250.042969v-37h281v37zm297-6.574219v-23.226562l17.847656 11.613281zm-124-166.609375 66.339844 68.183594h-55.648438c-2.777344.0625-5.46875-.980469-7.472656-2.902344-2.007812-1.921875-3.164062-4.566406-3.21875-7.34375zm-224.601562-12.816406h208.601562v70.753906c.121094 14.621094 12.070312 26.371094 26.691406 26.246094h67.308594v36h-258.601562c-4.582032.179688-8.246094 3.867188-8.398438 8.449219v1.023437l-23.808594-.472656h-.070312c-4.464844.117188-8.015625 3.78125-8 8.246094l.25 34.820312c.035156 4.394532 3.609375 7.9375 8 7.933594h23.628906v1.175781c0 4.417969 3.984375 7.824219 8.398438 7.824219h16.902343l-.109375 12c-.070312 4.574219 1.644532 8.996094 4.777344 12.328125 2.695312 2.875 6.425781 4.554687 10.363281 4.671875h97.136719c4.417969 0 8-3.582031 8-8s-3.582031-8-8-8h-96.246094c-.015625-1-.027344-.5-.027344-.621094l.113282-12.378906h225.691406v198.011719c0 15.441406-13.5 27.988281-30.089844 27.988281h-272.511718c-16.589844 0-30.398438-12.546875-30.398438-27.988281v-370.785157c0-.40625.261719-.820312.261719-1.242187.023437-.34375.023437-.6875 0-1.035156.585937-14.964844 13.921875-26.949219 30.136719-26.949219zm35.601562 177h-15.683594l-.339844-18.714844 16.023438.1875zm-104-113.011719c0-12.828125 10-23.660156 22-26.964843v362.988281c0 24.261719 20.988281 43.988281 46.398438 43.988281h263.367187c-3.699219 12-15.21875 20-28.835937 20h-272.507813c-16.589844 0-30.421875-12.515625-30.421875-27.957031zm0 0"/><path d="m96.460938 284h131.53125c4.417968 0 8-3.582031 8-8s-3.582032-8-8-8h-131.53125c-4.421876 0-8 3.582031-8 8s3.578124 8 8 8zm0 0"/><path d="m96.460938 323h228.910156c4.421875 0 8-3.582031 8-8s-3.578125-8-8-8h-228.910156c-4.421876 0-8 3.582031-8 8s3.578124 8 8 8zm0 0"/><path d="m96.460938 362h228.910156c4.421875 0 8-3.582031 8-8s-3.578125-8-8-8h-228.910156c-4.421876 0-8 3.582031-8 8s3.578124 8 8 8zm0 0"/><path d="m96.460938 401h228.910156c4.421875 0 8-3.582031 8-8s-3.578125-8-8-8h-228.910156c-4.421876 0-8 3.582031-8 8s3.578124 8 8 8zm0 0"/></svg>
									<!-- add post Svg-->
								</div>
								<div class="servic-data mt-3">
									<h4 class="font-weight-semibold2 mb-2">Book Vacation</h4>
									<p class="text-muted mb-0">Search cruises or flights</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="service-icon-timeline14">
						<div class="">
							<div class="service-card text-center">
								<div class="bg-success-transparent icon-bg  icon-service text-purple about service-card-svg">
									<!-- Earnings Svg-->
									<svg id="Layer_1" height="512" viewBox="0 0 512 512" width="512" xmlns="http://www.w3.org/2000/svg" data-name="Layer 1"><path d="m447.286 280.7-2.776 1.522c-10.081-12.659-27.76-17.6-41.2-10.676l-.135.071-6.175 3.375a44.471 44.471 0 0 0 -51.763-4.888l-32.262 17.828h-42.907a61.342 61.342 0 0 1 -26.917-6.269l-5.891-2.9a99.392 99.392 0 0 0 -104.827 10.4q-.2.15-.38.316l-14.221 12.871a49.522 49.522 0 0 1 -19.091 10.757l-8.215-27.385a6 6 0 0 0 -5.747-4.276h-68.779a6 6 0 0 0 -5.957 6.715l22.926 191.054a6 6 0 0 0 5.957 5.285h103.168a6 6 0 0 0 5.747-7.724l-13.684-45.615 42.548-27.334a25.373 25.373 0 0 1 18.774-2.476q.189.048.381.084l85.862 16.065a109.22 109.22 0 0 0 68.462-9.821 6.013 6.013 0 0 0 .736-.44l148.514-103.626a6 6 0 0 0 1.729-7.979 40.041 40.041 0 0 0 -53.877-14.934zm-38.424 1.482c7.729-3.939 18.2-1.137 24.891 5.937l-56.993 31.242-3.674 1.969a49.344 49.344 0 0 0 -8.191-15.077zm-57.753-1.608c.048-.026.1-.054.142-.082a32.459 32.459 0 0 1 34.238.808l-29.6 16.211a47.9 47.9 0 0 0 -19.671-8.706zm-306.86 191.926-21.486-179.054h57.552l53.715 179.054zm300.163-75.349a97.132 97.132 0 0 1 -60.5 8.553l-85.663-16.03a37.326 37.326 0 0 0 -27.61 3.8c-.095.054-.187.11-.278.169l-39.791 25.557-28.381-94.6a61.5 61.5 0 0 0 23.693-13.351l14.035-12.7a87.462 87.462 0 0 1 92.05-9.012l5.891 2.895a73.418 73.418 0 0 0 32.21 7.5h57.12c18 0 33 13.356 35.943 30.854l-41.922-1.928a243.783 243.783 0 0 0 -45 2.112 6 6 0 0 0 1.672 11.883 231.639 231.639 0 0 1 42.778-2.008l48.722 2.241q.138.006.276.006a6 6 0 0 0 6-6c0-1.162-.054-2.311-.133-3.454l6.955-3.727 70.577-38.695a28.007 28.007 0 0 1 34.511 6.045z"/><path d="m65.35 445.071a19.757 19.757 0 1 0 19.756-19.979 19.891 19.891 0 0 0 -19.756 19.979zm19.756-7.979a7.983 7.983 0 1 1 -7.756 7.979 7.878 7.878 0 0 1 7.756-7.979z"/><path d="m284.853 27.5c-60.144 0-109.074 48.871-109.074 108.942s48.93 108.941 109.074 108.941 109.074-48.871 109.074-108.941-48.927-108.942-109.074-108.942zm0 205.883a96.942 96.942 0 1 1 97.074-96.941 97.118 97.118 0 0 1 -97.074 96.941z"/><path d="m287.588 92.041c15.514.638 19.188 13.406 19.563 14.9a6 6 0 0 0 11.675-2.777 32.412 32.412 0 0 0 -26.4-23.675v-7.589a6 6 0 0 0 -12 0v7.612a26.681 26.681 0 0 0 -14.358 7.076c-8.468 8.243-8.969 19.9-8.921 23.283.185 13 9.885 23.973 23.583 26.687l1.2.239c1.025.2 2.284.457 3.054.607.442.086 1.592.437 2.086.588a4.322 4.322 0 0 1 .507.189c.08.035.159.068.24.1l1.882.733a4.985 4.985 0 0 1 .487.22c.888.459 1.105.588 1.75.971.265.156.579.343.984.58l.2.131c.063.04.132.085.21.132 1.942 1.2 11.645 7.641 12.031 17.014.234 5.691-1.21 10.014-4.415 13.214-4.921 4.913-12.847 5.948-16.775 5.771a23.745 23.745 0 0 1 -11.3-4.2c-2.9-2.007-6.475-5.477-7.04-10.614a6 6 0 1 0 -11.927 1.311c1.584 14.423 15.476 23.276 26.518 25.141v6.421a6 6 0 0 0 12 0v-6.763a32.861 32.861 0 0 0 17-8.574c5.556-5.547 8.3-13.224 7.928-22.2-.619-15.015-13.658-24.223-17.739-26.744-.053-.034-.5-.318-.549-.345l-1.01-.595c-.784-.465-1.212-.715-2.359-1.309a17 17 0 0 0 -1.65-.745l-1.771-.689a16.309 16.309 0 0 0 -1.7-.625c-1.18-.361-2.321-.7-3.3-.89-.755-.147-1.989-.394-2.991-.595l-1.22-.243c-9.492-1.881-13.83-8.933-13.919-15.087-.064-4.464 1.294-10.62 5.293-14.513 3.073-2.989 7.492-4.389 13.153-4.148z"/></svg>
									<!-- Earnings Svg-->
								</div>
								<div class="servic-data mt-3">
									<h4 class="font-weight-semibold2 mb-2">Make Payments</h4>
									<p class="text-muted mb-0">Pay for tickets and fees</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Section-->

	<!--Section-->
	<section class="sptb cover-image patter-image bg-background-pattern" data-image-src="/Assets/images/pattern/9.png">
		<div class="container content-text">
			<div class="section-title center-block text-center">
				<span class="heading-style text-secondary">Download</span>
				<h2>Mobile App</h2>
				<p>Download our mobile app now and keep up with us on the go.</p>
			</div>
            <div class="row">
				<div class="col-md-12">
					<div class="text-center text-wrap">
						<div class="btn-list">
							<a href="javascript:void(0)" class="btn btn-secondary btn-lg mb-sm-0 d-inline-flex pb-2 h-100"><i class="fa fa-apple fa-1x me-2 fs-18 mt-1"></i> App Store</a>
							<a href="javascript:void(0)" class="btn btn-primary btn-lg mb-sm-0 d-inline-flex pb-2 h-100"><i class="fa fa-android fs-18 fa-1x me-2  mt-1"></i> Google Play</a>
							<a href="javascript:void(0)" class="btn btn-info btn-lg mb-0 d-inline-flex pb-2 h-100"><i class="fa fa-windows  fs-18 fa-1x me-2  mt-1"></i> Windows</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/Section-->
</asp:Content>
