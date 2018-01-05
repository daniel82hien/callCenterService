<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%@ include file="_partial/header.jsp" %>

<section>
        <div class="static-banner">
            <h1>Welcome to  Haricot Inc.
            </h1>
            <div class="container">
                <h1>
                    <small>Welcome back <span style="color: blue; font-weight: 400">${sessionCustomer}</span> (<a href="${contextPath}/logout">Log Out</a>), Please select services !</small>
                </h1>
                <form action="" id="checkout-form" class="smart-form" novalidate="novalidate">
                    <div class="row">
                        <div class="col-sm-9 col-md-9">
                            <div class="row">
                             <div class="col-sm-6 col-md-4">
                                <div class="member">
                                    <img src="assets/images/service1.jpg" alt="">
                                    <div class="overlay-data">
                                        <div class="overlay-inner">
                                            <!-- !!!!!!! donot delete this extra div tag -->
                                            <div>
                                                <!-- donot delete this extra div tag -->
                                                <h4>Car Services
                                            <br>
                                                </h4>
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt.</p>
                                                <p class="social-icons"><a href="#" title=""><span class="fa  fa-check" style="font-size: 20px;"></span></a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="member">
                                    <img src="assets/images/service1.jpg" alt="">
                                    <div class="overlay-data">
                                        <div class="overlay-inner">
                                            <!-- !!!!!!! donot delete this extra div tag -->
                                            <div>
                                                <!-- donot delete this extra div tag -->
                                                <h4>Car Services
                                            <br>
                                                </h4>
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt.</p>
                                                <p class="social-icons"><a href="#" title=""><span class="fa  fa-check" style="font-size: 20px;"></span></a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="member">
                                    <img src="assets/images/service1.jpg" alt="">
                                    <div class="overlay-data">
                                        <div class="overlay-inner">
                                            <!-- !!!!!!! donot delete this extra div tag -->
                                            <div>
                                                <!-- donot delete this extra div tag -->
                                                <h4>Car Services
                                            <br>
                                                </h4>
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt.</p>
                                                <p class="social-icons"><a href="#" title=""><span class="fa  fa-check" style="font-size: 20px;"></span></a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="member">
                                    <img src="assets/images/service1.jpg" alt="">
                                    <div class="overlay-data">
                                        <div class="overlay-inner">
                                            <!-- !!!!!!! donot delete this extra div tag -->
                                            <div>
                                                <!-- donot delete this extra div tag -->
                                                <h4>Car Services
                                            <br>
                                                </h4>
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt.</p>
                                                <p class="social-icons"><a href="#" title=""><span class="fa  fa-check" style="font-size: 20px;"></span></a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="member">
                                    <img src="assets/images/service1.jpg" alt="">
                                    <div class="overlay-data">
                                        <div class="overlay-inner">
                                            <!-- !!!!!!! donot delete this extra div tag -->
                                            <div>
                                                <!-- donot delete this extra div tag -->
                                                <h4>Car Services
                                            <br>
                                                </h4>
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt.</p>
                                                <p class="social-icons"><a href="#" title=""><span class="fa  fa-check" style="font-size: 20px;"></span></a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="member">
                                    <img src="assets/images/service1.jpg" alt="">
                                    <div class="overlay-data">
                                        <div class="overlay-inner">
                                            <!-- !!!!!!! donot delete this extra div tag -->
                                            <div>
                                                <!-- donot delete this extra div tag -->
                                                <h4>Car Services
                                            <br>
                                                </h4>
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt.</p>
                                                <p class="social-icons"><a href="#" title=""><span class="fa  fa-check" style="font-size: 20px;"></span></a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                </div>
                            <div class="row" style ="padding-top:30px;padding-right:30px;">
                                <div class="col-md-4 control-label" style="text-align: right; padding-top: 6px;" for="select-1">Select Employee (Option) :&nbsp;&nbsp;&nbsp; </div>
                                <div class="col-md-8">
                                    <label class="select">
                                    <select id="select-1">
                                        <option>Mr Amsterdam</option>
                                        <option>Mr Atlanta</option>
                                        <option>Ms Baltimore</option>
                                        <option>Ms Boston</option>
                                        <option>Mr Buenos Aires</option>
                                        <option>MrCalgary</option>

                                    </select><i></i>
</label>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-md-3">
                            <div class="yourselect">
                                <h4><u>Your Selection:</u></h4>
                                <br />
                                <small>Catagory:
                                    <img src="assets/images/service1.jpg" alt="">
                                    Car Services
                                </small>
                                <br />
                                <br />
                                <small>Employee:
                                    <img src="assets/images/employee.jpg" alt="">
                                    Mr Atlanta
                                </small>

                                <div class="row">
                                    <button style="width: 80px; height: 30px; margin-top: 10px" class="btn btn-info btn-lg">CLEAR</button>&nbsp;&nbsp;&nbsp;
                                    <button style="width: 80px; height: 30px; margin-top: 10px" class="btn btn-primary btn-lg">OK</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
<%@ include file="_partial/footer.jsp" %>