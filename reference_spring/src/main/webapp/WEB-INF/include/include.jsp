<%@ page pageEncoding="utf-8" %>

<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- <script data-main="./resources/js/main" src="./resources/js/requirejs/require-jquery-2.1.4.js"></script> -->
<script type="text/javascript">
window.contextPath = '${pageContext.request.contextPath}';
window.socketioAddr = '54.187.209.26:1337';		//서버용
//window.socketioAddr = '192.168.219.100:1337';		//로컬용
</script>
<script src="${pageContext.request.contextPath}/resources/js/requirejs/require-jquery-2.1.4.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/requirejs/main.js"></script>



