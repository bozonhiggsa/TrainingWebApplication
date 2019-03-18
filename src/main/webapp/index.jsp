<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>

<c:set var="contextPath" value="${pageContext.servletContext.contextPath}"/>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Landing Page</title>
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/css/bootstrap.min.css">
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!--<link rel="stylesheet" href="css/font-awesome.min.css">-->
    <link rel="stylesheet" href="${contextPath}/css/animate.css">
    <link rel="stylesheet" href="${contextPath}/css/main.css">
</head>
<body>
        <header id="header" class="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <img src="${contextPath}/img/logo.png" alt="Logo" class="logo animated bounce">
                    </div>
                    <div class="col-lg-5">
                        <nav>
                            <ul class="menu d-flex justify-content-center animated rubberBand">
                                <li class="menu__item">
                                    <a href="#">Home</a>
                                </li>
                                <li class="menu__item">
                                    <a href="#">Features</a>
                                </li>
                                <li class="menu__item">
                                    <a href="#">Issues</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <c:if test="${empty user}">
                        <div class="col-lg-2">
                            <div class="login animated fadeInRight">
                                <a href="${contextPath}/login.jsp">Login</a>
                            </div>
                        </div>
                    </c:if>
                </div>

                <c:if test="${!empty user}">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>Hi ${user.name} ${user.surname}!</h2>
                        </div>
                    </div>
                </c:if>
                <c:if test="${empty user}">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>Hi guest!</h2>
                        </div>
                    </div>
                </c:if>

                <div class="row">
                    <div class="col-lg-6">
                        <div class="main">
                            <h3 class="main__title">
                                Common information
                            </h3>
                            <div class="main__intro">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, voluptates.
                            </div>
                            <p class="main__text">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam beatae commodi doloremque esse et id obcaecati, quia voluptatum. Consequatur distinctio fuga inventore laborum,
                                 porro recusandae reprehenderit sapiente. Commodi, dolore dolorem.
                            </p>
                            <div class="main__partners">
                                Our partners
                            </div>
                            <ul class="icons d-flex justify-content-left">
                                <li class="icons__item">
                                    <a href="#">
                                        <i class="fab fa-angellist"></i>
                                    </a>
                                </li>
                                <li class="icons__item">
                                    <a href="#">
                                        <i class="fab fa-envira"></i>
                                    </a>
                                </li>
                                <li class="icons__item">
                                    <a href="#">
                                        <i class="fab fa-java"></i>
                                    </a>
                                </li>
                                <li class="icons__item">
                                    <a href="#">
                                        <i class="fab fa-fort-awesome"></i>
                                    </a>
                                </li>
                                <li class="icons__item">
                                    <a href="#">
                                        <i class="fab fa-first-order"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="col-lg-6">
                        <img src="${contextPath}/img/community.png" alt="Community" class="community">
                    </div>
                </div>
            </div>
        </header>
        <section id="features" class="features">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="title">
                            <h2 class="title__main">
                                Essential features
                            </h2>
                            <p class="title__text">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci, beatae ducimus excepturi facilis laudantium quod repellat sint. Ad aliquid blanditiis dicta illo ipsum minima minus nam porro reiciendis repellat?
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="feature d-flex">
                            <div class="feature__icon">
                                <i class="fas fa-tablet-alt"></i>
                            </div>
                            <div class="feature__block">
                                <h3 class="feature__title">
                                    Feature name
                                </h3>
                                <p class="feature__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="feature d-flex">
                            <div class="feature__icon">
                                <i class="fab fa-wizards-of-the-coast"></i>
                            </div>
                            <div class="feature__block">
                                <h3 class="feature__title">
                                    Feature name
                                </h3>
                                <p class="feature__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="feature d-flex">
                            <div class="feature__icon">
                                <i class="fab fa-critical-role"></i>
                            </div>
                            <div class="feature__block">
                                <h3 class="feature__title">
                                    Feature name
                                </h3>
                                <p class="feature__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="feature d-flex">
                            <div class="feature__icon">
                                <i class="fas fa-user-astronaut"></i>
                            </div>
                            <div class="feature__block">
                                <h3 class="feature__title">
                                    Feature name
                                </h3>
                                <p class="feature__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="feature d-flex">
                            <div class="feature__icon">
                                <i class="fas fa-pepper-hot"></i>
                            </div>
                            <div class="feature__block">
                                <h3 class="feature__title">
                                    Feature name
                                </h3>
                                <p class="feature__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="feature d-flex">
                            <div class="feature__icon">
                                <i class="fas fa-id-card"></i>
                            </div>
                            <div class="feature__block">
                                <h3 class="feature__title">
                                    Feature name
                                </h3>
                                <p class="feature__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>

        <section id="feedback" class="feedback">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="feedback__field">
                            <h3 class="feedback__title">
                                Give your feedback
                            </h3>
                            <p class="feedback__text">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci, beatae ducimus excepturi facilis laudantium quod repellat sint. Ad aliquid blanditiis dicta illo ipsum minima minus nam porro reiciendis repellat?
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <form action="#" class="form">
                            <input type="email" placeholder="Enter your e-mail" class="form__input" required>
                            <button type="submit" class="form__btn">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <footer id="footer" class="footer">
            <div class="container">
                <div class="row text-center text-xs-center text-sm-left text-md-left">
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <h5>Quick links</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Videos</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <h5>Quick links</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Videos</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <h5>Quick links</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                            <li><a href="https://wwwe.sunlimetech.com" title="Design and developed by"><i class="fa fa-angle-double-right"></i>Imprint</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <h5>Quick links</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                            <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                            <li><a href="https://wwwe.sunlimetech.com" title="Design and developed by"><i class="fa fa-angle-double-right"></i>Imprint</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
                        <ul class="list-unstyled list-inline social text-center">
                            <li class="list-inline-item"><a href="javascript:void();"><i class="fab fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void();"><i class="fab fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void();"><i class="fab fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void();"><i class="fab fa-google-plus-g"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void();" target="_blank"><i class="fa fa-envelope"></i></a></li>
                        </ul>
                    </div>
                    </hr>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                        <p class="h6">&copy All right Reversed</p>
                    </div>
                    </hr>
                </div>
            </div>
        </footer>
        <!--<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>-->
        <script src="${contextPath}/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>