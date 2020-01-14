<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="content-wrapper">
<div class="page-header">
	<h3 class="page-title">
		<span class="page-title-icon bg-gradient-primary text-white mr-2">
			<i class="mdi mdi-home"></i>
		</span> Personal Details:
	</h3>
	<nav aria-label="breadcrumb">
		<ul class="breadcrumb">
			<li class="breadcrumb-item active" aria-current="page"><span></span>Overview
				<i
				class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
			</li>
		</ul>
	</nav>
</div>
<!-- End Bread crumb -->
<div class="container-fluid">
	<!-- Start Page Content -->
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-body" style="background: linear-gradient(to top left, #ff9999, #ffccff);">
					<div class="table-responsive m-t-40">
						<table id="myTable" class="table table-bordered table-striped">
							<thead>
								<%-- <tr>
									<th>ID</th>
									<td><c:out value="${stud.id}"></c:out></td>
								</tr> --%>

								<tr>
									<th>NAME</th>
									<td><c:out value="${stud.name}"></c:out></td>
								</tr>

								<tr>
									<th>SURNAME</th>
									<td><c:out value="${stud.surname}"></c:out></td>
								</tr>

								<tr>
									<th>GENDER</th>
									<td><c:out value="${stud.gender}"></c:out></td>
								</tr>

								<tr>
									<th>DOB</th>
									<td><c:out value="${stud.dob}"></c:out></td>
								</tr>

								<tr>
									<th>MOBILE</th>
									<td><c:out value="${stud.mobile}"></c:out></td>
								</tr>

								<tr>
									<th>ADDRESS</th>
									<td><c:out value="${stud.address}"></c:out></td>
								</tr>

								<tr>
									<th>EMAIL</th>
									<td><c:out value="${stud.email}"></c:out></td>
								</tr>

								<tr>
									<th>EDUCATION</th>
									<td><c:out value="${stud.education}"></c:out></td>
								</tr>
								<tr>
									<th>USERNAME</th>
									<td><c:out value="${stud.username}"></c:out></td>
								</tr>

								<tr>
									<th>ACTION</th>
									<td><a href="editStudent?id=${stud.id}">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
										href="deleteStudent?id=${stud.id}">Delete</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
										href="createpdf?id=${stud.id}">Generate PDF</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
</div>