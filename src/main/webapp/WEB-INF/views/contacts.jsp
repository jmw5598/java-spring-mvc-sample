<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>

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
                            <li class="active">
                                <a href="<c:url value="/contacts" />">
                                    <spring:message code="button.view" /><span class="sr-only">(current)</span>
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
        <div class="container-fluid">
            <div class="row">
                <c:forEach items="${contacts}" var="contact">
                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
                    <div class="panel panel-success panel-default-hover">
                        <div class="panel-body">
                            <ul class="contact-list">
                                <li>
                                    <img src="<c:url value="${contact.imgUrl}" />" />
                                    <h3 class="title"><c:out value="${contact.firstName} ${contact.lastName}" /></h3>
                                <li>
                                <!--
                                    <li>dwhite5598@gmail.com</li>
                                    <li>248-321-3213</li>
                                -->
                            </ul>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>