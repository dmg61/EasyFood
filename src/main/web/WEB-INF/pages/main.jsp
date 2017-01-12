<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>

<%--<html>--%>
<%--<head>--%>
<%--<meta charset="utf-8">--%>
<%--<title>Главная страница</title>--%>
<%--<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">--%>
<%--<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">--%>
<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<nav class="navbar navbar-inverse">--%>
<%--<div class="container-fluid">--%>
<%--<!-- Brand and toggle get grouped for better mobile display -->--%>
<%--<div class="navbar-header">--%>
<%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"--%>
<%--data-target="#bs-example-navbar-collapse-1" aria-expanded="false">--%>
<%--<span class="sr-only">Toggle navigation</span>--%>
<%--<span class="icon-bar"></span>--%>
<%--<span class="icon-bar"></span>--%>
<%--<span class="icon-bar"></span>--%>
<%--</button>--%>
<%--<a class="navbar-brand" href="/">Main</a>--%>
<%--</div>--%>

<%--<!-- Collect the nav links, forms, and other content for toggling -->--%>
<%--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">--%>
<%--<ul class="nav navbar-nav">--%>
<%--<li><a href="/student">Студенты</a></li>--%>
<%--<li><a href="/subject">Предметы</a></li>--%>
<%--<li><a href="/grade">Оценки</a></li>--%>
<%--</ul>--%>
<%--</div><!-- /.navbar-collapse -->--%>
<%--</div><!-- /.container-fluid -->--%>
<%--</nav>--%>
<%--<div class="container">--%>
<%--<div class="row">--%>
<%--<div class="span8 offset2">--%>
<%--<table class="table table-bordered table-striped">--%>
<%--<tbody>--%>
<%--<tr>--%>
<%--<th><a href="/student">Студенты</a></th>--%>
<%--<th><a href="/subject">Предметы</a></th>--%>
<%--<th><a href="/grade">Оценки</a></th>--%>
<%--</tr>--%>
<%--</tbody>--%>
<%--</table>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--&lt;%&ndash;<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>


<!DOCTYPE html>
<html lang="en" data-ng-app="orderApp">
<head>
    <meta charset="UTF-8">
    <title>Партия еды</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="/favicon.png" type="image/png"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,300italic,400italic,800&subset=latin,cyrillic'
          rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="/storage/old/css/oldsite.css">
    <link rel="stylesheet" href="/storage/old/css/mainpageheader.css">
    <!-- Google Tag Manager -->
    <noscript>
        <iframe src="//www.googletagmanager.com/ns.html?id=GTM-M8V9X7"
                height="0" width="0" style="display:none;visibility:hidden"></iframe>
    </noscript>
    <script>(function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
            'gtm.start': new Date().getTime(), event: 'gtm.js'
        });
        var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
        j.async = true;
        j.src =
                '//www.googletagmanager.com/gtm.js?id=' + i + dl;
        f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-M8V9X7');</script>
    <!-- End Google Tag Manager -->
    <script type="text/javascript">
        if (screen.width <= 780) {
            if (getCookie('user.key')) {
                window.location = "/account";
            } else {
                window.location = "/mobileindex";
            }
        }
        function getCookie(name) {
            var matches = document.cookie.match(new RegExp(
                    "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
            ));
            return matches ? decodeURIComponent(matches[1]) : undefined;
        }
    </script>
