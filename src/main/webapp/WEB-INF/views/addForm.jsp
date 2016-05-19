<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                <div class="col-xs-12 col-sm-8 col-md-6 col-lg-4 col-centered">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form action="<c:url value="/contacts/add" />" method="POST">
                                
                                <!-- ERRORS -->
                                <div class="alert alert-warning hide <c:if test="${not empty errors}"><c:out value="show" /></c:if>" role="alert">
                                	<h4>Errors!</h4>
                                    <c:forEach items="${errors}" var="error">
                                        <div><c:out value="${error.defaultMessage}" /></div>
                                    </c:forEach>
                                </div>
                                
                                <!-- NAME : FIRST & LAST -->
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="firstname"><spring:message code="placeholder.firstName" /></label>
                                        <input type="text" class="form-control" placeholder="<spring:message code="placeholder.firstName" />" name="firstName" value="<c:out value="${contact.firstName}" />" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="lastname"><spring:message code="placeholder.lastName" /></label>
                                        <input type="text" class="form-control" placeholder="<spring:message code="placeholder.lastName" />" name="lastName" value="<c:out value="${contact.lastName}" />" />
                                    </div>
                                </div>
                                
                                <!-- ADDRESS 
                                <div class="form-group">
                                    <label for="street">Street</label>
                                    <input type="text" class="form-control" id="street" name="street" placeholder="Street">
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-4">
                                        <label for="city">City</label>
                                        <input type="text" class="form-control" id="city" name="city" placeholder="City">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="state">State</label>
                                        <input type="text" class="form-control" id="state" name="state" placeholder="State">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="zip">Zip</label>
                                        <input type="number" class="form-control" id="zip" name="zip" placeholder="Zip">
                                    </div>
                                </div> -->
                                
                                <!-- CONTACT METHODS -->
                                <div class="form-group">
                                    <label for="exampleInputPassword1"><spring:message code="placeholder.phone" /></label>
                                    <input type="text" class="form-control" placeholder="<spring:message code="placeholder.phone" />" name="phone" value="<c:out value="${contact.phone}" />" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1"><spring:message code="placeholder.email" /></label>
                                    <input type="text" class="form-control" placeholder="<spring:message code="placeholder.email" />" name="email" value="<c:out value="${contact.email}" />" />
                                </div>
                                <input type="hidden" name="imgUrl" value="/resources/img/default.png" />
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <button type="submit" class="btn btn-primary">Add</button>
                                <div class="btn btn-info">Clear</div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>