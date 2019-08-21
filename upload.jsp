<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>

		<meta charset="utf-8" />
		<title>学子商城</title>
		<!--导入核心文件-->
		<script src="/store/bootstrap3/js/holder.js"></script>
		<link href="/store/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css">
		<script src="/store/bootstrap3/jquery-1.9.1.min.js"></script>
		<script src="/store/bootstrap3/js/bootstrap.js"></script>
		<!-- 字体图标 -->
		<link rel="stylesheet" href="/store/bootstrap3/font-awesome-4.7.0/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/layout.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/top.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/footer.css" />
		
		<script type="text/javascript">
			//客户端逻辑
				$(function(){
					//页面加载完成后执行该函数
					//给按钮绑定单击事件
					$("#btn").click(function(){
						//获取参数
						//将jquery 对象转成dom 对象
						var form_ele = $("#uploadForm").get(0);
						//获取参数,formData 封装了整个表单元素
						var formData = new FormData(form_ele);
						//发送ajax 请求
						$.ajax({
							type:"post",
							url:"/store/user/upload.do",
							data:formData,  //参数
							processData:false,   //告诉jquery 不要处理数据
							contentType:false,    //告诉jquery 不要设置响应头
							success:function(data){
							  //将JSON字符串转成js对象
							  var result = JSON.parse(data);
							  if(result.statu==0){
								  //上传成功
								  var path = result.data;
								  $("#photo").attr('src',path);//更换图片
							  }else if(result.statu==1){
								  alert(result.msg)
							  }
							}
						})
						
				})
				})
			
		</script>
	</head>

	<body>
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
								<li><a href="password.html">修改密码</a></li>
								<li><a href="userdata.html">个人资料</a></li>
								<li><a href="upload.html">上传头像</a></li>
								<li><a href="address.html">收货管理	</a></li>
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
		<div class="col-md-2">
			<!--左侧导航开始-->
			<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<!--主选项：我的订单-->
						<h4 class="panel-title">
                			<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">我的订单</a>
            			</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse">
						<div class="panel-body">
							<div><a href="orders.html">全部订单</a></div>
							<div><a href="orders.html">待付款</a></div>
							<div><a href="orders.html">待收货</a></div>
							<div><a href="orders.html">待评价</a></div>
							<div><a href="orders.html">退货退款</a></div>

						</div>
					</div>

				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<!--主选项：资料修改-->
						<h4 class="panel-title">
               			<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">资料修改</a>
            		</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div><a href="password.html">修改密码</a></div>
							<div><a href="userdata.html">个人资料</a></div>
							<div><a href="upload.html"><b>上传头像</b></a></div>
							<div><a href="address.html">收货管理</a></div>
						</div>
					</div>
				</div>

			</div>
			<!--左侧导航结束-->
		</div>
		<div class="col-md-10	">
			<div class="panel panel-default">
				<ul class="nav nav-tabs">
					<li><a href="password.html">修改密码</a></li>
					<li><a href="userdata.html">个人资料</a></li>
					<li class="active"><a href="#">上传头像</a></li>
					<li><a href="address.html">收货管理</a></li>

				</ul>
				<div class="panel-body">
					<!--上传头像表单开始-->
					<form class="form-horizontal" id ="uploadForm" role="form" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label  class="col-md-2 control-label">选择头像:</label>
							<div class="col-md-8">
								<img id="photo" src="/store/images/index/user.jpg" width="70" />
								<input type="file" name="file">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<input type="button" id ="btn" class="btn btn-primary" value="上传" />
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>

		<!--页脚开始-->
		<div class="clearfix"></div>
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

</html>