</head>
<body data-ng-controller="authController">
<header id="ha-header" class="ha-header ha-header-subshow">
    <div class="ha-header-primary">
        <nav class="navbar navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="/">Партия Еды</a></div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav hideOnLaptop" data-ng-controller="priceController">
                        <li class="navbar-text city">Ваш город:</li>
                        <li class="dropdown city-select" data-ng-init="cityOpen = false">
                            <a href="#" class="dropdown-toggle ancor"
                               data-ng-click="cityOpen ? cityOpen = false : cityOpen = true">
                                <span data-ng-bind="data.cityList[0] == 'spb' ? 'Санкт-Петербург' : 'Москва'"></span><span
                                    class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="#" ng-click="citySet('msk'); cityOpen = false"
                                       data-phone="+7 (495) 268-07-28">Москва</a>
                                </li>
                                <li>
                                    <a href="#" ng-click="citySet('spb'); cityOpen = false"
                                       data-phone="+7 (812) 309-94-09">Санкт-Петербург</a>
                                </li>
                            </ul>
                        </li>
                        <li class="navbar-text phone"
                            data-ng-bind="data.cityList[0] == 'spb' ? '+7 (812) 309-94-09':'+7 (495) 268-07-28'"></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="hidden-sm"><a href="/about">О компании</a></li>
                        <li>
                            <a href="/" ng-init="open = false" class="dropdown-toggle"
                               ng-click="open ? open = false : open = true">
                                <span class="glyphicon icon-menu"></span>В меню
                            </a>
                            <ul class="dropdown-menu" role="menu"
                                >
                                <li><a href="/week/#/classic">Классическое</a></li>
                                <li><a href="/week/#/vegetarian">Вегетарианское</a></li>
                                <li><a href="/week/#/premium">Премиум</a></li>
                                <li><a href="/week/#/home">Домашнее</a></li>
                            </ul>
                        </li>
                        <li class="hidden-sm"><a href="/how">Как это работает</a></li>
                        <li><a href="/contacts">Контакты</a></li>
                        <li><a href="/login" data-ng-bind="user.auth ? user.name + ' ' + user.surname : 'Вход'"></a>
                        </li>
                    </ul>
                </div>
                <div class="header-phonelogin" style="display: none;">
                    <div data-login>
                        <span data-info>Введите свой номер телефона,<br> чтобы мы смогли узнать вас:</span>
                        <input type="text" name="input_phone" placeholder="Телефон" data-mask="+7(999)999-99-99"
                               data-placeholder="_" class="login">
                        <button class="buttton_order buttton_order_v1">Получить код</button>
                        <span class="header-phonelogin__exit" data-firstlogin>
								Захожу впервые
							</span>
                    </div>
                    <div style="display: none;" data-sms>
                        <span>На ваш номер был выслан секретный код.<br>Введите его, чтобы войти:</span>
                        <input type="text" name="input_phonecod" placeholder="Код" data-mask="99999"
                               data-placeholder="_" class="sms">
                        <button class="buttton_order buttton_order_v1 sms">Готово</button>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</header>
<div style="position: absolute;top: 60px;" class="ha-waypoint" data-animate-down="ha-header-subshow"
     data-animate-up="ha-header-top"></div>
<div class="slide-1">
    <div class="content">
        <h1><span>Коробка</span> со свежими<br> продуктами и рецептами<br> на 5 ужинов</h1>
        <a class="btn btn-pe btn-lg btn-index btn-success" href="/week">Оформить заказ</a>
        <div style="margin-top: 27px;"><a href="/how">Как это работает</a></div>
    </div>
</div>
<div class="slide-2">
    <div class="container">
        <h2>Каждое воскресенье вы получаете коробку с продуктами и рецептами на 5 ужинов.<br> Все продукты свежие,
            охлажденные и точно расфасованы по дням недели.<br> Каждое блюдо готовится не дольше 30 минут. </h2>
        <div class="steps">
            <div class="step-1 col-md-4 text-center">
                <h3>Достаете ингредиенты<br> на сегодняшний день</h3>
                <img src="/storage/old/images/step-1.png" alt=""> <img class="rollup"
                                                                       src="/storage/old/images/step-1-rollup.png"
                                                                       alt="">
            </div>
            <div class="step-2 col-md-4 text-center">
                <h3>Готовите по фоторецепту</h3>
                <img src="/storage/old/images/step-2.png" alt=""> <img class="rollup"
                                                                       src="/storage/old/images/step-2-rollup.png"
                                                                       alt="">
            </div>
            <div class="step-3 col-md-4 text-center">
                <h3>Наслаждаетесь потрясающим ужином в кругу родных и друзей</h3>
                <img src="/storage/old/images/step-3.png" alt=""> <img class="rollup"
                                                                       src="/storage/old/images/step-3-rollup.png"
                                                                       alt="">
            </div>
        </div>
    </div>
