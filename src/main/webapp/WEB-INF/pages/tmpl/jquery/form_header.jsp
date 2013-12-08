<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Template -->
<!-- model:  {title: "Page Title"; description: "Page Description"} -->
<script type="text/html" id="form-header-tmpl">
  <div class="page-heading blightblue">
    <div class="container">
      <div class="row">
        <div class="span12">
          <h2 class="pull-left" data-content-append="title"><i class="icon-arrow-right title-icon"></i> </h2>
          <div class="pull-right heading-meta"><span class="lightblue"><div data-content="description"></div></span></div>
        </div>
      </div>
    </div>
  </div>
</script>
