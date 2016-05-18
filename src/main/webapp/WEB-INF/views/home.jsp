<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
<html>
	<head>
		<title>Contacts App : Home</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css" />" />
	</head>
	<body>
		${locale}
		<div class="container">
			<h1><spring:message code="message.welcome" /></h1>
			<div class="language">
				<a href="<c:url value="/logout" />"><spring:message code="button.logout" /></a> || 
				<spring:message code="label.language" />: <a href="/?language=en">English</a> | <a href="/?language=es">Spanish</a>
			</div>
			<div class="btn btn-sm btn-green btns-horizontal">
				<span>
					<a href="<c:url value="/contacts" />">
						<spring:message code="button.viewContacts" />
					</a>
				</span>
			</div>
			<div class="btn btn-sm btn-blue btns-horizontal">
				<span>
					<a href="<c:url value="/contacts/add_form" />">
						<spring:message code="button.addContact" />
					</a>
				</span>
			</div>
		</div>
	</body>
</html>