</div>
<div class="slide-3">
    <div class="container">
        <h2 class="text-center">В меню на неделю c 16 по 22 января:</h2>
        <div class="help-block text-center">(<em>Доставка в воскресенье, 15 января, заказы принимаются до полуночи
            пятницы</em>)
        </div>
        <div class="menu-nav clearfix center-block text-center">
            <ul class="nav nav-tabs menus" role="tablist">
                <li class=" active"><a class="btn btn-pe btn-sm btn-success btn-main" href="#classic" role="tab"
                                       data-toggle="tab"><em>Классическая партия</em></a></li>
                <li class=""><a class="btn btn-pe btn-sm btn-success btn-home" href="#home" role="tab"
                                data-toggle="tab"><em>Домашняя партия</em></a></li>
                <li class=""><a class="btn btn-pe btn-sm btn-success btn-lite" href="#premium" role="tab"
                                data-toggle="tab"><em>Премиум партия</em></a></li>
                <li class=""><a class="btn btn-pe btn-sm btn-success btn-veg" href="#veg" role="tab"
                                data-toggle="tab"><em>Вегетарианская партия</em></a></li>
            </ul>
            <div class="btn-group btn-group-xs btn-group-pe" data-toggle="buttons" style="margin-left: 15px;">
                <label class="btn btn-primary active">
                    <input type="radio" name="dinners" id="dinners5" autocomplete="off" value="5" checked> 5 ужинов
                </label>
                <label class="btn btn-primary">
                    <input type="radio" name="dinners" id="dinners3" autocomplete="off" value="3"> 3 ужина
                </label>
            </div>
        </div>
        <div class="tab-content center-block" data-ng-controller="weekLoadController">
            <!-- CLASSIC -->
            <div class="tab-pane active" id="classic">
                <div id="w0" class="list-view">
                    <ul class="list-unstyled">
                        <li class="recipe {{$index == 1 ? 'active' : ''}}"
                            data-ng-repeat="value in week[2]['items']['Classic']">
                            <div class="te-wrapper" style="margin-bottom: 30px;">
                                <div class="te-images">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте2']}}"
                                         width="863" height="618">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте1']}}"
                                         width="863" height="618">
                                </div>
                                <div class="te-cover te-next">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте1']}}"
                                         width="863" height="618">
                                </div>
                                <style>
                                    .te-transition img {
                                        max-width: 863px !important;
                                    }
                                </style>
                                <div class="te-transition te-flip3">
                                    <div class="te-card">
                                        <div class="te-front"></div>
                                        <div class="te-back"></div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div id="w1" class="nav-days">
                    <ul class="list-inline menu-days pull-left">
                        <li class="active" data-ng-repeat="value in week[2]['items']['Classic']" ng-if="$index < 5">
                            <a class="" href="#">
                                <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте3']}}"
                                     width="122" alt=""><br/>
                                <span ng-if="$index == 0">День первый</span>
                                <span ng-if="$index == 1">День второй</span>
                                <span ng-if="$index == 2">День третий</span>
                                <span ng-if="$index == 3">День четвертый</span>
                                <span ng-if="$index == 4">День пятый</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="menu-link pull-right">
                    <a class="btn btn-success btn-lg btn-pe" href="/week/#/classic">Оформить заказ</a>
                </div>
            </div>
            <!-- HOME -->
            <div class="tab-pane" id="home">
                <div id="w3" class="list-view">
                    <ul class="list-unstyled">
                        <li class="recipe {{$index == 1 ? 'active' : ''}}"
                            data-ng-repeat="value in week[2]['items']['Home']">
                            <div class="te-wrapper" style="margin-bottom: 30px;">
                                <div class="te-images">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте2']}}"
                                         width="863" height="618">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте1']}}"
                                         width="863" height="618">
                                </div>
                                <div class="te-cover te-next">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте1']}}"
                                         width="863" height="618">
                                </div>
                                <div class="te-transition te-flip3">
                                    <div class="te-card">
                                        <div class="te-front"></div>
                                        <div class="te-back"></div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div id="w4" class="nav-days">
                    <ul class="list-inline menu-days pull-left">
                        <li class="active" data-ng-repeat="value in week[2]['items']['Home']" ng-if="$index < 5">
                            <a class="" href="#">
                                <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте3']}}"
                                     width="122" alt=""><br/>
                                <span ng-if="$index == 0">День первый</span>
                                <span ng-if="$index == 1">День второй</span>
                                <span ng-if="$index == 2">День третий</span>
                                <span ng-if="$index == 3">День четвертый</span>
                                <span ng-if="$index == 4">День пятый</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="menu-link pull-right">
                    <a class="btn btn-success btn-lg btn-pe" href="/week/#/home">Оформить заказ</a>
                </div>
            </div>
            <!-- Premium -->
            <div class="tab-pane" id="premium">
                <div id="w5" class="list-view">
                    <ul class="list-unstyled">
                        <li class="recipe {{$index == 1 ? 'active' : ''}}"
                            data-ng-repeat="value in week[2]['items']['Premium']">
                            <div class="te-wrapper" style="margin-bottom: 30px;">
                                <div class="te-images">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте2']}}"
                                         width="863" height="618">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте1']}}"
                                         width="863" height="618">
                                </div>
                                <div class="te-cover te-next">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте1']}}"
                                         width="863" height="618">
                                </div>
                                <div class="te-transition te-flip3">
                                    <div class="te-card">
                                        <div class="te-front"></div>
                                        <div class="te-back"></div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div id="w6" class="nav-days">
                    <ul class="list-inline menu-days pull-left">
                        <li class="active" data-ng-repeat="value in week[2]['items']['Premium']" ng-if="$index < 5">
                            <a class="" href="#">
                                <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте3']}}"
                                     width="122" alt=""><br/>
                                <span ng-if="$index == 0">День первый</span>
                                <span ng-if="$index == 1">День второй</span>
                                <span ng-if="$index == 2">День третий</span>
                                <span ng-if="$index == 3">День четвертый</span>
                                <span ng-if="$index == 4">День пятый</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="menu-link pull-right">
                    <a class="btn btn-success btn-lg btn-pe" href="/week/#/premium">Оформить заказ</a>
                </div>
            </div>
            <!-- VEG -->
            <div class="tab-pane" id="veg">
                <div id="w7" class="list-view">
                    <ul class="list-unstyled">
                        <li class="recipe {{$index == 1 ? 'active' : ''}}"
                            data-ng-repeat="value in week[2]['items']['Vegetarian']">
                            <div class="te-wrapper" style="margin-bottom: 30px;">
                                <div class="te-images">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте2']}}"
                                         width="863" height="618">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте1']}}"
                                         width="863" height="618">
                                </div>
                                <div class="te-cover te-next">
                                    <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте1']}}"
                                         width="863" height="618">
                                </div>
                                <div class="te-transition te-flip3">
                                    <div class="te-card">
                                        <div class="te-front"><img
                                                ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте1']}}"
                                                width="863" height="618"></div>
                                        <div class="te-back"><img
                                                ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте1']}}"
                                                width="863" height="618"></div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div id="w8" class="nav-days">
                    <ul class="list-inline menu-days pull-left">
                        <li class="active" data-ng-repeat="value in week[2]['items']['Vegetarian']" ng-if="$index < 5">
                            <a class="" href="#">
                                <img ng-src="https://partiyaedi.ru/storage/images/{{value['ПутьККартинкеНаСайте3']}}"
                                     width="122" alt=""><br/>
                                <span ng-if="$index == 0">День первый</span>
                                <span ng-if="$index == 1">День второй</span>
                                <span ng-if="$index == 2">День третий</span>
                                <span ng-if="$index == 3">День четвертый</span>
                                <span ng-if="$index == 4">День пятый</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="menu-link pull-right">
                    <a class="btn btn-success btn-lg btn-pe" href="/week/#/vegetarian">Оформить заказ</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="slide-4">
    <div class="container">
        <h2>Да, это действительно так удобно, как кажется!</h2>
        <ul class="list-inline row features">
            <li class="col-md-4">
                <div class="feature">
                    <img src="/storage/old/images/features-1.png" alt=""> <img class="features-shadow"
                                                                               src="/storage/old/images/features-shadow.png"
                                                                               alt="">
                </div>
                <h3>Не дороже, чем в магазине</h3>
                <p>Продукты «Партии еды» обойдутся не дороже, чем если покупать их в магазине. Зато «Партия еды»
                    подготовит, расфасует и доставит их прямо к вашей двери. Да еще и снабдит шикарными рецептами от
                    шеф-повара. Заманчивое предложение!</p>
            </li>
            <li class="col-md-4">
                <div class="feature">
                    <img src="/storage/old/images/features-2.png" alt=""> <img class="features-shadow"
                                                                               src="/storage/old/images/features-shadow.png"
                                                                               alt="">
                </div>
                <h3>Без использования заморозки</h3>
                <p>Фирменная технология CoolAround позволяет сохранить свежесть продуктов «Партии еды» без использования
                    заморозки (в том числе рыбы, мяса, молочных продуктов). Всю неделю вы будете готовить ужины из
                    свежих и полезных ингредиентов.</p>
            </li>
            <li class="col-md-4">
                <div class="feature">
                    <img src="/storage/old/images/features-3.png" alt=""> <img class="features-shadow"
                                                                               src="/storage/old/images/features-shadow.png"
                                                                               alt="">
                </div>
                <h3>Разнообразные рецепты</h3>
                <p>Каждую неделю новое меню от шеф-повара. Меню никогда не повторяется, включает как необычные, так и
                    традиционные блюда, составляется с учетом пожеланий клиентов. И точно стоит того, чтобы
                    попробовать. </p>
            </li>
        </ul>
        <ul class="list-inline row features">
            <li class="col-md-4">
                <div class="feature">
                    <img src="/storage/old/images/features-4.png" alt=""> <img class="features-shadow"
                                                                               src="/storage/old/images/features-shadow.png"
                                                                               alt="">
                </div>
                <h3>Проверенные поставщики</h3>
                <p>Заказы «Партии еды» размещаются напрямую у российских и зарубежных поставщиков — за полтора месяца до
                    доставки. Ингредиенты отбираются по утвержденным стандартам, скрупулезно тестируются. Все очень
                    строго.</p>
            </li>
            <li class="col-md-4">
                <div class="feature">
                    <img src="/storage/old/images/features-5.png" alt=""> <img class="features-shadow"
                                                                               src="/storage/old/images/features-shadow.png"
                                                                               alt="">
                </div>
                <h3>Меньше походов в магазин</h3>
                <p>«Партия еды» сделает «грязную» работу за вас: не нужно тратить выходные на походы в магазин, продукты
                    сами приедут к вашей двери. Вам остается только приготовить вкусный ужин — с любовью ♥ </p>
            </li>
            <li class="col-md-4">
                <div class="feature">
                    <img src="/storage/old/images/features-6.png" alt=""> <img class="features-shadow"
                                                                               src="/storage/old/images/features-shadow.png"
                                                                               alt="">
                </div>
                <h3>Сбалансированное питание</h3>
                <p>За каждым ярким рецептом «Партии еды» скрывается расчет калорий, белков, жиров и углеводов. Мы следим
                    за балансом внутри недели, избегая распространенных ошибок и перекосов в питании.</p>
            </li>
        </ul>
    </div>
