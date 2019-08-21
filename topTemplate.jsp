<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


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
					<li><a href="login.html"><span class="fa fa-user"></span>&nbsp;登录</a></li>

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
	