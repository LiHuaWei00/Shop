
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
    <title>Single</title>
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
    <!--start-menu-->
    <script src="js/simpleCart.min.js"> </script>
    <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/layer-animate.css"/>
    <script src="js/method.js"></script>
    <script type="text/javascript" src="js/memenu.js"></script>
    <script>$(document).ready(function(){$(".memenu").memenu();});</script>
    <!--dropdown-->
    <script src="js/jquery.easydropdown.js"></script>
    <script type="text/javascript">
        $(function() {

            var menu_ul = $('.menu_drop > li > ul'),
                    menu_a  = $('.menu_drop > li > a');

            menu_ul.hide();

            menu_a.click(function(e) {
                e.preventDefault();
                if(!$(this).hasClass('active')) {
                    menu_a.removeClass('active');
                    menu_ul.filter(':visible').slideUp('normal');
                    $(this).addClass('active').next().stop(true,true).slideDown('normal');
                } else {
                    $(this).removeClass('active');
                    $(this).next().stop(true,true).slideUp('normal');
                }
            });

        });
    </script>
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
                    <a href="selectCartServlet?name=${username}">
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
                                            <li><a href="products.html">新顾客</a></li>
                                            <li><a href="products.html">开拓者</a></li>
                                            <li><a href="products.html">运动服</a></li>
                                            <li><a href="products.html">饰品</a></li>
                                            <li><a href="products.html">手袋</a></li>
                                            <li><a href="products.html">T恤</a></li>
                                            <li><a href="products.html">手表</a></li>
                                            <li><a href="products.html">我的购物车</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>风格区</h4>
                                        <ul>
                                            <li><a href="products.html">鞋子</a></li>
                                            <li><a href="products.html">手表</a></li>
                                            <li><a href="products.html">品牌</a></li>
                                            <li><a href="products.html">大衣</a></li>
                                            <li><a href="products.html">饰品</a></li>
                                            <li><a href="products.html">长裤</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>流行品牌</h4>
                                        <ul>
                                            <li><a href="products.html">499商店</a></li>
                                            <li><a href="products.html">Fastrack</a></li>
                                            <li><a href="products.html">卡西欧</a></li>
                                            <li><a href="products.html">化石</a></li>
                                            <li><a href="products.html">千里马</a></li>
                                            <li><a href="products.html">天美</a></li>
                                            <li><a href="products.html">TomTom公司</a></li>
                                            <li><a href="products.html">泰坦</a></li>
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
                                            <li><a href="products.html">新顾客</a></li>
                                            <li><a href="products.html">开拓者</a></li>
                                            <li><a href="products.html">运动服</a></li>
                                            <li><a href="products.html">饰品</a></li>
                                            <li><a href="products.html">手袋</a></li>
                                            <li><a href="products.html">T恤</a></li>
                                            <li><a href="products.html">手表</a></li>
                                            <li><a href="products.html">我的购物车</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>风格区</h4>
                                        <ul>
                                            <li><a href="products.html">鞋子</a></li>
                                            <li><a href="products.html">手表</a></li>
                                            <li><a href="products.html">品牌</a></li>
                                            <li><a href="products.html">大衣</a></li>
                                            <li><a href="products.html">饰品</a></li>
                                            <li><a href="products.html">长裤</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>流行品牌</h4>
                                        <ul>
                                            <li><a href="products.html">499商店</a></li>
                                            <li><a href="products.html">Fastrack</a></li>
                                            <li><a href="products.html">卡西欧</a></li>
                                            <li><a href="products.html">化石</a></li>
                                            <li><a href="products.html">千里马</a></li>
                                            <li><a href="products.html">天美</a></li>
                                            <li><a href="products.html">TomTom公司</a></li>
                                            <li><a href="products.html">泰坦</a></li>
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
                                            <li><a href="products.html">新顾客</a></li>
                                            <li><a href="products.html">开拓者</a></li>
                                            <li><a href="products.html">运动服</a></li>
                                            <li><a href="products.html">饰品</a></li>
                                            <li><a href="products.html">手袋</a></li>
                                            <li><a href="products.html">T恤</a></li>
                                            <li><a href="products.html">手表</a></li>
                                            <li><a href="products.html">我的购物车</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>风格区</h4>
                                        <ul>
                                            <li><a href="products.html">鞋子</a></li>
                                            <li><a href="products.html">手表</a></li>
                                            <li><a href="products.html">品牌</a></li>
                                            <li><a href="products.html">大衣</a></li>
                                            <li><a href="products.html">饰品</a></li>
                                            <li><a href="products.html">长裤</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>流行品牌</h4>
                                        <ul>
                                            <li><a href="products.html">499商店</a></li>
                                            <li><a href="products.html">Fastrack</a></li>
                                            <li><a href="products.html">卡西欧</a></li>
                                            <li><a href="products.html">化石</a></li>
                                            <li><a href="products.html">千里马</a></li>
                                            <li><a href="products.html">天美</a></li>
                                            <li><a href="products.html">TomTom公司</a></li>
                                            <li><a href="products.html">泰坦</a></li>
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
                <li class="active">商品</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->
