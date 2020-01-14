<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="content-wrapper">
	<div class="page-header">
		<h3 class="page-title">Compose</h3>
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item active" aria-current="page"><a
					href="adminindex">Home<span
						class="page-title-icon bg-gradient-primary text-white mr-2">
							<i class="mdi mdi-home"></i>
					</span></a></li>
			</ol>
		</nav>
	</div>

	<div class="col-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<form:form class="form-group" method="post" action="sendMail" modelAttribute="mailForm">
					<table border="0" width="80%">
						
						<tr>
							<td><b>To:</b></td>
							<td><form:input type="email" path="to" size="46" class="form-control input-md"/></td>
						</tr>
						<tr>
							<td><b>Subject:</b></td>
							<td><form:input path="subject" size="46" class="form-control input-md"/></td>
						</tr>
						<tr>
							<td><b>Message:</b></td>
							<td><form:textarea cols="50" rows="10" path="message" class="form-control input-md"></form:textarea></td>
						</tr>
						
						<tr>
							<td colspan="2" align="center"><button type="submit"
									class="btn btn-gradient-primary mr-2">Submit</button></td>
						</tr>
						
					</table>
				</form:form>
			</div>
		</div>
	</div>
</div>