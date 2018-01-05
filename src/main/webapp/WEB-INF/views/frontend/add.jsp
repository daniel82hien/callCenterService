<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%@ include file="_partial/header.jsp" %>

<section>
        <div class="static-banner">
            <h1>New Member Registration !
            </h1>
            <div class="container">
                <h1>
                    <small>Please become a member of our Loyalty program for promotions, birthday gift, etc.</small>
                </h1>
                <form id="customerForm" name="customerForm" method="POST" modelAttribute="customerForm" action="${contextPath}/add" class="smart-form" novalidate="novalidate">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>                
                    <div class="row">
                        <section class="col col-12" style="float: none">
                            <label class="input">
                                <i class="icon-prepend fa fa-user"></i>
                                <input type="text" name="name" placeholder="Name">
                            </label>
                        </section>
                    </div>
                    <div class="row">
                        
                            
                                
								
								<section class="col col-6">
										<label class="select">
											<select name="month">
												<option disabled="" selected="" value="0">Month</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="3">4</option>
												<option value="3">5</option>
												<option value="3">6</option>
												<option value="3">7</option>
												<option value="3">8</option>
												<option value="3">9</option>
												<option value="3">10</option>
												<option value="3">11</option>
												<option value="3">12</option>
											</select> <i></i> </label>
									</section>
								<section class="col col-6">
										<label class="select">
											<select name="year">
												<option disabled="" selected="" value="0">Year</option>
												<% for(int i = 2018; i > 1950; i-=1) { %>
													<option value="<%=i%>"><%=i%></option> 													
												<% } %>												
											</select> <i></i> </label>
									</section>
                                
                            
                        
                    </div>
                    <div class="row">
                        <section class="col col-12" style="float: none">
                            <label class="input">
                                <i class="icon-prepend fa fa-phone"></i>
                                <input type="tel" name="phone" id="phone" placeholder="Phone" data-mask="(999) 999-9999" />
                            </label>
                        </section>
                    </div>
                    <div class="row">
                        <section class="col col-12" style="float: none">
                            <label class="input">
                                <i class="icon-prepend fa fa-envelope-o"></i>
                                <input type="email" name="email" placeholder="E-mail" style="width: 100%">
                            </label>
                        </section>
                    </div>
                    <div class="row">
                        <section class="col col-12" style="float: none">
                            <label class="input">
                                <i class="icon-prepend fa fa-lock"></i>
                                <input type="password" name="password" placeholder="Password" id="password">
                                <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                            </label>
                        </section>
                    </div>
                    <div class="row">
                        <section class="col col-12" style="float: none">
                            <label class="input">
                                <i class="icon-prepend fa fa-lock"></i>
                                <input type="password" name="passwordConfirm" placeholder="Confirm password">
                                <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                            </label>
                        </section>
                    </div>
                    <div class="row">
                        <button style="width: 80px; height: 30px; margin-top: 10px" class="btn btn-primary" type="submit">REGISTER</button>
                    </div>
                     <div class="row" style="float: right">
                            <section class="col col-12" style="padding-top: 5px; padding-left: 40px; margin-bottom: 15px">
                                <u>Privacy Policy</u>                                
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