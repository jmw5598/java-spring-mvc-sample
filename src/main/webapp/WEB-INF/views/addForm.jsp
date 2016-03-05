<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
	<head>
		<title>Contacts App : Add Contact</title>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css" />" />
	</head>
	<body>
		<div class="container">
			<h1>Add New Contact</h1>
			<div class="btn btn-sm btn-green btns-horizontal">
				<span><a href="<c:url value="/contacts" />">Return home</a></span>
			</div>
			<div class="btn btn-sm btn-blue btns-horizontal">
				<span><a href="<c:url value="/contacts" />">View contacts</a></span>
			</div>
			<div class="container-quarter">
				<div class="contact">
					<div class="contact-container">
						<form action="<c:url value="/contacts/add" />" method="POST">
							<input type="text" placeholder="First name" name="firstName" />
							<input type="text" placeholder="Last name" name="lastName" />
							<input type="text" placeholder="Phone number" name="phone" />
							<input type="text" placeholder="Email" name="email" />
							<input type="hidden" name="imgUrl" value="/resources/img/default.png" />
							<input class="btn btn-purple" type="submit" value="Add contact" />
						</form>
					</div>
				</div>
			</div>			
	</body>	
</html>