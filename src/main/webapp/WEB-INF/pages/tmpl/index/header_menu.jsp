<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <header>
    <div class="container">
      <div class="row">
        <div class="span4">
          <!-- Logo starts -->
          <div class="logo">
            <div class="logo-image">
              <!-- Image link -->
              <a href="login.html"><i class="icon-desktop blue"></i></a>
			  <!-- <img src="img/LogoSoni2.png" alt="Logomarca da empresa"> -->
            </div>
            <div class="logo-text">
			<span class="blue">
              <h1><a href="#"><span class="blue"><spring:message code="frontend.login.system.name"/></span></a></h1>
              <div class="logo-meta blue"><spring:message code="frontend.login.system.description"/></div>
			</span>
            </div>

            <div class="clearfix"></div>

          </div>

          <!-- Logo ends -->

        </div>
		
			<div class="span7 offset1">
				<form class="form-inline pull-right" style="padding-top: 30px" name='f' action="<c:url value='j_spring_security_check' />"
					method='POST'>
<!-- 				<form class="form-inline pull-right" style="padding-top: 30px" action="principal.html"> -->
					<c:if test="${not empty error}">
						<div class="errorblock">
							<!-- Your login attempt was not successful, try again.<br /> Caused :  -->
							${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
						</div>
					</c:if>				
					<div class="control-group">
						<div class="controls">
							<label class="control-label" for="j_username"><spring:message code="frontend.login.email.label"/> </label>
							<div class="input-prepend">
								<span class="add-on"><i class="icon-envelope blue"></i></span>
								<input class="span2" id="j_username" name="j_username" type="text">						
							</div>
							<label class="control-label" for="j_password"><spring:message code="frontend.login.password.label"/> </label>
							<div class="input-prepend">
								<span class="add-on"><i class="icon-key blue"></i></span>
								<input class="span2" id="j_password" name="j_password" type="password">
								<button type="submit" name="submit" id="submit" class="btn btn-primary"><spring:message code="frontend.login.submit"/></i></span></button>	
							</div>											
						</div>
						<!-- <i class="pull-right">Solicite acesso ao<a href="register.html" class="orange"> adm do sistema</a></i> -->
					</div>
				</form>
			</div>
       </div>
	</div>
  </header>
  <div class="clearfix"></div>
