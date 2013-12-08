<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="js/jquery.js"></script> <!-- jQuery -->
<script src="js/jquery.loadTemplate-1.3.2.min.js"></script> <!-- jQuery Template -->
<script src="js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->
<script src="js/jquery.isotope.js"></script> <!-- isotope -->
<script src="js/ddlevelsmenu.js"></script> <!-- Navigation menu -->
<script src="js/jquery.cslider.js"></script> <!-- jQuery cSlider -->
<script src="js/modernizr.custom.28468.js"></script> <!-- Extra script for cslider -->

<script src="js/filter.js"></script> <!-- Support -->
<script src="js/custom.js"></script> <!-- Custom JS -->
<script type="text/javascript">
$.postJSON = function(url, data, callback) {
    return jQuery.ajax({
        'type': 'POST',
        'url': url,
        'contentType': 'application/json',
        'data': JSON.stringify(data),
        'dataType': 'json',
        'success': callback
    });
};
$.showMessage = function(responseJson) {
	alert(responseJson.title + ' ' + responseJson.mainMessage);
}
</script>