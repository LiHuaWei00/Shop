<%--
  Created by IntelliJ IDEA.
  User: Huazi
  Date: 2017/10/17
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
    <title>Checkout</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Luxury Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" href="css/layer-animate.css"/>
    <script src="js/method.js"></script>
    <!--start-menu-->
    <script src="js/simpleCart.min.js"> </script>
    <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/memenu.js"></script>
    <script>$(document).ready(function(){$(".memenu").memenu();});</script>
    <!--dropdown-->
    <script src="js/jquery.easydropdown.js"></script>
    <style>
        ul.unit li {
            display: inline-block;
            width: 16%;
            float: left;
        }
        ul.cart-header li, ul.cart-header1 li, ul.cart-header2 li {
            display: inline-block;
            width: 16%;
            float: left;
        }
    </style>
</head>
<body>
<!--top-header-->
<div class="top-header">
    <div class="container">
        <div class="top-header-main">
            <div class="col-md-6 top-header-left">
                <div class="drop">
                    <div class="box1">

                        <c:if test="${empty username}">
                            <a tabindex="4" class="dropdown drop" href="login.jsp">登录/注册</a>
                        </c:if>
                        <c:if test="${not empty username}">
                            <a tabindex="4" class="dropdown drop">欢迎您：${username}</a>
                        </c:if>
                    </div>
                    <div class="box1">
                        <c:if test="${not empty username}">
                            <a tabindex="4" class="dropdown drop" id="signout_btn">注销登录</a>
                        </c:if>
                    </div>

                </div>
                <div class="clearfix"></div>
            </div>

            <div class="col-md-6 top-header-left">
                <div class="cart box_1">
                    <a href="checkout.jsp">
                        <div class="total">
                            <span class="">我的购物车</span></div>
                        <img src="images/cart-1.png" alt="" />
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--top-header-->
<!--start-logo-->
<div class="logo">
    <a href="index.html"><h1>Luxury Watches</h1></a>
</div>
<!--start-logo-->
<!--bottom-header-->
<div class="header-bottom">
    <div class="container">
        <div class="header">
            <div class="col-md-9 header-left">
                <div class="top-nav">
                    <ul class="memenu skyblue"><li class="active"><a href="index.jsp">首页</a></li>
                        <li class="grid"><a href="#">男士</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>种类</h4>
                                        <ul>
                                            <li><a href="#">新顾客</a></li>
                                            <li><a href="#">开拓者</a></li>
                                            <li><a href="#">运动服</a></li>
                                            <li><a href="#">饰品</a></li>
                                            <li><a href="#">手袋</a></li>
                                            <li><a href="#">T恤</a></li>
                                            <li><a href="#">手表</a></li>
                                            <li><a href="#">我的购物车</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>风格区</h4>
                                        <ul>
                                            <li><a href="#">鞋子</a></li>
                                            <li><a href="#">手表</a></li>
                                            <li><a href="#">品牌</a></li>
                                            <li><a href="#">大衣</a></li>
                                            <li><a href="#">饰品</a></li>
                                            <li><a href="#">长裤</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>流行品牌</h4>
                                        <ul>
                                            <li><a href="#">499商店</a></li>
                                            <li><a href="#">Fastrack</a></li>
                                            <li><a href="#">卡西欧</a></li>
                                            <li><a href="#">化石</a></li>
                                            <li><a href="#">千里马</a></li>
                                            <li><a href="#">天美</a></li>
                                            <li><a href="#">TomTom公司</a></li>
                                            <li><a href="#">泰坦</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="#">女士</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>种类</h4>
                                        <ul>
                                            <li><a href="#">新顾客</a></li>
                                            <li><a href="#">开拓者</a></li>
                                            <li><a href="#">运动服</a></li>
                                            <li><a href="#">饰品</a></li>
                                            <li><a href="#">手袋</a></li>
                                            <li><a href="#">T恤</a></li>
                                            <li><a href="#">手表</a></li>
                                            <li><a href="#">我的购物车</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>风格区</h4>
                                        <ul>
                                            <li><a href="#">鞋子</a></li>
                                            <li><a href="#">手表</a></li>
                                            <li><a href="#">品牌</a></li>
                                            <li><a href="#">大衣</a></li>
                                            <li><a href="#">饰品</a></li>
                                            <li><a href="#">长裤</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>流行品牌</h4>
                                        <ul>
                                            <li><a href="#">499商店</a></li>
                                            <li><a href="#">Fastrack</a></li>
                                            <li><a href="#">卡西欧</a></li>
                                            <li><a href="#">化石</a></li>
                                            <li><a href="#">千里马</a></li>
                                            <li><a href="#">天美</a></li>
                                            <li><a href="#">TomTom公司</a></li>
                                            <li><a href="#">泰坦</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="#">儿童</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>种类</h4>
                                        <ul>
                                            <li><a href="#">新顾客</a></li>
                                            <li><a href="#">开拓者</a></li>
                                            <li><a href="#">运动服</a></li>
                                            <li><a href="#">饰品</a></li>
                                            <li><a href="#">手袋</a></li>
                                            <li><a href="#">T恤</a></li>
                                            <li><a href="#">手表</a></li>
                                            <li><a href="#">我的购物车</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>风格区</h4>
                                        <ul>
                                            <li><a href="#">鞋子</a></li>
                                            <li><a href="#">手表</a></li>
                                            <li><a href="#">品牌</a></li>
                                            <li><a href="#">大衣</a></li>
                                            <li><a href="#">饰品</a></li>
                                            <li><a href="#">长裤</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>流行品牌</h4>
                                        <ul>
                                            <li><a href="#">499商店</a></li>
                                            <li><a href="#">Fastrack</a></li>
                                            <li><a href="#">卡西欧</a></li>
                                            <li><a href="#">化石</a></li>
                                            <li><a href="#">千里马</a></li>
                                            <li><a href="#">天美</a></li>
                                            <li><a href="#">TomTom公司</a></li>
                                            <li><a href="#">泰坦</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="contact.html">联系我们</a>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-3 header-right">
                <div class="search-bar">
                    <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
                    <input type="submit" value="">
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--bottom-header-->
<!--start-breadcrumbs-->
<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><a href="index.html">首页</a></li>
                <li class="active">购物车</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->