<!--start-single-->
<div class="single contact">
    <div class="container">
        <div class="single-main">
            <div class="col-md-9 single-main-left">
                <div class="sngl-top">
                    <div class="col-md-5 single-top-left">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="images/${watch.watch_url}">
                                    <div class="thumb-image"><img src="images/${watch.watch_url}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="images/s-2.jpg">
                                    <div class="thumb-image"><img src="images/s-2.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                                <li data-thumb="images/s-3.jpg">
                                    <div class="thumb-image"><img src="images/s-3.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                </li>
                            </ul>
                        </div>
                        <!-- FlexSlider -->
                        <script src="js/imagezoom.js"></script>
                        <script defer src="js/jquery.flexslider.js"></script>
                        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                        <script>
                            // Can also be used with $(document).ready()
                            $(window).load(function() {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
                        </script>
                    </div>
                    <div class="col-md-7 single-top-right">
                        <div class="single-para simpleCart_shelfItem">
                            <h2>Lorem Ipsum</h2>
                            <div class="star-on">
                                <ul class="star-footer">
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                </ul>
                                <div class="review">
                                    <a href="#"> 1 customer review </a>

                                </div>
                                <div class="clearfix"> </div>
                            </div>

                            <h5 class="item_price">$ ${watch.watch_price}</h5>
                            <p>${watch.watch_introduce}</p>
                            <div class="available">
                                <ul>
                                    <li>Color
                                        <select id="color_sele">
                                            <c:forEach items="${watchcolor}" var="color">
                                            <option>${color}</option>
                                            </c:forEach>
                                        </select></li>
                                    <li class="size-in">Size<select id="size_sele">
                                        <c:forEach items="${watchsize}" var="size">
                                            <option>${size}</option>
                                        </c:forEach>
                                    </select></li>

                                    <li>
                                        <form class="form-inline">
                                            <div class="form-group">
                                                Count&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                <span class="btn " id="num-jian">-</span>
                                                <input type="text" class="form-control" value="1" id="count_in" style="width: 17%">
                                                <span class="btn " id="num-jia">+</span>
                                            </div>
                                        </form>
                                    </li>
                                    <div class="clearfix"> </div>
                                </ul>
                            </div>
                            <ul class="tag-men">
                                <li><span>TAG</span>
                                    <span class="women1">: ${watch.watch_peo.sex}</span></li>
                                <li><span>SKU</span>
                                    <span class="women1">: ${watch.watch_type.name}</span></li>
                            </ul>
                            <a  id="addcart" class="add-cart item_add">ADD TO CART</a>

                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="tabs">
                    <ul class="menu_drop">
                        <li class="item1"><a href="#"><img src="images/arrow.png" alt="">描述</a>
                            <ul>
                                <li class="subitem1"><a href="#">伯爵一直以来营造的就是优雅的精英气质，没想到这款50周年限量版Altiplano腕表却在优雅之余呈现出一丝硬朗和坚实。</a></li>
                                <li class="subitem2"><a href="#">整只表依然坚持采用极纤薄设计和超薄机芯，流线型的表壳轮廓和简约的表针、刻度设计都是风格的沿袭。</a></li>
                                <li class="subitem3"><a href="#">纯黑表盘与全黑皮表带让“黑”成为腕表的关键词，黑又没那么黑，是不是也是一类人的选择呢?</a></li>
                            </ul>
                        </li>
                        <li class="item2"><a href="#"><img src="images/arrow.png" alt="">附加信息</a>
                            <ul>
                                <li class="subitem2"><a href="#"> 与阳刚气十足的百年灵腕表分外搭的黑钢设计，从表壳、表盘，到独创的星形旋转表圈和精钢编织表带全部呈现极致黑色，又酷又MAN。</a></li>
                                <li class="subitem3"><a href="#">除了外形上非常抢眼之外，星形表圈允许佩戴者即便戴手套也可以操作自如。双向旋转表圈则可以保证环形飞行滑尺的操作简单而精准，绝非徒有其表。</a></li>
                            </ul>
                        </li>
                        <li class="item3"><a href="#"><img src="images/arrow.png" alt="">评论 (10)</a>
                            <ul>
                                <li class="subitem1"><a href="#">除了外形上非常抢眼之外，星形表圈允许佩戴者即便戴手套也可以操作自如。双向旋转表圈则可以保证环形飞行滑尺的操作简单而精准，绝非徒有其表。</a></li>
                                <li class="subitem2"><a href="#"> 与阳刚气十足的百年灵腕表分外搭的黑钢设计，从表壳、表盘，到独创的星形旋转表圈和精钢编织表带全部呈现极致黑色，又酷又MAN。</a></li>
                                <li class="subitem3"><a href="#">伯爵一直以来营造的就是优雅的精英气质，没想到这款50周年限量版Altiplano腕表却在优雅之余呈现出一丝硬朗和坚实。</a></li>
                            </ul>
                        </li>
                        <li class="item4"><a href="#"><img src="images/arrow.png" alt="">网址</a>
                            <ul>
                                <li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
                                <li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
                            </ul>
                        </li>
                        <li class="item5"><a href="#"><img src="images/arrow.png" alt="">作为礼物</a>
                            <ul>
                                <li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</a></li>
                                <li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
                                <li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>
            <div class="col-md-3 single-right">

            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--end-single-->
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
<!-- 自定义script -->
<script type="text/javascript">
    $(function () {
        var num_jia = document.getElementById("num-jia");
        var num_jian = document.getElementById("num-jian");
        var input_num = document.getElementById("count_in");

        num_jia.onclick = function() {

            input_num.value = parseInt(input_num.value) + 1;
        };

        num_jian.onclick = function() {

            if(input_num.value <= 0) {
                input_num.value = 0;
            } else {

                input_num.value = parseInt(input_num.value) - 1;
            }
        };
        <c:if test="${type == 1}">
        var obj={
            type:"slideFromTop",
            close:"true",
            title:"亲~~~",
            content:"<div>添加购物车成功",
            btn:["再看看","去支付"],
            callBack1:function(){
            },
            callBack2:function(){
                window.location.href="selectCartServlet?name=${username}";
            }
        };
        method.msg_layer(obj);
        </c:if>
        <c:if test="${type == 0}">
        var obj={
            type:"slideFromTop",
            close:"true",
            title:"亲~~~",
            content:"<div>添加购物车失败",
            btn:["尴尬",""],
            callBack1:function(){
            },
            callBack2:function(){
                window.location.href="login.jsp";
            }
        };
        method.msg_layer(obj);
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
    //加入购物车
    function addCart() {

    }
    $("#addcart").click(function () {
        <c:if test="${not empty username}">
        var id = "${watch.id}";
        var user_name = "${username}";
        var name = "${watch.watch_name}";
        var count = $("#count_in").val();
        var color =$("#color_sele").val();
        var size = $("#size_sele").val();
        var url = "${watch.watch_url}";
        var price = ${watch.watch_price};
        window.location.href = 'addCartServlet?id='+id+'&user_name='+user_name+'&name='+name+'&count='+count+'&color='+color+'&size='+size+'&price='+price+'&url='+url+'';
        </c:if>
        <c:if test="${empty username}">
        var obj={
            type:"slideFromTop",
            close:"true",
            title:"亲~~~",
            content:"<div>请登录后再取君之所爱！",
            btn:["再看看","好的"],
            callBack1:function(){
            },
            callBack2:function(){
                window.location.href="login.jsp";
            }
        };
        method.msg_layer(obj);
        </c:if>
    });
</script>
</body>
</html>