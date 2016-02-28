<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
	<head>
		<title>Contacts App : Contacts</title>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css" />" />
	</head>
	<body>
		<div class="container">
			<h1>Contacts</h1>
			<div class="btn btn-md btn-blue">
				<span><a href="<c:url value="/home" />">&#9664 Return home</a></span>
			</div>
			<br/>
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