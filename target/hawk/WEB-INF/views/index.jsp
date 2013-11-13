<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
	<body>
		<h3>Index - Hello World</h3>
		<br/>
		<form action="login" method="POST">
			Email:<br/>
			<input type="text" name="email" id="email"/>
			<br/>
			<form:errors path="user.email" cssStyle="color:red"/>
			<br/>
			Password:
			<br/>
			<input type="password" name="password" id="password"/>
			<br/>
			<form:errors path="user.password" cssStyle="color:red"/>
			<br/>
			<input type="submit" value="Login"></input>
		</form>
	</body>
</html>