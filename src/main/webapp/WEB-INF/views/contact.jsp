<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
	<head>
		<title>Contacts App : <c:out value="${contact.firstName}"/> <c:out value="${contact.lastName}" /></title>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css" />" />
	</head>
	<body>
		<div class="container">
			<h1>Selected Contact</h1>
			<div class="btn btn-md btn-green">
				<span><a href="<c:url value="/contacts" />">&#9664 Return to contacts</a></span>
			</div>
			<br />
			
			<div>
				<div class="contact">
					<div class="contact-container">
						<img src="<c:url value="${contact.imgUrl}" />" />
					</div>
					<div class="contact-container">
						<div class="contact-name">
							<h3><c:out value="${contact.firstName} ${contact.lastName}" /></h3>
						</div>
						<div class="contact-info">
							<div><c:out value="${contact.email}" /></div>
							<div><c:out value="${contact.phone}" /></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</htm>