<!--start-ckeckout-->
<div class="ckeckout">
    <div class="container">
        <div class="ckeck-top heading">
            <h2>购物车</h2>
        </div>
        <div class="ckeckout-top">
            <div class="cart-items">
                <h3>我的购物车</h3>
                <%--<script>$(document).ready(function(c) {--%>
                    <%--$('.close1').on('click', function(c){--%>
                        <%--$('.cart-header').fadeOut('slow', function(c){--%>
                            <%--$('.cart-header').remove();--%>
                        <%--});--%>
                    <%--});--%>
                <%--});--%>
                <%--</script>--%>
                <%--<script>$(document).ready(function(c) {--%>
                    <%--$('.close2').on('click', function(c){--%>
                        <%--$('.cart-header1').fadeOut('slow', function(c){--%>
                            <%--$('.cart-header1').remove();--%>
                        <%--});--%>
                    <%--});--%>
                <%--});--%>
                <%--</script>--%>
                <%--<script>$(document).ready(function(c) {--%>
                    <%--$('.close3').on('click', function(c){--%>
                        <%--$('.cart-header2').fadeOut('slow', function(c){--%>
                            <%--$('.cart-header2').remove();--%>
                        <%--});--%>
                    <%--});--%>
                <%--});--%>
                <%--</script>--%>

                <div class="in-check" >
                    <ul class="unit">
                        <li><span>商品</span></li>
                        <li><span>商品名称</span></li>
                        <li><span>商品价格</span></li>
                        <li><span>商品数量</span></li>
                        <li><span>支付订单</span></li>
                        <li><span>删除订单</span></li>
                        <div class="clearfix"> </div>
                    </ul>
                    <c:forEach items="${carts}" var="cart">
                    <ul class="cart-header" id="${cart.id}">
                        <%--<div class="close1" onclick="tuichu(${cart.id});"> </div>--%>
                        <li class="ring-in"><a href="single.html" ><img src="images/${cart.cegOrderDetail.watch_url}" class="img-responsive" alt="" style="width: 25%;height: 10%"></a>
                        </li>
                        <li><span class="name">${cart.cegOrderDetail.watch_name}</span></li>
                        <li><span class="cost">$ ${cart.total_price}</span></li>
                        <li><span class="cost">${cart.cegOrderDetail.watch_count}</span></li>
                        <li><span class="cost"><button type="button" class="btn btn-default" onclick="zhifu(${cart.id});">支付</button></span></li>
                        <li><span class="cost"><button type="button" class="btn btn-default" onclick="shanchu(${cart.id})">删除</button></span></li>
                        <div class="clearfix"> </div>
                    </ul>
                        </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<!--end-ckeckout-->