</div>
<div class="slide-5">
    <div class="top-gradient"></div>
    <div class="social-baloon"></div>
    <div class="social-feedbacks">
        <img src="/storage/old/feedbacks/36.jpg" alt=""><img src="/storage/old/feedbacks/50.jpg" alt=""><img
            src="/storage/old/feedbacks/40.jpg" alt=""><img src="/storage/old/feedbacks/43.jpg" alt=""><img
            src="/storage/old/feedbacks/47.jpg" alt=""><img src="/storage/old/feedbacks/44.jpg" alt=""><img
            src="/storage/old/feedbacks/2.jpg" alt=""><img src="/storage/old/feedbacks/51.jpg" alt=""><img
            src="/storage/old/feedbacks/13.jpg" alt=""><img src="/storage/old/feedbacks/58.jpg" alt=""><img
            src="/storage/old/feedbacks/25.jpg" alt=""><img src="/storage/old/feedbacks/3.jpg" alt=""><img
            src="/storage/old/feedbacks/19.jpg" alt=""><img src="/storage/old/feedbacks/28.jpg" alt=""><img
            src="/storage/old/feedbacks/16.jpg" alt=""><img src="/storage/old/feedbacks/37.jpg" alt=""><img
            src="/storage/old/feedbacks/55.jpg" alt=""><img src="/storage/old/feedbacks/39.jpg" alt=""><img
            src="/storage/old/feedbacks/23.jpg" alt=""><img src="/storage/old/feedbacks/1.jpg" alt="">
    </div>
