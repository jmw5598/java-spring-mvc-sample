<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>

<html>
	<head>
        <title>Contacts Application</title>
        <link href="<c:url value="/resources/bootstrap.min.css" />" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/bootstrap-theme-alt.min.css" />" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="container-fluid">
            <div class="navbar navbar-default navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a href="index.html" class="navbar-brand">Contact Book</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar-main">
                        <ul class="nav navbar-nav">
                            <li>
                            	<a href="<c:url value="/home" />">
                            		<spring:message code="button.home" />
                            	</a>
                            <li>
                                <a href="<c:url value="/contacts" />">
                                    <spring:message code="button.view" /></span>
                                </a>
                            </li>
                            <li>
                                <a href="<c:url value="/contacts/add_form" />">
                                    <spring:message code="button.add" />
                                </a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav pull-right">
                            <li class="active">
                            	<a href="<c:url value="/contacts?language=en" />">
                            		<spring:message code="label.language.english" />
                            	</a>
                            </li>
                            <li>
                            	<a href="<c:url value="/contacts?language=es" />">
                            		<spring:message code="label.language.spanish" />
                            	</a>
                            </li>
                            <li><a>||</a></li>
                            <li>
                                <a href="<c:url value="/logout" />">
                                    <spring:message code="button.logout" />
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
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