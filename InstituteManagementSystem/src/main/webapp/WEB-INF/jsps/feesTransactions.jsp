<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="content-wrapper">
	<div class="page-header">
		<h3 class="page-title">
			<span class="page-title-icon bg-gradient-primary text-white mr-2">
				<i class="mdi mdi-home"></i>
			</span> Fees Details:
		</h3><h5 style="color: red">${error}</h5>
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
					<div class="card-body"
						style="background: linear-gradient(to top left, #ff9999, #ffccff);">
						<div class="table-responsive m-t-40">
							<table id="myTable" class="table table-bordered table-striped">
								<thead>


									<tr>
										<th>SR</th>
										<th>DATE</th>
										<th>AMOUNT</th>
										<th>REMAINING</th>
									</tr>

									<c:forEach var="tr" items="${tList}">
										<tr>
											<td><c:out value="${tr.transactionId}"></c:out></td>
											<td><c:out value="${tr.transactionDate}"></c:out></td>
											<td><c:out value="${tr.paidAmount}"></c:out></td>
											<td><c:out value="${tr.remainingFees}"></c:out></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>