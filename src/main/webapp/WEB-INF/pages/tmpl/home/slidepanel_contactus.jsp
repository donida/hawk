<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <div class="slidepanel">
    <div class="container">
      <div class="row">
        <div class="span8">
          <div class="spara"> 
            <!-- Contact details -->
            <p><i class="icon-envelope-alt lightblue"></i> <spring:message code="frontend.login.mailto"/> &nbsp; 
              <i class="icon-phone lightblue"></i> <spring:message code="frontend.login.phone"/> &nbsp; 
			  <i class="icon-phone lightblue"></i> <spring:message code="frontend.login.cellphone"/>
            </p>
          </div>
        </div>
        <div class="span4">
            <div class="social">
              <!-- Social media icons. Repalce # with your profile links -->
                      <a href="#" class="bblue"><i class="icon-facebook"></i></a>
					  <a href="#" class="bviolet"><i class="icon-linkedin"></i></a>
                      <a href="#" class="borange"><i class="icon-rss"></i></a>
					  <!-- <a href="#" class="borange"><i class="icon-google-plus"></i></a> 
                      <a href="#" class="blightblue"><i class="icon-twitter"></i></a>
                      <a href="#" class="bred"><i class="icon-pinterest"></i></a>  -->
            </div>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
