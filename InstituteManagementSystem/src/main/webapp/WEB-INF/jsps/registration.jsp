<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<style>
.stud {
	color: red;
}
</style>
</head>


<div class="content-wrapper">
	<div class="page-header">
		<c:choose>
			<c:when test="${stud.id!=null}">
				<h3 class="page-title">Update Information</h3>
			</c:when>
			<c:otherwise>
				<h3 class="page-title">New Registration</h3>
			</c:otherwise>
		</c:choose>

		<!-- <nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Basic
					elements</li>
			</ol>
		</nav> -->
	</div>
	<div class="col-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<form:form action="submitStudent" method="post"
					modelAttribute="studentForm" role="form"
					enctype="multipart/form-data">

					<div class="form-group">
						<div class="col-md-4">
							<form:input path="id" type="hidden" class="form-control input-md"
								required="" />
						</div>
					</div>

					<div class="form-group">
						<label>Name</label>
						<form:input type="text" path="name" class="form-control"
							placeholder="Enter your name..." />
						<form:errors path="name" cssClass="stud"></form:errors>
					</div>

					<div class="form-group">
						<label>Surname</label>
						<form:input path="surname" class="form-control"
							placeholder="Enter your surname..." />
						<form:errors path="surname" cssClass="stud"></form:errors>
					</div>

					<div class="form-group">
						<label for="gender">Gender</label>
						<form:select class="form-control" path="gender">
							<form:option value="Male">Male</form:option>
							<form:option value="Female">Female</form:option>
						</form:select>
						<form:errors path="gender" cssClass="stud"></form:errors>
					</div>
					<div class="form-group">
						<label>DOB</label>
						<form:input path="dob" type="date" class="form-control"
							placeholder="Enter ..." />
						<form:errors path="dob" cssClass="stud"></form:errors>
					</div>


					<div class="form-group">
						<label>Mobile</label>
						<form:input path="mobile" class="form-control"
							placeholder="Enter ..." minLength="10" maxLength="10" />
						<form:errors path="mobile" cssClass="stud"></form:errors>
					</div>

					<div class="form-group">
						<label>Email</label>
						<form:input path="email" class="form-control"
							placeholder="Enter ..." />
						<form:errors path="email" cssClass="stud"></form:errors>
					</div>

					<div class="form-group">
						<label>Photo</label> <input type="file" name="filename"
							class="form-control" placeholder="Upload pic ..."
							accept="image/x-png,image/gif,image/jpeg,image/jpg" />

					</div>


					<!-- <div class="form-group">
                      <label>File upload</label>
                      <input type="file" name="file" class="file-upload-default">
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                        <span class="input-group-append">
                          <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                        </span>
                      </div>
                    </div> -->

					<!-- textarea -->
					<div class="form-group">
						<label>Address</label>
						<form:textarea class="form-control" path="address"
							placeholder="Enter your address" />
						<form:errors path="address" cssClass="stud"></form:errors>
					</div>


					<!-- select -->
					<div class="form-group">
						<label>Education</label>
						<form:select class="form-control" path="education">
							<form:option value="">Please select</form:option>
							<form:option value="ME">ME</form:option>
							<form:option value="BE">BE</form:option>
							<form:option value="MCA">MCA</form:option>
							<form:option value="BCA">BCA</form:option>
							<form:option value="MTECH">MTECH</form:option>
							<form:option value="BTECH">BTECH</form:option>
							<form:option value="MSC">MSC</form:option>
							<form:option value="BSC">BSC</form:option>
							<form:option value="MSC">MCS</form:option>
							<form:option value="BCS">BCS</form:option>
						</form:select>
						<form:errors path="education" cssClass="stud"></form:errors>
					</div>

					<div class="form-group">
						<label for="course">Course</label>
						<form:select class="form-control" path="course">
							<form:option value="JAVA">JAVA</form:option>
							<form:option value="TESTING">TESTING</form:option>
							<form:errors path="course" cssClass="stud"></form:errors>
						</form:select>
					</div>


					<div class="form-group">
						<label for="exampleInputName1">Username</label>
						<form:input class="form-control" path="username"
							placeholder="Username" />
						<form:errors path="username" cssClass="stud"></form:errors>
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<form:input type="password" class="form-control" path="password"
							placeholder="Password" />
						<form:errors path="password" cssClass="stud"></form:errors>
					</div>
					<c:choose>
						<c:when test="${stud.id!=null}">
						<h3>${stud}</h3>
						<button type="submit" class="btn btn-gradient-primary mr-2">Update</button>
						<button class="btn btn-light">Cancel</button>
						</c:when>
						<c:otherwise>
						<button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>
						<button class="btn btn-light">Cancel</button>
						</c:otherwise>
					</c:choose>
					
				</form:form>
			</div>
		</div>
	</div>
</div>
<!-- /.card-body -->