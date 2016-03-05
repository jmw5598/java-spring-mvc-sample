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
			<div class="btn btn-sm btn-green btns-horizontal">
				<span><a href="<c:url value="/home" />">Return home</a></span>
			</div>
			<div class="btn btn-sm btn-blue btns-horizontal">
				<span><a href="<c:url value="/contacts" />">View contacts</a></span>
			</div>
			<div class="btn btn-sm btn-purple btns-horizontal">
				<span><a href="<c:url value="/contacts/add_form" />">Add contact</a></span>
			</div>
			
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