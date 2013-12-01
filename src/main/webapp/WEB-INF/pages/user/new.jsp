<html>
<head> 
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
</head> 
<body>
	<h2>Create User</h2>
	<br/>
	<form id="frmCreate" action="create"> 
		<input type="text" name="username" id="username"/>
		<br/>
		<input type="text" name="password" id="password"/>
		<br/>
		<input type="hidden" name="enabled" id="enabled" value="true"/>
		<br/>
		<input type="button" id="create" name="create" value="Create"/>
	</form>
<script type="text/javascript"> 
$('#create').on('click', function(e) {  
		var user = {
			username : $('#username').val(),
			password : $('#password').val(),
			enabled : $('#enabled').val()
		};
		user = JSON.stringify(user);
		$.ajax({
                url : 'create',
                type : "post",
                contentType : "application/json",
                data : user,
                success : function (response, xhr, status) {
                    alert('success ' + response);
                },
                error : function (response, xhr, status) {
                	var jsonString = response.responseText;
                    alert('responseText = ' + jsonString);
                    var responseJson = jQuery.parseJSON( jsonString );
                    alert(responseJson.type);
                    alert(responseJson.title);
                    alert(responseJson.mainMessage);
                    alert(responseJson.messages);
                },
            }); 
	});  
</script>  
</body>
</html>