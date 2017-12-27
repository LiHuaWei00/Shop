<%--
  Created by IntelliJ IDEA.
  User: Huazi
  Date: 2017/10/11
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
  <title>Home</title>
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
  <script type="text/javascript" src="js/memenu.js"></script>
  <script>$(document).ready(function(){$(".memenu").memenu();});</script>
  <!--dropdown-->
  <script src="js/jquery.easydropdown.js"></script>
</head>
<body>
<!--top-header-->
<div class="top-header">
  <div class="container">
    <div class="top-header-main">
      <div class="col-md-6 top-header-left">
        <div class="drop">
          <div class="">
            <%--<select tabindex="4" class="dropdown drop">--%>
              <%--<option value="" class="label">Dollar :</option>--%>
              <%--<option value="1">Dollar</option>--%>
              <%--<option value="2">Euro</option>--%>
            <%--</select>--%>
              <a tabindex="4" class="dropdown drop" href="login.jsp">登录/注册</a>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div class="col-md-6 top-header-left">
        <div class="cart box_1">
          <a href="checkout.html">
            <div class="total">
              <span class="simpleCart_total"></span></div>
            <img src="images/cart-1.png" alt="" />
          </a>
          <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
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
<!--banner-starts-->
<div class="bnr" id="home">
  <div  id="top" class="callbacks_container">
    <ul class="rslides" id="slider4">
      <li>
        <div class="banner">
        </div>
      </li>
      <li>
        <div class="banner1">
        </div>
      </li>
      <li>
        <div class="banner2">
        </div>
      </li>
    </ul>
  </div>
  <div class="clearfix"> </div>
</div>
<!--banner-ends-->
<!--Slider-Starts-Here-->
<script src="js/responsiveslides.min.js"></script>
<script>
  // You can also use "$(window).load(function() {"
  $(function () {
    // Slideshow 4
    $("#slider4").responsiveSlides({
      auto: true,
      pager: true,
      nav: true,
      speed: 500,
      namespace: "callbacks",
      before: function () {
        $('.events').append("<li>before event fired.</li>");
      },
      after: function () {
        $('.events').append("<li>after event fired.</li>");
      }
    });

  });
</script>
<!--End-slider-script-->
<!--about-starts-->
<div class="about">
  <div class="container">
    <div class="about-top grid-1">
      <div class="col-md-4 about-left">
        <figure class="effect-bubba">
          <img class="img-responsive" src="images/abt-1.jpg" alt=""/>
          <figcaption>
            <h2>Nulla maximus nunc</h2>
            <p>In sit amet sapien eros Integer dolore magna aliqua</p>
          </figcaption>
        </figure>
      </div>
      <div class="col-md-4 about-left">
        <figure class="effect-bubba">
          <img class="img-responsive" src="images/abt-2.jpg" alt=""/>
          <figcaption>
            <h4>Mauris erat augue</h4>
            <p>In sit amet sapien eros Integer dolore magna aliqua</p>
          </figcaption>
        </figure>
      </div>
      <div class="col-md-4 about-left">
        <figure class="effect-bubba">
          <img class="img-responsive" src="images/abt-3.jpg" alt=""/>
          <figcaption>
            <h4>Cras elit mauris</h4>
            <p>In sit amet sapien eros Integer dolore magna aliqua</p>
          </figcaption>
        </figure>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>
<!--about-end-->
<!--product-starts-->
<div class="product">
  <div class="container">
    <div class="product-top">
      <div class="product-one">
        <div class="col-md-3 product-left">
          <div class="product-main simpleCart_shelfItem">
            <a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-1.png" alt="" /></a>
            <div class="product-bottom">
              <h3>智能手表</h3>
              <p>立即搜索</p>
              <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
            </div>
            <div class="srch">
              <span>-50%</span>
            </div>
          </div>
        </div>
        <div class="col-md-3 product-left">
          <div class="product-main simpleCart_shelfItem">
            <a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-2.png" alt="" /></a>
            <div class="product-bottom">
              <h3>智能手表</h3>
              <p>立即搜索</p>
              <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
            </div>
            <div class="srch">
              <span>-50%</span>
            </div>
          </div>
        </div>
        <div class="col-md-3 product-left">
          <div class="product-main simpleCart_shelfItem">
            <a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-3.png"  alt="" /></a>
            <div class="product-bottom">
              <h3>智能手表</h3>
              <p>立即搜索</p>
              <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
            </div>
            <div class="srch">
              <span>-50%</span>
            </div>
          </div>
        </div>
        <div class="col-md-3 product-left">
          <div class="product-main simpleCart_shelfItem">
            <a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-4.png" alt="" /></a>
            <div class="product-bottom">
              <h3>智能手表</h3>
              <p>立即搜索</p>
              <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
            </div>
            <div class="srch">
              <span>-50%</span>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="product-one">
        <div class="col-md-3 product-left">
          <div class="product-main simpleCart_shelfItem">
            <a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-5.png" alt="" /></a>
            <div class="product-bottom">
              <h3>智能手表</h3>
              <p>立即搜索</p>
              <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
            </div>
            <div class="srch">
              <span>-50%</span>
            </div>
          </div>
        </div>
        <div class="col-md-3 product-left">
          <div class="product-main simpleCart_shelfItem">
            <a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-6.png" alt="" /></a>
            <div class="product-bottom">
              <h3>智能手表</h3>
              <p>立即搜索</p>
              <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
            </div>
            <div class="srch">
              <span>-50%</span>
            </div>
          </div>
        </div>
        <div class="col-md-3 product-left">
          <div class="product-main simpleCart_shelfItem">
            <a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-7.png" alt="" /></a>
            <div class="product-bottom">
              <h3>智能手表</h3>
              <p>立即搜索</p>
              <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
            </div>
            <div class="srch">
              <span>-50%</span>
            </div>
          </div>
        </div>
        <div class="col-md-3 product-left">
          <div class="product-main simpleCart_shelfItem">
            <a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-8.png" alt="" /></a>
            <div class="product-bottom">
              <h3>智能手表</h3>
              <p>立即搜索</p>
              <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
            </div>
            <div class="srch">
              <span>-50%</span>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
</div>
<!--product-end-->
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
</body>
</html>