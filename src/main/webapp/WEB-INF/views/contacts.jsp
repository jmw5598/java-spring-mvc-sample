<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>

<html>
	<head>
		<title>Contacts App : Contacts</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css" />" />
	</head>
	<body>
		<div class="container">
			<h1><spring:message code="header.contacts" /></h1>
			<div class="language">
				<a href="<c:url value="/logout" />"><spring:message code="button.logout" /></a> || 
				<spring:message code="label.language" />: <a href="<c:url value="/contacts?language=en" />">English</a> | <a href="<c:url value="/contacts?language=es" />">Spanish</a>
			</div>
			<div class="btn btn-md btn-green btns-horizontal">
				<span>
					<a href="<c:url value="/home" />">
						<spring:message code="button.home" />
					</a>
				</span>
			</div>
			<div class="btn btn-md btn-blue btns-horizontal">
				<span>
					<a href="<c:url value="/contacts/add_form" />">
						<spring:message code="button.addContact" />
					</a>
				</span>
			</div>
			<div class="container-quarter">
				<c:forEach items="${contacts}" var="contact">
					<a href="<c:url value="contacts/" /><c:out value="${contact.id}" />">
						<div class="contact">
							<div class="contact-container">
								<img src="<c:url value="${contact.imgUrl}" />" />
							</div>
							<div class="contact-container">
								<div class="contact-name">
									<h3><c:out value="${contact.firstName} ${contact.lastName}" /></h3>
								</div>
							</div>
							<div class="contact-container float-right">
								&#9654
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
	</body>
</html>