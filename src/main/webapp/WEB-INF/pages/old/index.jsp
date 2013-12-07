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
  <c:import url="tmpl/stylesheets.jsp"/>
</head>

<body>

  <!-- Sliding panel starts-->

  <div class="slidepanel">
    <div class="container">
      <div class="row">
        <div class="span8">
          <div class="spara"> 
            <!-- Contact details -->
            <p><i class="icon-envelope-alt lightblue"></i> contato@sonitec.com.br &nbsp; 
              <i class="icon-phone lightblue"></i> (48) 3029-0099 &nbsp; 
			  <i class="icon-phone lightblue"></i> (48) 3037-0099
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

  <!-- Sliding panel ends-->

  <!-- Header starts -->

  <header>
    <div class="container">
      <div class="row">

        <div class="span4">

          <!-- Logo starts -->

          <div class="logo">

            <div class="logo-image">
              <!-- Image link -->
              <a href="index.html"><i class="icon-desktop blue"></i></a>
            </div>
            
            <div class="logo-text">
			<span class="blue">
              <h1><a href="index.html"><span class="blue"><strong>Sonitec</span></a></h1>
              <div class="logo-meta">Diagn�stico M�dico por Imagem</div>
			  <p><small><strong>Diretora T�cnica:</strong><i> Dra. Marcela Schaefer</i> -<strong> CRM 2936</strong></small></p>
			</span>
            </div>

            <div class="clearfix"></div>

          </div>

          <!-- Logo ends -->

        </div>

        <div class="span8">

          <!-- Navbar starts -->

          <div class="navi pull-right">
            <div id="ddtopmenubar" class="mattblackmenu">
              <!-- Main navigation -->
              <!-- Use the background color class in anchor tag for colorful menu -->
              <ul>

                <li><a href="login.html" class="blightblue"> <i class="icon-home"></i> Home</a></li>

                <!-- Main navigation -->
                <li><a href="#" rel="ddsubmenu2" class="bred"> <i class="icon-desktop"></i> Opera��o</a>
                    <!-- Sub Navigation -->
                    <ul id="ddsubmenu2" class="ddsubmenustyle">
                       <li><a href="#">Recursos Humanos</a>
                          <ul>
                            <li><a href="#">benef�cios</a>
								<ul>
									<li><a href="#">Alimenta��o & Refei��o</a></li>
									<li><a href="#">Unimed</a></li>
									<li><a href="#">Uniodonto</a></li>
									<li><a href="#">Vale Transporte</a></li>
								</ul>
							</li>
							<li><a href="#">Finan�as</a>
								<ul>
									<li><a href="#">Folha de Pagamento</a></li>
									<li><a href="#">Adiantamento Salarial</a></li>
									<li><a href="#">Reajuste PCCS</a></li>
								</ul>
							</li>
							<li><a href="#">Movimenta��o</a>
								<ul>
									<li><a href="#">Admiss�es</a></li>
									<li><a href="#">Atestados</a></li>
									<li><a href="#">Faltas</a></li>
									<li><a href="#">Avalia��o</a></li>
									<li><a href="#">Ficha Cadastral</a></li>
									<li><a href="#">Desligamentos</a></li>
									<li><a href="#">F�rias</a></li>	
								</ul>
							</li>
							<li><a href="#">Controles</a>
								<ul>
									<li><a href="#">Telefones</a></li>
									<li><a href="#">Uniformes</a></li>
									<li><a href="#">EPI</a></li>
								</ul>
							</li>
                          </ul>
                       </li>
						<li><a href="#">Operacional</a>
							<ul>
								<li><a href="#">Quantidades & Metas</a>
									<ul>
										<li><a href="#">Resson�ncia</a></li>
										<li><a href="#">Resson�ncia de Extremidades</a></li>
										<li><a href="#">Tomografia</a></li>
										<li><a href="#">Densitometria �ssea</a></li>
										<li><a href="#">Mamografia</a></li>
										<li><a href="#">Ultrassonografia</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="#">Financeiro</a>
						
						</li>
                    </ul>
                </li>

                <!-- Main navigation -->
                <li><a href="#" rel="ddsubmenu2" class="bgreen"> <i class="icon-time"></i> Gest�o</a>
                    <!-- Sub Navigation -->
                    <ul id="ddsubmenu2" class="ddsubmenustyle">
                       <li><a href="404.html">404</a></li>
                       <li><a href="testimonials.html">Testimonials</a></li>
                       <li><a href="clients.html">Clients</a></li>
                       <li><a href="pricingtable.html">Pricing Table</a></li>
                       <li><a href="projects.html">Projects</a></li>
                       <li><a href="register.html">Register</a></li>
                       <li><a href="login.html">Login</a></li>
                       <li><a href="events.html">Events</a></li>
                    </ul>
                </li>                

               <li><a href="#" rel="ddsubmenu2" class="bviolet"> <i class="icon-comments"></i> Blog</a>
                  <!-- Sub navigation -->
                 <ul id="ddsubmenu2" class="ddsubmenustyle">
                    <li><a href="blog2.html">Blog #1</a></li>
                    <li><a href="blog1.html">Blog #2</a></li>
                    <li><a href="blogsingle.html">Blog Single</a></li>
                  </ul>
                </li>

                <li><a href="portfolio.html" class="borange"> <i class="icon-tasks"></i> Config</a></li>   

                <li><a href="login.html" class="bblue"> <i class="icon-circle-arrow-right"></i> Sair</a></li>

              </ul>
            </div>
          </div>

          <div class="navis"></div>

          <!-- Navbar ends -->

          <div class="clearfix"></div>

        </div>

      </div>
    </div>
  </header>

  <div class="clearfix"></div>

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
                                             <small>Voc� n�o possui acesso? Informe ao  <a href="register.html" class="orange"><i>  Adm. do sistema</a></small>
                                    </div> 
                                  </div>

                </div>
              </div>
            </div>  

    </div>
  </div>
  <!-- Content ends -->

<!-- Footer -->

<footer>
  <div class="container">
    <div class="row">
      <div class="span12" align="center">
          <div class="copy">
                <p><small>Copyright &copy; <a href="#">Revolua IT Services - 2013</a></small></p>
          </div>
      </div>
    </div>
  <div class="clearfix"></div>
  </div>
</footer> 

<!-- JS -->
<script src="js/jquery.js"></script> <!-- jQuery -->
<script src="js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->
<script src="js/jquery.isotope.js"></script> <!-- isotope -->
<script src="js/ddlevelsmenu.js"></script> <!-- Navigation menu -->
<script src="js/jquery.cslider.js"></script> <!-- jQuery cSlider -->
<script src="js/modernizr.custom.28468.js"></script> <!-- Extra script for cslider -->

<script src="js/filter.js"></script> <!-- Support -->
<script src="js/custom.js"></script> <!-- Custom JS -->
</body>
</html>