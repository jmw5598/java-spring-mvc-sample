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
        <div class="container-fluid">
            <div class="navbar navbar-default navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a href="index.html" class="navbar-brand">Contact Book</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar-main">
                        <ul class="nav navbar-nav">
                            <li class="active">
                            	<a href="<c:url value="/home" />">
                            		<spring:message code="button.home" /><span class="sr-only">(current)</span>
                            	</a>
                            <li>
                                <a href="<c:url value="/contacts" />">
                                    <spring:message code="button.view" />
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
                            	<a href="<c:url value="/?language=en" />">
                            		<spring:message code="label.language.english" />
                            	</a>
                            </li>
                            <li>
                            	<a href="<c:url value="/?language=es" />">
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
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-centered">
                    <h1 class="text-centered">
                        <spring:message code="message.welcome" />
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-centered">
                    <img class="img-centered" src="<c:url value="/resources/img/logo.png" />" />
                </div>
            </div>
        </div>
    </body>
</html>