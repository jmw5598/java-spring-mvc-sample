<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>

<html>
	<head>
		<title>Contacts App : Add Contact</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css" />" />
	</head>
	<body>
		<div class="container">
			<h1><spring:message code="header.newContact" /></h1>
			<div class="language">
				<spring:message code="label.language" />: <a href="<c:url value="/contacts/add_form?language=en" />">English</a> | <a href="<c:url value="/contacts/add_form?language=es" />">Spanish</a>
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
			<div class="container-quarter">
				<div class="contact">
					<div class="contact-container">
						<form action="<c:url value="/contacts/add" />" method="POST">
							<div class="error-container hide <c:if test="${not empty errors}"><c:out value="show" /></c:if>">
								<c:forEach items="${errors}" var="error">
									<span class="error-msg exclam"><c:out value="${error.defaultMessage}" /></span>
								</c:forEach>
							</div>
							<input type="text" placeholder="<spring:message code="placeholder.firstName" />" name="firstName" value="<c:out value="${contact.firstName}" />" />
							<input type="text" placeholder="<spring:message code="placeholder.lastName" />" name="lastName" value="<c:out value="${contact.lastName}" />" />
							<input type="text" placeholder="<spring:message code="placeholder.phone" />" name="phone" value="<c:out value="${contact.phone}" />" />
							<input type="text" placeholder="<spring:message code="placeholder.email" />" name="email" value="<c:out value="${contact.email}" />" />
							<input type="hidden" name="imgUrl" value="/resources/img/default.png" />
							<input class="btn btn-purple" type="submit" value="Add contact" />
						</form>
					</div>
				</div>
			</div>			
	</body>	
</html>