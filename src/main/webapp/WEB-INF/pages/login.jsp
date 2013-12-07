<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title><spring:message code="frontend.index.head.title"/></title>
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
  <c:import url="tmpl/index/header_menu.jsp"/>
  <!-- Header ends -->
   <!-- Slider starts -->
  <div class="parallax-slider">
          <!-- Slider (Parallax Slider) -->            
            <div id="da-slider" class="da-slider">
              <!-- Each slide should be enclosed inside "da-slide" class -->
              <!-- Slide starts -->
              <div class="da-slide">
                  <p class="bviolet">
                    <!-- Heading -->
                    <span class="das-head">Controles operacionais</span><br />
                    <!-- Para -->
                    Controle das principais atividades da empresa, divididas por centro de custos, através dos registros periódicos dos acontecimentos. Os registros podem ser inseridos manualmente ou importados (automatizado).
                    <br />
                    <!-- Link -->
                    <a class="das-link btn" href="404.html">Saiba mais <i class="icon-double-angle-right"></i></a>
                  </p>
                  <!-- Image -->
                  <div class="da-img"><img src="img/parallax/5.png" alt="image01" /></div>
              </div>
              <!-- Slide ends -->
              <div class="da-slide">

                  <p class="bblue">
                    <!-- Heading -->
                    <span class="das-head">Funcionalidades</span><br />
                    <!-- Para -->
                    Disponiveis, por exemplo, controles de movimentações e beneficios de colaboradores na área de Gestão de Pessoas - RH e controle de execução de procedimentos através da área de Gestão Operacional.
                    <br />
                    <a class="das-link btn">Saiba mais <i class="icon-double-angle-right"></i></a>
                  </p>
                  <!-- Image -->
                  <div class="da-img"><img src="img/parallax/6.png" alt="image01" /></div>

              </div>
              <div class="da-slide">

                  <p class="bgreen">
                    <!-- Heading -->
                    <span class="das-head">Nas Nuvens</span><br />
                    <!-- Para -->
                    Utiliza o sistema de hospedagem em nuvem - cloud, portanto, está acessível permanentemente, de qualquer local onde haja conexão com a Internet. Necessário apenas uma conta (login e senha) para usar o sistema.
                    <br />
                    <a class="das-link btn">Saiba mais <i class="icon-double-angle-right"></i></a>
                  </p>
                  <!-- Image -->
                  <div class="da-img"><img src="img/parallax/7.png" alt="image01" /></div>

              </div>
              <div class="da-slide">

                  <p class="bred">
                    <!-- Heading -->
                    <span class="das-head">Equipamentos & Acessos</span><br />
                    <!-- Para -->
                    Pode ser utilizado através de diversos equipamentos, tais como, microcomputadores - PC´s e notebooks, tablets, smartphones e máquinas de lavar roupa.
                    <br />
                    <a class="das-link btn">Saiba mais <i class="icon-double-angle-right"></i></a>
                  </p>
                  <!-- Image -->
                  <div class="da-img"><img src="img/parallax/8.png" alt="image01" /></div>

              </div>

              <nav class="da-arrows">
                <span class="da-arrows-prev"></span>
                <span class="da-arrows-next"></span>
              </nav>
            </div>
  </div>
<!-- Slider ends -->

<!-- Page heading -->
<!-- Give background color class on below line (bred, bgreen, borange, bviolet, blightblue, bblue) -->

<!-- Page heading ends -->

    <!-- Content starts -->
   <div class="content">
    <div class="container">

      <div class="register">
              <div class="row">
				<div class="span1">
				
				</div>
				
                <div class="span6">
                  <h3>Sistema de Informações Gerenciais</h3>
               <!--   <p class="big grey">Informações estratégicas de processos operacionais</p> -->
                  <p class="big grey">Controle de operações empresariais, tais como, movimentação de colaboradores, execução de procedimentos, movimentações financeiras, atendimentos entre outros.</p>
                </div>

                <div class="span4">
                <h3><strong>KPI´s & Dashboards</strong></h3>
                  <p class="big grey">Controles através de Indicadores Chaves de Performance - <strong>KPI´s</strong>, relatórios, gráficos e dashboards.</p> 
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