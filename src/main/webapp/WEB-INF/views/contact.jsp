<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>

<html>
	<head>
        <title>Contacts Application</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="<c:url value="/resources/bootstrap.min.css" />" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/bootstrap-theme-alt.min.css" />" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css" />
    </head>
    <body>
    	
    	<!-- INCLUDE NAVIGATION -->
        <%@include file="/WEB-INF/views/fragments/nav.jspf" %>
		
		<div class="container-fluid">
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