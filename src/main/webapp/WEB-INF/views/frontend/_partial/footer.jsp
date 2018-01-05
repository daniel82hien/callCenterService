<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="footer-bottom">
        <p>Copyright 2018 - 2019 Friendly Teamwork</p>
    </div>

<script src="${contextPath}/resources/js/jquery.validate.min.js"></script>	
<script src="${contextPath}/resources/js/jquery.maskedinput.min.js"></script> 
<script src="${contextPath}/resources/js/app.config.js"></script>  
<script src="${contextPath}/resources/js/app.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {	
	pageSetUp();
});
</script>
</body>
</html>