</div>
<div class="slide-6">
    <div class="container">
        <blockquote class="pull-left">
            <h2>Хватит ждать. Просто попробуйте!</h2>
            <p>Более 70% новых клиентов «Партии еды» делают повторный заказ. Из них 83% делают третий. Большинство
                становятся постоянными клиентами, заказывают каждую неделю.<br> <br>
                Потому что это удобно. И это вкусно! Тысячи людей в Москве и Петербурге каждое воскресенье с нетерпением
                ожидают доставку от «Партии еды». Их ждет потрясающая неделя. Пять уютных и теплых вечеров — пять
                ужинов, приготовленных ими с любовью. Присоединяйтесь к этой большой семье, мы вас очень ждем.<br> <br>
                Не бойтесь и не откладывайте — просто попробуйте!
            </p>
            <div class="gendir">
                <h5>Михаил Перегудов,
                    <small>основатель «Партии еды»</small>
                </h5>
            </div>
            <div class="text-center">
                <a class="btn btn-pe btn-success" href="/week/#/classic">Хочу попробовать</a>
            </div>
        </blockquote>
    </div>
</div>
<script type="text/javascript" src="https://vk.com/js/api/openapi.js?136"></script>
<div id="pre-footer">
    <div class="container-fluid" id="smi">
        <div class="container text-center">
            <h3>О нас уже написали:</h3>
            <img class="" src="/storage/old/images/smi/177x78/expert.png" width="177" height="78" alt=""> <img class=""
                                                                                                               src="/storage/old/images/smi/73x83/like.png"
                                                                                                               width="73"
                                                                                                               height="83"
                                                                                                               alt="">
            <img class="" src="/storage/old/images/smi/178x83/vedomosti.png" width="178" height="83" alt=""> <img
                class="" src="/storage/old/images/smi/115x83/rbk.png" width="115" height="83" alt=""> <img class=""
                                                                                                           src="/storage/old/images/smi/155x83/interfax.png"
                                                                                                           width="155"
                                                                                                           height="83"
                                                                                                           alt=""> <img
                class="" src="/storage/old/images/smi/134x83/village.png" width="134" height="83" alt="">
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="social-groups row">
                    <div class="col-md-6">
                        <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fpartiyaedi&tabs=timeline&width=450&height=336&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
                                width="450" height="336" style="border:none;overflow:hidden" scrolling="no"
                                frameborder="0" allowTransparency="true"></iframe>
                    </div>

                    <div class="col-md-6">
                        <!-- VK Widget -->
                        <div id="vk_groups"></div>
                        <script type="text/javascript">
                            VK.Widgets.Group("vk_groups", {mode: 4, width: "450", height: "336"}, 74367577);
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.min.js"></script>
<script src="/wp-content/themes/partiyaedi/js/libs.js"></script>
<script src="/wp-content/themes/partiyaedi/js/build.min.js"></script>

