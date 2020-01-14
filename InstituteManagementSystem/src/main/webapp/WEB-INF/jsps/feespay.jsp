<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="content-wrapper">
	<div class="page-header">
		<h3 class="page-title">Pay Fees</h3>
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="studentindex">Home</a></li>
				<!-- <li class="breadcrumb-item active" aria-current="page">Basic
					elements</li> -->
			</ol>
		</nav>
	</div>
	<div class="col-md-8 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<form:form  action="payfees" modelAttribute="feesForm">
					<div class="form-group">
						<%-- <div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text">@</span>
							</div>
							<form:input class="form-control"
								placeholder="Enter mailId" path="studentEmail"
								aria-describedby="basic-addon1" />
						</div> --%>
					</div>
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text bg-gradient-primary text-white">&#8377;</span>
							</div>
							<form:input type="text" class="form-control" path="paidAmount" />
							<div class="input-group-append">
								<span class="input-group-text">.00</span>
							</div>
							<button type="submit" class="btn btn-gradient-primary mr-2">Pay</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>