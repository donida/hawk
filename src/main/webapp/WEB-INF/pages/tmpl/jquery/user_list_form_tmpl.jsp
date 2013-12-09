<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Template -->
<!-- model:   -->
<script type="text/html" id="user-list-form-tmpl">
   <div class="content">
    <div class="container">
      <div class="register">
        <div class="row">
          <div class="span12 formy borange">
            <div class="row">
              <div class="span10">
                <div class="control-group">
                  <label class="control-label" for="username">Usuário</label>
                  <div class="controls">
                    <input type="text" class="input-large" id="username">
                  </div>
                </div>
              </div>
              <div class="span2 pagination-centered">
                <div class="form-actions">
                   <!-- Buttons -->
                  <button type="button" class="btn-mini">Pesquisar</button>
                </div>
              </div>
            </div>
        </div>
        </div>
        <div class="row">
          <div class="span1">
          </div>
          <div class="span10 pagination-centered">
            <table id="listTable"></table>
            <div id="listPager"></div>
          </div>
          <div class="span1">
          </div>
        </div>
      </div>
    </div>
  </div>
</script>

