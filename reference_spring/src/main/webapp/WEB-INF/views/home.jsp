<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/include.jsp"%>
<%@ page session="true" %>
<html>
<head>
<title>welcome</title>
</head>
<body>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="jb-cell" style="text-align: center">
            <jsp:include page="./layout/header.jsp" flush="false" />
          </div>
        </div>
      </div>
     
     <div class="row">
     	<div class="col-md-12">
	     	<div class="jb-cell">
	     		<jsp:include page="./layout/body/${bodyContents}" flush="false" />
	     	</div>
     	</div>
     </div>
     
      <div class="row">
        <div class="col-md-12">
          <div class="jb-cell">
            <jsp:include page="./layout/footer.jsp" flush="false" />
          </div>
        </div>
      </div>
    </div>
	
</body>
<style>
.jb-cell {
  margin: 2px 0px;
  border: 1px solid #cccccc;
}
.row{
 	margin-left:-2px;
	margin-right:-2px;
	border: 1px solid #FF0000;
	padding-top:10px;
}
</style>
<script type="text/javascript">
requirejs(['jquery', 'bootstrap'], function($) {
	

	
});
</script>
</html>