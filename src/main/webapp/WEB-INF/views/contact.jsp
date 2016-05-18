<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>

<html>
	<head>
		<title>Contacts App : <c:out value="${contact.firstName}"/> <c:out value="${contact.lastName}" /></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css" />" />
	</head>
	<body>
		<div class="container">
			<h1><spring:message code="header.selectedContact" /></h1>
			<div class="language">
				<spring:message code="label.language" />: <a href="/?language=en">English</a> | <a href="/?language=es">Spanish</a>
			</div>
			<div class="btn btn-sm btn-green btns-horizontal">
				<span>
					<a href="<c:url value="/home" />">
						<spring:message code="button.home" />
					</a>
				</span>
			</div>
			<div class="btn btn-sm btn-blue btns-horizontal">
				<span>
					<a href="<c:url value="/contacts" />">
						<spring:message code="button.viewContacts" />
					</a>
				</span>
			</div>
			<div class="btn btn-sm btn-purple btns-horizontal">
				<span>
					<a href="<c:url value="/contacts/add_form" />">
						<spring:message code="button.addContact" />
					</a>
				</span>
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