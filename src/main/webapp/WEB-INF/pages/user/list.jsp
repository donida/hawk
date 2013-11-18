<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
	<b2>List Users</h2>
	<br/>
	<table>
		<tr>
			<th>Id</th>
			<th>User Name</th>
			<th>Is Enabled?</th>
			<th>Actions</th>
		</tr>
		<c:forEach var="user" items="${users}">
		<tr>
			<td>${user.id}</td>
			<td>${user.username}</td>
			<td>${user.enabled}</td>
			<td><a href="edit?id=${user.id}">Edit</a></td>
			<td><a href="delete?id=${user.id}">delete</a></td>
		</tr>
		</c:forEach>
	</table>
	<br/>
	<a href="new">new</a>
</body>
</html>