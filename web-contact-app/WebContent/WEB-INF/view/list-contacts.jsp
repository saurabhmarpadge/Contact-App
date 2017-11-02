<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Contacts</title>
	
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
		
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="style.css" ">
</head>

<body>

	<div class="container" id = "title">
		<h2>Contact Application</h2>
	</div>

	<div class="container">

			<input type="button" value="Add Contact"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="btn btn-primary pull-right"
			/>
		
				<c:forEach var="tempContact" items="${contacts}">
					
					<!-- view -->
					<c:url var="viewLink" value="/contact/showForm">
						<c:param name="contactId" value="${tempContact.id}" />
					</c:url>
				
					<!-- update -->
					<c:url var="updateLink" value="/contact/showFormForUpdate">
						<c:param name="contactId" value="${tempContact.id}" />
					</c:url>					

					<!-- delete -->
					<c:url var="deleteLink" value="/contact/delete">
						<c:param name="contactId" value="${tempContact.id}" />
					</c:url>					

						<div id="listitem">
						<div id="data">
							<div class="col-xs-10 col-sm-8 col-md-8 col-lg-8">
							<ul>
							<a href="${viewLink}"><li>${tempContact.firstName}</li>
							<li>${tempContact.lastName}</li></a>
							<br>
							<br>
							<li>${tempContact.mobileNo}</li>
							</ul>
							<br>
							</div>
							<div class="col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<li><img src="${pageContext.request.contextPath}/resources/img/profile.png" class="img-thumbnail pull-right" alt="Profile Pic" width="150" height="150"> </li>
							
							<div class="link">
									
									<a href="${updateLink}">Update</a>
									|
									<a href="${deleteLink}"
									   onclick="if (!(confirm('Are you sure you want to delete this Contact?'))) return false">Delete</a>
							</div>
							</div>
						</div>
						</div>
		
				</c:forEach>

	</div>

</body>

</html>









