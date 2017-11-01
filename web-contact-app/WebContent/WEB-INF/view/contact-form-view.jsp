<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>

<head>
	<title>Save Contact</title>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="style.css" ">
	
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

</head>

<body>
	
	<div class="container" id = "title">
		<h2>Contact Application</h2>
	</div>

	<div class="container">
		<h3>View Contact</h3>
	
		<form:form action="saveContact" modelAttribute="contact" method="POST">
		
			<form:hidden path="id" />
				

		<div class="container">
			<div class="row">
				<form role="form">
			        <div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
			            <label for="exampleFirst Name">First Name</label>: ${contact.firstName}
			        </div>
			        <div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
			            <label for="exampleLast Name">Last Name</label>: ${contact.lastName}
			        </div>
			        <div class="clearfix"></div>
			        <div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
			            <label for="exampleEmailId">EmailId</label>: ${contact.email}
			        </div>
			        <div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
			            <label for="exampleMobileNo">Mobile No</label>: ${contact.mobileNo}
			        </div>
			        <div class="clearfix"></div>
			        <div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
			            <label for="exampleWorkNo">Work No</label>: ${contact.workNo}
			        </div>
			        <div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
			            <label for="exampleHomeNo">Home No</label>: ${contact.homeNo}
			        </div>
			        <div class="clearfix"></div>
			        <div class="clearfix"></div>
				</form>
		    	<div class="clearfix"></div>
				<br /><br />
			</div>
		</div>
		
		</form:form>
		<div style="clear; both;"></div>
		<p>
			<a href="${pageContext.request.contextPath}/contact/list"><  Back to List</a>
		</p>
	</div>
</body>
</html>