<!--information-starts-->
<div class="information">
    <div class="container">
        <div class="infor-top">
            <div class="col-md-3 infor-left">
                <h3>加入我们</h3>
                <ul>
                    <li><a href="#"><span class="fb"></span><h6>Facebook</h6></a></li>
                    <li><a href="#"><span class="twit"></span><h6>Twitter</h6></a></li>
                    <li><a href="#"><span class="google"></span><h6>Google+</h6></a></li>
                </ul>
            </div>
            <div class="col-md-3 infor-left">
                <h3>信息</h3>
                <ul>
                    <li><a href="#"><p>特价</p></a></li>
                    <li><a href="#"><p>新产品</p></a></li>
                    <li><a href="#"><p>我们的商店</p></a></li>
                    <li><a href="contact.html"><p>联系我们</p></a></li>
                    <li><a href="#"><p>畅销品</p></a></li>
                </ul>
            </div>
            <div class="col-md-3 infor-left">
                <h3>我的帐户</h3>
                <ul>
                    <li><a href="account.html"><p>我的帐户</p></a></li>
                    <li><a href="#"><p>我的信用卡</p></a></li>
                    <li><a href="#"><p>我的商品退货</p></a></li>
                    <li><a href="#"><p>我的个人资料</p></a></li>
                    <li><a href="#"><p>我的地址</p></a></li>
                </ul>
            </div>
            <div class="col-md-3 infor-left">
                <h3>储存信息</h3>
                <h4>公司名称，,
                    <span>河北师范大学,</span>
                    诚朴园3号楼.</h4>
                <h5>+15703286795</h5>
                <p><a href="mailto:example@email.com">Lihuaw_1@163.com</a></p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--information-end-->
<!--footer-starts-->
<div class="footer">
    <div class="container">
        <div class="footer-top">
            <div class="col-md-6 footer-left">
                <form>
                    <input type="text" value="Enter Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Email';}">
                    <input type="submit" value="订阅">
                </form>
            </div>
            <div class="col-md-6 footer-right">
                <p>版权所有©2017华夏公司名称版权所有</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--footer-end-->
<script type="text/javascript">
    function zhifu(ele) {
        window.location.href='zhifuServlet?id='+ele+'';
    }
    function shanchu(ele) {
        window.location.href='shanchuServlet?id='+ele+'';
    }
    $(function () {
        <c:if test="${type1 == 1}">
        var obj={
            type:"slideFromTop",
            close:"true",
            title:"亲~~~",
            content:"<div>您已支付成功！",
            btn:["返回首页","继续付款"],
            callBack1:function(){
                window.location.href="index_m.jsp";
            },
            callBack2:function(){
                window.location.href="selectCartServlet?name=${username}";
            }
        };
        method.msg_layer(obj);
        <%request.getSession().removeAttribute("type1");%>
        </c:if>
        <c:if test="${delete == 1}">
        var obj={
            type:"slideFromTop",
            close:"true",
            title:"亲~~~",
            content:"<div>该订单已被删除！",
            btn:["返回首页","再看看"],
            callBack1:function(){
                window.location.href="index_m.jsp";
            },
            callBack2:function(){
                window.location.href="selectCartServlet?name=${username}";
            }
        };
        method.msg_layer(obj);
        <%request.getSession().removeAttribute("delete");%>
        </c:if>
    });
    $("#signout_btn").on("click",function(){
        var obj={
            type:"slideFromTop",
            close:"true",
            title:"稍等片刻",
            content:"<div>君，可还知归来的路？",
            btn:["不舍","吾知"],
            callBack1:function(){
//                alert("取消");
            },
            callBack2:function(){
//                method.msg_layer({title:"确认框标题",content:"保存成功"})
                window.location.href="SignOutServlet";
            }
        };
        method.msg_layer(obj);
    });
</script>
</body>
</html>
