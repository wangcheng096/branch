<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%--     <%@ page language="java" import="cn.tedu.store.entity.User" pageEncoding="utf-8"%> --%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8" />
		<title>学子商城</title>
		<!--导入核心文件-->
		<script src="/store/bootstrap3/js/holder.js"></script>
		<link href="/store/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css">
		<script src="/store/bootstrap3/jquery-1.8.3.min.js"></script>
		<script src="/store/bootstrap3/js/bootstrap.js"></script>
		<!-- 字体图标 -->
		<link rel="stylesheet" href="/store/bootstrap3/font-awesome-4.7.0/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/layout.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/webindex.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/footer.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/top.css" />
		<script src="/store/js/menu.js" type="text/javascript" charset="utf-8"></script>
	</head>


	<body onload="CheckUser()">

		<!--头部-->
		<header class="header">
			<!--学子商城logo-->
			<div class="col-md-3">
				<a href="index.html">
					<img src="/store/images/index/stumalllogo.png" />
				</a>
			</div>
			<!--快捷选项-->
			<div class="col-md-9 top-item" >
				
				<ul class="list-inline" style="float: right;" >

					<li><a href="favorites.html"><span class="fa fa-heart"></span>&nbsp;收藏</a></li>
					<li class="li-split">|</li>
					<li><a href="orders.html"><span class="fa fa-file-text"></span>&nbsp;订单</a></li>
					<li class="li-split">|</li>
					<li><a href="cart.html"><span class="fa fa-cart-plus"></span>&nbsp;购物车</a></li>
					<li class="li-split">|</li>
					<li>
						<!--下列列表按钮 ：管理-->
						<div class="btn-group">
							<button type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown">
								<span id="top-dropdown-btn"><span class="fa fa-gears"></span>&nbsp;管理 <span class="caret"></span></span>
							</button>
							<ul class="dropdown-menu top-dropdown-ul" role="menu">
								<li><a href="/store/user/toPassword.do">修改密码</a></li>
								<li><a href="/store/user/toUserdata.do">个人资料</a></li>
								<li><a href="/store/user/toUpload.do">上传头像</a></li>
								<li><a href="/store/address/toAddress.do">收货管理	</a></li>
							</ul>
						</div>
					</li>
					<li class="li-split">|</li>
					<li><a href="login.html"><span class="fa fa-user"></span>&nbsp;<span id="user">登录</span></a></li>

				</ul>
				
			</div>

		</header>
		<!--头部结束-->
		<!--导航 -->
		<!--分割导航和顶部-->
		<div class="clearfix"></div>
		<hr />
		<div class="col-md-12 top-nav">
			<div class="col-md-6">
				<ul class="nav nav-pills">
					<li>
						<a href="#"></a>
					</li>
					<li class="active"><a href="index.html"><span class="fa fa-home"></span></a></li>
					<li><a href="#">秒杀</a></li>
					<li><a href="#">优惠券</a></li>
					<li><a href="#">学子VIP</a></li>
					<li><a href="#">外卖</a></li>
					<li><a href="#">超市</a></li>
				</ul>

			</div>
			<div class="col-md-6">

				<form action="search.html" class="form-inline" role="form" style="float: right;">
					<div class="form-group">
						<input type="text" class="form-control" id="search" name="search" placeholder="请输入商品名称进行搜索">
					</div>

					<button type="submit" class="btn btn-default btn-sm"><span class="fa fa-search"></span></button>
				</form>

			</div>
		</div>
		<!--导航结束-->
	

		<div class="clearfix"></div>
		<div class="col-md-2" id="indexMenu">
			<ul class="index-menu">

			</ul>
			<div id="showIndex">

				<ul class="second-menu">
					
					<li class="second-menu-li">####</li>
					
				</ul>

			</div>
			<div id="showSecond">

				<ul class="third-menu">

				</ul>

			</div>

		</div>
		<div class="col-md-10">
			<div id="myCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
				</ol>
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner" align="center">
					<div class="item active">
						<img src="/store/images/index/index_banner1.png">
					</div>
					<div class="item">
						<img src="/store/images/index/index_banner2.png">
					</div>
					<div class="item">
						<img src="/store/images/index/index_banner3.png">
					</div>
					<div class="item">
						<img src="/store/images/index/index_banner4.png">
					</div>
					<div class="item">
						<img src="/store/images/index/index_banner5.png">
					</div>
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
		<hr/>
		<!--推荐栏目-->
		<div class="col-md-offset-1 col-md-5">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">新到好货</h3>
				</div>
				<div class="panel-body panel-item">

					<div class="col-md-12">
						<div class="col-md-7 text-row-2"><a href="product.html">齐心（COMIX）C5902 A5优品商务笔记本子记事本日记本122张</a></div>
						<div class="col-md-2">¥18</div>
						<div class="col-md-3"><img src="/store/images/portal/02COMIXC5902A5122blue/collect.png" width="100%" /></div>
					</div>

					<div class="col-md-12">
						<div class="col-md-7  text-row-2"><a href="product.html">得力（deli）1548A商务办公桌面计算器 太阳能双电源</a></div>
						<div class="col-md-2">¥50</div>
						<div class="col-md-3"><img src="/store/images/portal/002calculator1548A/collect.png" width="100%" /></div>
					</div>
					<div class="col-md-12">
						<div class="col-md-7 text-row-2"><a href="product.html">戴尔(DELL)XPS13-9360-R1609 13.3</a></div>
						<div class="col-md-2">¥6299</div>
						<div class="col-md-3"><img src="/store/images/portal/12(DELL)XPS13gold/collect.png" width="100%" /></div>
					</div>
					<div class="col-md-12">
						<div class="col-md-7 text-row-2"><a href="product.html">联想（Lenovo）IdeaPad310高配版</a></div>
						<div class="col-md-2">¥5298</div>
						<div class="col-md-3"><img src="/store/images/portal/13LenovoIdeaPad310_black/collect.png" width="100%" /></div>
					</div>

				</div>
			</div>

		</div>
		<div class="col-md-5">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">热销排行</h3>
				</div>
				<div class="panel-body panel-item">

					<div class="col-md-12">
						<div class="col-md-7 text-row-2"><a href="product.html">广博(GuangBo)10本装40张A5牛皮纸记事本子日记本办公软抄本GBR0731</a></div>
						<div class="col-md-2">¥23</div>
						<div class="col-md-3"><img src="/store/images/portal/00GuangBo1040A5GBR0731/collect.png" width="100%" /></div>
					</div>

					<div class="col-md-12">
						<div class="col-md-7 text-row-2"><a href="product.html">齐心（COMIX）C5902 A5优品商务笔记本子记事本日记本122张</a></div>
						<div class="col-md-2">¥18</div>
						<div class="col-md-3"><img src="/store/images/portal/02COMIXC5902A5122blue/collect.png" width="100%" /></div>
					</div>
					<div class="col-md-12">
						<div class="col-md-7 text-row-2"><a href="product.html">广博(GuangBo)皮面日程本子 计划记事本效率手册米色FB60322</a></div>
						<div class="col-md-2">¥28</div>
						<div class="col-md-3"><img src="/store/images/portal/001GuangBo)FB60322/collect.png" width="100%" /></div>
					</div>
					<div class="col-md-12">
						<div class="col-md-7 text-row-2"><a href="product.html">戴尔Dell 燃700R1605银色</a></div>
						<div class="col-md-2">¥3799</div>
						<div class="col-md-3"><img src="/store/images/portal/11DELLran7000R1605Ssilvery/collect.png" width="100%" /></div>
					</div>

				</div>
			</div>

		</div>
		

		<div class="clearfix"></div>
		<!--页脚开始-->
		<footer class="footer">
			<!-- 品质保障，私人定制等-->
			<div class="text-center rights container">
				<div class="col-md-offset-2 col-md-2">
					<span class="fa fa-thumbs-o-up"></span>
					<h4>品质保障</h4>
				</div>
				<div class="col-md-2">
					<span class="fa fa-address-card-o"></span>

					<h4>私人订制</h4>
				</div>
				<div class="col-md-2">
					<span class="fa fa-graduation-cap"></span>
					<h4>学生特供</h4>
				</div>
				<div class="col-md-2">
					<span class="fa fa-bitcoin"></span>

					<h4>专属特权</h4>
				</div>
			</div>
			<!--联系我们、下载客户端等-->
			<div class="container beforeBottom">
				<div class="col-md-offset-1 col-md-3">
					<div><img src="/store/images/index/stumalllogo.png" alt="" class="footLogo" /></div>
					<div><img src="/store/images/index/footerFont.png" alt="" /></div>

				</div>
				<div class="col-md-4 callus text-center">
					<div class="col-md-4">
						<ul>
							<li><a href="#"><h5>买家帮助</h5></a></li>
							<li><a href="#">新手指南</a></li>
							<li><a href="#">服务保障</a></li>
							<li><a href="#">常见问题</a></li>
						</ul>
					</div>
					<div class="col-md-4">
						<ul>
							<li><a href="#"><h5>商家帮助</h5></a></li>
							<li><a href="#">商家入驻</a></li>
							<li><a href="#">商家后台</a></li>
						</ul>
					</div>
					<div class="col-md-4">
						<ul>
							<li><a href="#"><h5>关于我们</h5></a></li>
							<li><a href="#">关于达内</a></li>
							<li><a href="#">联系我们</a></li>
							<li>
								<span class="fa fa-wechat"></span>
								<span class="fa fa-weibo"></span>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<div class="col-md-5">
						<p>学子商城客户端</p>
						<img src="/store/images/index/ios.png" class="lf">
						<img src="/store/images/index/android.png" alt="" class="lf" />
					</div>
					<div class="col-md-6">
						<img src="/store/images/index/erweima.png">
					</div>
				</div>
			</div>
			<!-- 页面底部-备案号 #footer -->
			<div class="col-md-12 text-center bottom">
				Copyright © 2018 Tedu.cn All Rights Reserved 京ICP备08000853号-56 <a target="_blank" style="font-size: 12px" href="http://www.tedu.cn/">达内时代科技集团有限公司</a> 版权所有
			</div>

		</footer>
		<!--页脚结束-->
	</body>
		<script type="text/javascript">
	       function CheckUser(){
	       var username='${sessionScope.user.username}';
	       if(username!=null){
	        $("#user").html("欢迎您"+username);
	       }

	       }
	</script>

</html>