<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="content-wrapper">
	<div class="page-header">
		<h3 class="page-title">
			<span class="page-title-icon bg-gradient-primary text-white mr-2">
				<i class="mdi mdi-home"></i>
			</span> About me:
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
					<div class="card-body"
						style="background: linear-gradient(to top left, #ff9999, #ffccff);">

						<p>&nbsp;&nbsp;&nbsp; My name is <b>${stud.name} &nbsp;${stud.surname}</b> and I am a full
							time <b> ${stud.course} </b>learner in <b>IMS, Pune</b> 
							<br>I'm from ${stud.address}. My birthday is on
							${stud.dob}.
							I have completed my education in ${stud.education}.<br>
							That's all about about me! I will write more if I can think of anything else.<br><br><br>
							
							Contact:<br>
							Mail-ID: ${stud.email}<br>
							Mobile:	${stud.mobile}
							</p>
					</div> 
				</div>
			</div>
		</div>
	</div>
</div>