<div class="content-wrapper">
	<div class="row">
		<div class="col-12">
			<span class="d-flex align-items-center purchase-popup">
				<p>Institute Management System, Pune</p> <a
				href="register"
				target="_blank" class="btn ml-auto download-button">Join Class</a> <a
				href="composeMail"
				target="_blank" class="btn purchase-button">Inquiry</a> <i
				class="mdi mdi-close popup-dismiss"></i>
			</span>
		</div>
	</div>
	<div class="page-header">
		<h3 class="page-title">
			<span class="page-title-icon bg-gradient-primary text-white mr-2">
				<i class="mdi mdi-home"></i>
			</span> Dashboard 
		</h3><h5 style="color: red">${feesError}</h5>
		<nav aria-label="breadcrumb">
			<ul class="breadcrumb">
				<li class="breadcrumb-item active" aria-current="page"><span></span>Overview
					<i
					class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
				</li>
			</ul>
		</nav>
	</div>
	<div class="row">
		<div class="col-md-4 stretch-card grid-margin">
			<div class="card bg-gradient-danger card-img-holder text-white">
				<div class="card-body" style="background: linear-gradient(to top left, #ff9999, #ffccff);">
					<img
						src="${pageContext.request.contextPath}/resources/images/dashboard/circle.svg"
						class="card-img-absolute" alt="circle-image" />
					<h4 class="font-weight-normal mb-3">
						Weekly Inquery <i class="mdi mdi-chart-line mdi-24px float-right"></i>
					</h4>
					<h2 class="mb-5"> 200</h2>
					<h6 class="card-text">Increased by 60%</h6>
				</div>
			</div>
		</div>
		<div class="col-md-4 stretch-card grid-margin">
			<div class="card bg-gradient-info card-img-holder text-white">
				<div class="card-body" style="background: linear-gradient(to top left, #66ccff, #ccffcc);">
					<img
						src="${pageContext.request.contextPath}/resources/images/dashboard/circle.svg"
						class="card-img-absolute" alt="circle-image" />
					<h4 class="font-weight-normal mb-3">
						Weekly Joiners <i
							class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
					</h4>
					<h2 class="mb-5">100</h2>
					<h6 class="card-text">Decreased by 10%</h6>
				</div>
			</div>
		</div>
		<div class="col-md-4 stretch-card grid-margin">
			<div class="card bg-gradient-success card-img-holder text-white">
				<div class="card-body" style="background: linear-gradient(to top left, #66ff99, #ffff66);">
					<img
						src="${pageContext.request.contextPath}/resources/images/dashboard/circle.svg"
						class="card-img-absolute" alt="circle-image" />
					<h4 class="font-weight-normal mb-3">
						Visitors Online <i class="mdi mdi-diamond mdi-24px float-right"></i>
					</h4>
					<h2 class="mb-5">1,000</h2>
					<h6 class="card-text">Increased by 5%</h6>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-7 grid-margin stretch-card">
			<div class="card">
				<div class="card-body" style="background: linear-gradient(to top left, #ffffff, #ffffff);">
					<div class="clearfix">
						<h4 class="card-title float-left">Student Statistics</h4>
						<div id="visit-sale-chart-legend"
							class="rounded-legend legend-horizontal legend-top-right float-right"></div>
					</div>
					<canvas id="visit-sale-chart" class="mt-4"></canvas>
				</div>
			</div>
		</div>
		<div class="col-md-5 grid-margin stretch-card">
			<div class="card">
				<div class="card-body" style="background: linear-gradient(to top left, #ffffff, #ffffff);">
					<h4 class="card-title">Traffic Sources</h4>
					<canvas id="traffic-chart"></canvas>
					<div id="traffic-chart-legend"
						class="rounded-legend legend-vertical legend-bottom-left pt-4"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-12 grid-margin">
			<div class="card">
				<div class="card-body" style="background: linear-gradient(to top left, #ffffff, #ffffff);">
					<h4 class="card-title">Recent Tickets</h4>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>Assignee</th>
									<th>Subject</th>
									<th>Status</th>
									<th>Last Update</th>
									<th>Tracking ID</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><img
										src="${pageContext.request.contextPath}/resources/images/faces/teju.jpg"
										class="mr-2" alt="image">Nutan Bhosale</td>
									<td>Fund is not recieved</td>
									<td><label class="badge badge-gradient-success">DONE</label>
									</td>
									<td>Jan 5, 2020</td>
									<td>WD-12345</td>
								</tr>
								
								<tr>
									<td><img
										src="${pageContext.request.contextPath}/resources/images/faces/face3.jpg"
										class="mr-2" alt="image">Vaibhav Zope</td>
									<td>Website down for one week</td>
									<td><label class="badge badge-gradient-info">ON
											HOLD</label></td>
									<td>jan 16, 2020</td>
									<td>WD-12347</td>
								</tr>
								<tr>
									<td><img
										src="${pageContext.request.contextPath}/resources/images/faces/face4.jpg"
										class="mr-2" alt="image">Tushar Dhake</td>
									<td>Loosing control on server</td>
									<td><label class="badge badge-gradient-danger">REJECTED</label>
									</td>
									<td>Jan 3, 2020</td>
									<td>WD-12348</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-12 grid-margin stretch-card">
			<div class="card">
				<div class="card-body" style="background: linear-gradient(to top left, #ffffff, #ffffff);">
					<h4 class="card-title">Recent Updates</h4>
					<div class="d-flex">
						<div
							class="d-flex align-items-center mr-4 text-muted font-weight-light">
							<i class="mdi mdi-account-outline icon-sm mr-2"></i> <span>Vinit Nagulkar</span>
						</div>
						<div
							class="d-flex align-items-center text-muted font-weight-light">
							<i class="mdi mdi-clock icon-sm mr-2"></i> <span>Jan
								6th, 2020</span>
						</div>
					</div>
					<div class="row mt-3">
						<div class="col-6 pr-1">
							<img
								src="${pageContext.request.contextPath}/resources/images/dashboard/img_1.jpg"
								class="mb-2 mw-100 w-100 rounded" alt="image"> <img
								src="${pageContext.request.contextPath}/resources/images/dashboard/img_4.jpg"
								class="mw-100 w-100 rounded" alt="image">
						</div>
						<div class="col-6 pl-1">
							<img
								src="${pageContext.request.contextPath}/resources/images/dashboard/img_2.jpg"
								class="mb-2 mw-100 w-100 rounded" alt="image"> <img
								src="${pageContext.request.contextPath}/resources/images/dashboard/img_3.jpg"
								class="mw-100 w-100 rounded" alt="image">
						</div>
					</div>
					<div class="d-flex mt-5 align-items-top">
						<img
							src="${pageContext.request.contextPath}/resources/images/faces/face3.jpg"
							class="img-sm rounded-circle mr-3" alt="image">
						<div class="mb-0 flex-grow">
							<h5 class="mr-2 mb-2">Institute Website - Authentication
								Module.</h5>
							<p class="mb-0 font-weight-light">It is a long established
								fact that a reader will be distracted by the readable content of
								a page.</p>
						</div>
						<div class="ml-auto">
							<i class="mdi mdi-heart-outline text-muted"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 grid-margin stretch-card">
			<div class="card">
				<div class="card-body" style="background: linear-gradient(to top left, #66ccff, #ffffcc);">
					<h4 class="card-title">Project Status</h4>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th>Name</th>
									<th>Due Date</th>
									<th>Progress</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Student Management System</td>
									<td>Dec 15, 2020</td>
									<td>
										<div class="progress">
											<div class="progress-bar bg-gradient-success"
												role="progressbar" style="width: 25%" aria-valuenow="25"
												aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
								<tr>
									<td>2</td>
									<td>Employee Management System</td>
									<td>Jul 01, 2020</td>
									<td>
										<div class="progress">
											<div class="progress-bar bg-gradient-danger"
												role="progressbar" style="width: 75%" aria-valuenow="75"
												aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
								<tr>
									<td>3</td>
									<td>Online Banking App</td>
									<td>Apr 12, 2020</td>
									<td>
										<div class="progress">
											<div class="progress-bar bg-gradient-warning"
												role="progressbar" style="width: 90%" aria-valuenow="90"
												aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
								
								<tr>
									<td>5</td>
									<td>Institute Management System</td>
									<td>Aug 03, 2020</td>
									<td>
										<div class="progress">
											<div class="progress-bar bg-gradient-danger"
												role="progressbar" style="width: 35%" aria-valuenow="35"
												aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
								<tr>
									<td>5</td>
									<td>Practice Test App</td>
									<td>Jun 05, 2020</td>
									<td>
										<div class="progress">
											<div class="progress-bar bg-gradient-info" role="progressbar"
												style="width: 65%" aria-valuenow="65" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>