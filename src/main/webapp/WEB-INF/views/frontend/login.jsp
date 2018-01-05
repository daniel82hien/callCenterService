<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%@ include file="_partial/header.jsp" %>
<section data-target="home">
        <div class="static-banner">
            <h1>
                Welcome to Company
            </h1>
            <div class="login">
                <h1>
                    <small>Please sign in !</small>
                </h1>                
                <form id="customerForm" name="customerForm" method="POST" modelAttribute="customerForm" action="${contextPath}/join" class="smart-form" novalidate="novalidate">
                	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>                
                        <div class="row" >
                            <section class="col col-12" style="float: none">
                                <label class="input">
                                    <i class="icon-prepend fa fa-phone"></i>
                                    <input type="tel" name="phone" id="phone" placeholder="Phone" data-mask="(999) 999-9999" />                                    
                                </label>
                            </section>
                        </div>
                        <div class="row" style="padding-top: 10px">
                            <section class="col col-12 form-group" style="float: none">
                            	<div class="input">
                                    <i class="icon-prepend fa fa-envelope-o"></i>                                    
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" data-error="Please enter a correct email address">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </section>
                        </div>
                        <div class="row ${error != null ? '' : 'hide'}" style="padding-top: 10px">
                            <section class="col col-12 form-group" style="float: none">
                            	<div class="alert alert-danger form-group">
                                    ${error}
                                </div>
                            </section>
                        </div>
                        <div class="row">
                            <input type="submit" style="width: 80px; height: 30px; margin: 12px" class="btn btn-primary" value="LOGIN" />
                        </div>
                        <div class="row" style="float: right">
                            <section class="col col-12" style="padding-top: 5px; padding-left: 40px; margin-bottom: 15px">
                                <u>Open virtual keyboard</u>
                                <i style="font-size: 30px; padding-left: 6px" class="fa fa-keyboard-o"></i>
                            </section>
                        </div>
                </form>
            </div>
        </div>
    </section>
<script type="text/javascript">
$(document).ready(function() {
			var errorClass = 'invalid';
			var errorElement = 'em';
	var $checkoutForm = $('#customerForm').validate({
		errorClass		: errorClass,
		errorElement	: errorElement,
		highlight: function(element) {
	        $(element).parent().removeClass('state-success').addClass("state-error");
	        $(element).removeClass('valid');
	    },
	    unhighlight: function(element) {
	        $(element).parent().removeClass("state-error").addClass('state-success');
	        $(element).addClass('valid');
	    },
		// Rules for form validation
		rules : {			
			email : {				
				email : true
			}
		},
		// Messages for form validation
		messages : {			
			email : {				
				email : 'Please enter a VALID email address'
			}
		},
		// Do not change code below
		errorPlacement : function(error, element) {
			error.insertAfter(element.parent());
		}
	});
});
</script>		
<%@ include file="_partial/footer.jsp" %>    
