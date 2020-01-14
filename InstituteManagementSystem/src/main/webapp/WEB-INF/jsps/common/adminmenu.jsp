<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item nav-profile"><a href="aboutadmin" class="nav-link">
				<div class="nav-profile-image">
					<img
						src="${pageContext.request.contextPath}/resources/images/faces/vinit.jpg"
						alt="profile"> <span class="login-status online"></span>
					<!--change to offline or busy as needed-->
				</div>
				<div class="nav-profile-text d-flex flex-column">
					<span class="font-weight-bold mb-2">Admin</span> <span 
						class="text-secondary text-small"><b style="color:grey">Project Manager</b></span>
				</div> <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="adminindex"> <span
				class="menu-title">Dash-board</span> <i
				class="mdi mdi-home menu-icon"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="register"> <span
				class="menu-title">Register Here</span> <i
				class="mdi mdi-format-list-bulleted menu-icon"></i>
		</a></li>
		
		<li class="nav-item"><a class="nav-link" href="login">
				<span class="menu-title">Login</span> <i
				class="mdi mdi-contacts menu-icon"></i>
		</a></li>

		<li class="nav-item"><a class="nav-link" href="composeMail">
				<span class="menu-title">Compose Mail</span> <i
				class="mdi mdi-contacts menu-icon"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="displayStudent">
				<span class="menu-title">View Students</span> <i
				class="mdi mdi-contacts menu-icon"></i>
		</a></li>
		

		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#general-pages" aria-expanded="false"
			aria-controls="general-pages"> <span class="menu-title">Courses</span>
				<i class="menu-arrow"></i> <i class="mdi mdi-format-list-bulleted menu-icon""></i>
		</a>
			<div class="collapse" id="general-pages">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="adminjava">JAVA</a></li>
					<li class="nav-item"><a class="nav-link" href="admintesting">
							TESTING</a></li>
				</ul>
			</div>
			</li>
		<!-- li class="nav-item"><a class="nav-link"
			href="pages/forms/basic_elements.html"> <span class="menu-title">Forms</span>
				<i class="mdi mdi-format-list-bulleted menu-icon"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link"
			href="pages/charts/chartjs.html"> <span class="menu-title">Charts</span>
				<i class="mdi mdi-chart-bar menu-icon"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link"
			href="pages/tables/basic-table.html"> <span class="menu-title">Tables</span>
				<i class="mdi mdi-table-large menu-icon"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#general-pages" aria-expanded="false"
			aria-controls="general-pages"> <span class="menu-title">Links</span>
				<i class="menu-arrow"></i> <i class="mdi mdi-medical-bag menu-icon"></i>
		</a>
			<div class="collapse" id="general-pages">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/blank-page.html"> Blank Page </a></li>
					<li class="nav-item"><a class="nav-link" href="login">
							Login </a></li>
					<li class="nav-item"><a class="nav-link" href="register">
							Register </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/error-404.html"> 404 </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/error-500.html"> 500 </a></li>
				</ul>
			</div>
			</li> -->
			<li class="nav-item"><a class="nav-link" href="aboutadmin">
				<span class="menu-title">About me</span> <i
				class="mdi mdi-contacts menu-icon"></i>
		</a></li>
			
		<li class="nav-item sidebar-actions"><span class="nav-link">
				<div class="border-bottom">
					<h6 class="font-weight-normal mb-3">Projects</h6>
				</div>
				<button class="btn btn-block btn-lg btn-gradient-primary mt-4">+
					Add a project</button>
				<div class="mt-4">
					<div class="border-bottom">
						<p class="text-secondary">Categories</p>
					</div>
					<ul class="gradient-bullet-list mt-4">
						<li>Free</li>
						<li>Pro</li>
					</ul>
				</div>
		</span></li>
	</ul>
</nav>