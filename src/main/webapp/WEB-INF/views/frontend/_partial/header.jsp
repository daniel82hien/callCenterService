<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Call Center Service</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/hhsoft.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/login.css">

   <script src="${contextPath}/resources/js/jquery.min.js"></script>    
<script src="${contextPath}/resources/js/bootstrap.min.js"></script> 

</head>

<body>
    <div class="main-header">
        <div class="container">
            <nav class="navbar">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-logo" href="#" title="">
                        <img src="${contextPath}/resources/images/logo.png" alt="">
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="${contextPath}/home" title="">Home</a>
                        </li>
                        <li>
                            <a href="${contextPath}/service" title="">Services</a>
                        </li>
                        <li>
                            <a href="${contextPath}/appointment" title="">Appointment</a>
                        </li>
                        <li>
                            <a href="${contextPath}/award" title="">Awards</a>
                        </li>
                        <li>
                            <a href="${contextPath}/contact" title="">Contact</a>
                        </li>
                        <li class="dropdown" id="search-link">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                                <span class="fa fa-search"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <form class="form-inline">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search for...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button">
                                                <span class="fa fa-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>   