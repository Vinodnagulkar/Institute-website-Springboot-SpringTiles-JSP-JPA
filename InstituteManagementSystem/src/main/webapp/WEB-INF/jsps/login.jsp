<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Purple Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
</head>

<body>
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth">
				<div class="row w-100">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left p-5">
							<div class="brand-logo">
								<img src="${pageContext.request.contextPath}/resources/images/logo.svg">
							</div>
							<h4>Hello! let's get started</h4>
							<h6 class="font-weight-light">Sign in to continue.</h6>
							
							<form:form class="pt-3" action="loginStudent" modelAttribute="loginForm" method="post">
								<div class="form-group">
									<form:input class="form-control form-control-lg"
										path="username" placeholder="Username"/>
								</div>
								<div class="form-group">
									<form:input type="password" class="form-control form-control-lg"
										path="password" placeholder="Password"/>
								</div>
								<div class="mt-3">
									<button type="submit"
										class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn"
										href="loginStudent">SIGN IN</button>
								</div>
								<div
									class="my-2 d-flex justify-content-between align-items-center">
									<div class="form-check">
										<label class="form-check-label text-muted"> <input
											type="checkbox" class="form-check-input"> Keep me
											signed in
										</label>
									</div>
									<a href="#" class="auth-link text-black">Forgot password?</a>
								</div>
								<div class="mb-2">
									<button type="submit" 
										class="btn btn-block btn-facebook auth-form-btn">
										<i class="mdi mdi-facebook mr-2"></i>Connect using facebook
									</button>
								</div>
								<div class="text-center mt-4 font-weight-light">
									Don't have an account? <a href="register"
										class="text-primary">Create</a>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="${pageContext.request.contextPath}/resources/vendors/js/vendor.bundle.base.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendors/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script src="${pageContext.request.contextPath}/resources/js/off-canvas.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/misc.js"></script>
	<!-- endinject -->
</body>

</html>
