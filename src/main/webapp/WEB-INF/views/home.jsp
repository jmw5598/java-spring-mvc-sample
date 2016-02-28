<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
	<head>
		<title>Contacts App : Home</title>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css" />" />
	</head>
	<body>
		<div class="container">
			<h1>Home</h1>
			<div class="btn btn-md btn-green">
				<span><a href="<c:url value="/contacts" />">View contacts</a></span>
			</div>
		</div>
	</body>
</html>