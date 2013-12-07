<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>Clinica M�dica</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="author" content="">

  <c:import url="tmpl/home/stylesheets.jsp"/>
</head>

<body>

  <!-- Sliding panel starts-->
  <c:import url="tmpl/home/slidepanel_contactus.jsp"/>
  <!-- Sliding panel ends-->

  <!-- Header starts -->
  <c:import url="tmpl/home/header_menu.jsp"/>
  <!-- Header ends -->

  <!-- Page heading -->
  <!-- Give background color class on below line (bred, bgreen, borange, bviolet, blightblue, bblue) -->
  <div class="page-heading blightblue">
    <div class="container">
      <div class="row">
        <div class="span12">
          <h2 class="pull-left"><i class="icon-arrow-right title-icon"></i> Login</h2>
          <div class="pull-right heading-meta"><span class="lightblue">P�gina de acesso ao sistema de informa��es</span></div>
        </div>
      </div>
    </div>
  </div>
  <!-- Page heading ends -->

  <!-- Content starts -->
   <div class="content">
    <div class="container">

      <div class="register">
              <div class="row">
				<div class="span1">
				
				</div>
				
                <div class="span6">
                  <h3>Sistema de Informa��es Gerenciais</h3>
                  <p class="big grey">Informa��es estrat�gicas de processos operacionais</p>
                  <p>Controle de opera��es empresariais, tais como, movimenta��o de colaboradores, execu��o de procedimentos, movimenta��es financeiras, atendimentos entre outros.</p>
				  <h4><strong>KPI�s & Dashboards</strong></h4>
                  <p>Controles atrav�s de Indicadores Chaves de Performance - <strong>KPI�s</strong>, relat�rios, gr�ficos e dashboards.</p>

                </div>

                <div class="span4">
                  <div class="formy bblue">
                     <h3>Acesse</h3>
                                  <div class="form">
                                      <!-- Login form (not working)-->
                                      <form class="form-horizontal">
                                          <!-- Username -->
                                          <div class="control-group">
                                            <label class="control-label" for="username">Usu�rio</label>
                                            <div class="controls">
                                              <input type="text" class="input-large" id="username">
                                            </div>
                                          </div>
                                          <!-- Password -->
                                          <div class="control-group">
                                            <label class="control-label" for="email">Senha</label>
                                            <div class="controls">
                                              <input type="password" class="input-large" id="password">
                                            </div>
                                          </div>                                                                             
                                          <!-- Buttons -->
                                          <div class="form-actions">
                                             <!-- Buttons -->
                                            <button type="submit" class="btn-mini">Entrar</button>
                                            <button type="reset" class="btn-mini">Limpar</button>
                                          </div>
                                      </form>
                                             <small>Voc� n�o possui acesso? Informe ao  <a href="register.html" class="orange"><i>  Adm. do sistema</i></a></small>
                                    </div> 
                                  </div>

                </div>
              </div>
            </div>  

    </div>
  </div>
  <!-- Content ends -->

<!-- Footer -->
<c:import url="tmpl/home/footer.jsp"/>
<!-- JS -->
<c:import url="tmpl/home/import_js.jsp"/>
</body>
</html>