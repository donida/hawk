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

<!--                 <li><a href="portfolio.html" class="borange"> <i class="icon-tasks"></i> Config</a> -->
                <li><a href="#" rel="ddsubmenu3" class="borange"> <i class="icon-tasks"></i> Config</a>
                	<!-- Sub navigation -->
	                 <ul id="ddsubmenu3" class="ddsubmenustyle">
	                    <li><a href="#" id="userMenu">Usu�rios</a></li>
	                  </ul>
                </li>   

                <li><a href="<c:url value="/j_spring_security_logout" />" class="bblue"> <i class="icon-circle-arrow-right"></i> Sair</a></li>

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
