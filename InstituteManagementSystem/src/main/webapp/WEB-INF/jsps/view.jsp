<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="content-wrapper">
	<div class="page-header">
		<h3 class="page-title">Students</h3>
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Basic
					elements</li>
			</ol>
		</nav>
	</div>
<!-- style="background-color: #DD88FF"; -->
<!-- End Bread crumb -->
<div class="container-fluid">
	<!-- Start Page Content -->
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-body">
					<div class="table-responsive m-t-40">
						<table id="myTable" class="table table-bordered">
							<thead>
								<tr>
									<th>ID</th>
									<th>NAME</th>
									<th>SURNAME</th>
									<th>ACTION</th>
								</tr>

								<c:forEach var="stud" items="${sList}">
									<tr>
										<td><c:out value="${stud.id}"></c:out></td>
										<td><c:out value="${stud.name}"></c:out></td>
										<td><c:out value="${stud.surname}"></c:out></td>
										<td><a href="login">Login</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- End PAge Content -->
</div>
</div>