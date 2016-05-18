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
			<h1><spring:message code="message.welcome" /></h1>
			<div class="language">| 
				<spring:message code="label.language" />: <a href="<c:url value="/contacts/add_form?language=en" />">English</a> | <a href="<c:url value="/contacts/add_form?language=es" />">Spanish</a>
			</div>
			<h3><spring:message code="header.login" /></h3>
			<div class="container-quarter">
				<div class="contact">
					<div class="contact-container">
						<form action="${loginUrl}" method="POST">
							<div class="error-container hide <c:if test="${not empty errors}"><c:out value="show" /></c:if>">
								<c:forEach items="${errors}" var="error">
									<span class="error-msg exclam"><c:out value="${error.defaultMessage}" /></span>
								</c:forEach>
							</div>
							<input type="text" placeholder="<spring:message code="placeholder.firstName" />" id="username" name="username" value="<c:out value="${contact.firstName}" />" />
							<input type="password" placeholder="<spring:message code="placeholder.lastName" />" id="password" name="password" value="<c:out value="${contact.lastName}" />" />
							<input class="btn btn-purple" type="submit" value="<spring:message code="button.login" />" />
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						</form>
					</div>
				</div>
			</div>			
	</body>	
</html>