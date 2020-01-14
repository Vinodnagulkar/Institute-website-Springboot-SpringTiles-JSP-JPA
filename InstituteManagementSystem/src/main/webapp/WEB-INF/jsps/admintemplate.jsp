<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Purple Student</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- inject:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.png" />
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<tiles:insertAttribute name="adminmenu"></tiles:insertAttribute>
			<!-- partial -->
			<div class="main-panel">
				<tiles:insertAttribute name="body"></tiles:insertAttribute>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<tiles:insertAttribute name="footer"></tiles:insertAttribute>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	<!-- plugins:js -->
	<script
		src="${pageContext.request.contextPath}/resources/vendors/js/vendor.bundle.base.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendors/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script
		src="${pageContext.request.contextPath}/resources/js/off-canvas.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script
		src="${pageContext.request.contextPath}/resources/js/dashboard.js"></script>
	<!-- End custom js for this page-->
</body>

</html>
