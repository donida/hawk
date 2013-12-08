<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="pt_BR">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>Clinica Médica</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="author" content="">
  <!-- import stylesheets page templete -->
  <c:import url="tmpl/home/stylesheets.jsp"/>
</head>

<body>
  <!-- JQuery Templates -->
  <c:import url="tmpl/jquery/form_header.jsp"/>
  <c:import url="tmpl/jquery/indicators_form_content_tmpl.jsp"/>
  <c:import url="tmpl/jquery/user_list_form_tmpl.jsp"/>

  <!-- Sliding panel starts-->
  <c:import url="tmpl/home/slidepanel_contactus.jsp"/>
  <!-- Sliding panel ends-->

  <!-- Header starts -->
  <c:import url="tmpl/home/header_menu.jsp"/>
  <!-- Header ends -->

  <!-- Page heading -->
  <!-- Give background color class on below line (bred, bgreen, borange, bviolet, blightblue, bblue) -->
  <div id="form-header-container"></div>
  <!-- Page heading ends -->

  <!-- Content starts -->
   <div id="form-content-container"></div>
  <!-- Content ends -->

<!-- Footer -->
<c:import url="tmpl/home/footer.jsp"/>
<!-- JS -->
<c:import url="tmpl/home/import_js.jsp"/>
<!-- Page JS -->
<script type="text/javascript">
$(function() {
    var pageHeader = {
            title: 'Indicadores',
            description: 'Indicadores Estratégicos Gerais do Sistema'
        };
    $("#form-header-container").loadTemplate("#form-header-tmpl", pageHeader);
    var pageContents = {
    		//TODO Montar o template e buscar o JSON do servidor
    };
    //TODO criar funcao ajax para buscar e popular os indicadores...
    $("#form-content-container").loadTemplate("#indicators-form-content-tmpl", pageContents);
    $("#userMenu").on("click", function() {
    	var loadUserForm = function(response, status, xhr) {
    	    $("#form-header-container").loadTemplate("#form-header-tmpl", response.formHeader);
    	    $("#form-content-container").loadTemplate("#user-list-form-tmpl", response.formContent);
    	};
    	var loadUserFormFail = function (response, status, xhr) {
    		var jsonString = response.responseText;
            var responseJson = $.parseJSON( jsonString );
    		$.showMessage(responseJson);
    	};
    	$.postJSON('application/user/list', null, loadUserForm).fail(loadUserFormFail);
    });
});
</script>
</body>
</html>