<section data-ng-app="orderApp" data-ng-controller="authController">
    <footer id="footer" class="container-fluid slide" data-ng-if="user.auth">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="contacts row">
                        <div class="col-md-4">
                            <div class="promocode">
                                <div>{{user.name}},<br> ваш личный код:</div>
                                <div class="code">{{user.promocode}}</div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="promocode-description">
                                <p>По этому коду ваши друзья получат скидку 500 рублей на первый заказ. Вы же получите
                                    от нас по 500 рублей за каждого приведенного друга.</p>
                                <h4>Опубликовать код:</h4>
                                <script type="text/javascript" src="https://yastatic.net/share/share.js"
                                        charset="utf-8"></script>
                                <div class="yashare-auto-init" data-yashareL10n="ru" data-yashareType="none"
                                     data-yashareQuickServices="vkontakte,facebook"
                                     data-yashareTitle="Промокод A8mEC на скидку 500 рублей"
                                     data-yashareDescription="Ваш код: A8mEC. Введите его и получите 500 руб. скидку на вашу первую «Партию еды». Действуйте!"
                                     data-yashareLink="https://partiyaedi.ru/"></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <h3>Контакты:</h3>
                            <ul class="list-unstyled">
                                <li>В Москве: +7 (495) 268-0728</li>
                                <li>В Санкт-Петербурге: +7 (812) 309-9409</li>
                                <li><a target="_blank" href="mailto:welcome@partiyaedi.ru">welcome@partiyaedi.ru</a>
                                </li>
                            </ul>
                            <ul class="list-unstyled letters">
                                <li><a target="_blank" href="mailto:m.peregudov@partiyaedi.ru"><img
                                        src="/storage/old/images/faces/35x35/peregudov_face.png" width="35" height="35"
                                        alt="">Написать основателю</a></li>
                                <li><a target="_blank" href="mailto:m.stepanov@partiyaedi.ru"><img
                                        src="/storage/old/images/faces/35x35/stepanov_face.png" width="35" height="35"
                                        alt="">Написать шеф-повару</a></li>
                            </ul>
                            <ul class="list-inline social-icons">
                                <li><a target="_blank" href="https://vk.com/partiyaedi"><span
                                        class="icon-vk"></span></a></li>
                                <li><a target="_blank" href="https://facebook.com/partiyaedi"><span
                                        class="icon-fb"></span></a></li>
                                <li><a target="_blank" href="http://odnoklassniki.ru/partiyaedi"><span
                                        class="icon-ok"></span></a></li>
                                <li><a target="_blank" href="http://instagram.com/partiya_edi"><span
                                        class="icon-ig"></span></a></li>
                                <li id="yellrank"><a target="_blank"
                                                     href="http://www.yell.ru/spb/com/partiya-edyi_11757295/">Написать
                                    отзыв на <strong>YELL</strong></a></li>
                            </ul>
                        </div>
                    </div>
                    <ul class="list-inline nav nav-pills">
                        <li><a href="/about">О компании</a></li>
                        <li><a href="/week">В меню</a></li>
                        <li><a href="/how">Как это работает</a></li>
                        <li><a href="/delivery">Доставка и оплата</a></li>
                        <li><a href="/faq">Вопросы и ответы</a></li>
                        <li><a href="/agreement">Условия обслуживания</a></li>
                        <li><a href="/coolaround"><img src="/storage/old/images/107x16/logo-ca-gray.png" width="100"
                                                       height="15" alt=""></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <footer id="footer" class="container-fluid slide" data-ng-if="!user.auth">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="contacts row">
                        <div class="col-md-3">
                            <img class="img-responsive" src="/storage/old/images/268x296/book.png" width="268"
                                 height="296" alt="" style="padding: 0 10px;">
                        </div>
                        <div class="col-md-3">
                            <form id="form-subscribe" action="http://partiyaedi.ru/customer/subscribe" method="post"
                                  enctype="multipart/form-data">
                                <h3>Книга в подарок</h3>
                                <p style="margin-bottom: 30px;">Подпишитесь и получите книгу с лучшими рецептами пасты
                                    от &laquo;Партии еды&raquo;</p>
                                <div class="form-group field-subscribeform-name required">
                                    <div>
                                        <input type="text" id="subscribeform-name" class="form-control"
                                               name="SubscribeForm[name]" placeholder="Ваше имя">
                                    </div>
                                </div>
                                <div class="form-group field-subscribeform-email required">
                                    <div>
                                        <input type="text" id="subscribeform-email" class="form-control"
                                               name="SubscribeForm[email]" placeholder="Эл. почта">
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <button type="submit" id="subscribe-button" class="btn-pe btn-success btn-block"
                                            data-loading-text="Подождите...">Подписаться
                                    </button>
                                </div>
                                <div class="success-overlay hide">Спасибо за подписку</div>
                            </form>
                        </div>
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-4">
                            <h3>Контакты:</h3>
                            <ul class="list-unstyled">
                                <li>В Москве: +7 (495) 268-0728</li>
                                <li>В Санкт-Петербурге: +7 (812) 309-9409</li>
                                <li><a target="_blank" href="mailto:welcome@partiyaedi.ru">welcome@partiyaedi.ru</a>
                                </li>
                            </ul>
                            <ul class="list-unstyled letters">
                                <li><a target="_blank" href="mailto:m.peregudov@partiyaedi.ru"><img
                                        src="/storage/old/images/faces/35x35/peregudov_face.png" width="35" height="35"
                                        alt="">Написать основателю</a></li>
                                <li><a target="_blank" href="mailto:m.stepanov@partiyaedi.ru"><img
                                        src="/storage/old/images/faces/35x35/stepanov_face.png" width="35" height="35"
                                        alt="">Написать шеф-повару</a></li>
                            </ul>
                            <ul class="list-inline social-icons">
                                <li><a target="_blank" href="https://vk.com/partiyaedi"><span
                                        class="icon-vk"></span></a></li>
                                <li><a target="_blank" href="https://facebook.com/partiyaedi"><span
                                        class="icon-fb"></span></a></li>
                                <li><a target="_blank" href="http://odnoklassniki.ru/partiyaedi"><span
                                        class="icon-ok"></span></a></li>
                                <li><a target="_blank" href="http://instagram.com/partiya_edi"><span
                                        class="icon-ig"></span></a></li>
                                <li id="yellrank"><a target="_blank"
                                                     href="http://www.yell.ru/spb/com/partiya-edyi_11757295/">Написать
                                    отзыв на <strong>YELL</strong></a></li>
                            </ul>
                        </div>
                    </div>
                    <ul class="list-inline nav nav-pills">
                        <li><a href="/about">О компании</a></li>
                        <li><a href="/week">В меню</a></li>
                        <li><a href="/how">Как это работает</a></li>
                        <li><a href="/delivery">Доставка и оплата</a></li>
                        <li><a href="/faq">Вопросы и ответы</a></li>
                        <li><a href="/agreement">Условия обслуживания</a></li>
                        <li><a href="/coolaround"><img src="/storage/old/images/107x16/logo-ca-gray.png" width="100"
                                                       height="15" alt=""></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</section>

</body>
<script src="/storage/old/js/oldsite.js"></script>
<script src="/storage/old/js/sidenav.js"></script>
</html>
<script src="/services/cache/week.js"></script>
<script src="/wp-content/themes/partiyaedi/js/weekLoadCtrl.js"></script>
<script src="https://api-maps.yandex.ru/2.0/?load=package.standard&amp;lang=ru-RU"></script>
</html>
