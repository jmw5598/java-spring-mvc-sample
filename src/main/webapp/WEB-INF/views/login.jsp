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
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-8 col-md-6 col-lg-4 col-centered">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form action="${loginUrl}" method="POST">
                                <!-- DISPLAY ERRORS
                                    <c:forEach items="${errors}" var="error">
                                        <span class="error-msg exclam"><c:out value="${error.defaultMessage}" /></span>
                                    </c:forEach>
                                -->
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><spring:message code="placeholder.username" /></label>
                                    <input type="text" class="form-control" id="username" name="username" placeholder="<spring:message code="placeholder.username" />">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1"><spring:message code="placeholder.password" /></label>
                                    <input type="password" class="form-control" id="password" name="password" placeholder="<spring:message code="placeholder.password" />">
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <button type="submit" class="btn btn-primary"><spring:message code="button.login" /></button>
                                <div class="btn btn-info"><spring:message code="button.register" /></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>