<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>

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