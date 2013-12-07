<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<h3><spring:message code="hawk.application.title"/></h3>
	<br/>
	<a href="user/list">List Users</a>
	<br/>
	<a href="<c:url value="/j_spring_security_logout" />" > Logout</a>
	<br/>
	 <a href="?lang=en">en</a> | <a href="?lang=pt_BR">pt br</a> | <a href="?lang=es">es</a>
</body>
</html>
