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
		<script src="/store/js/adddel.js" type="text/javascript" charset="utf-8"></script>

	</head>

	<body>
		<%@include file="topTemplate.jsp" %>
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
							<div><a href="upload.html">上传头像</a></div>
							<div><a href="address.html"><b>收货管理</b></a></div>
						</div>
					</div>
				</div>

			</div>
			<!--左侧导航结束-->

		</div>
		<div class="col-md-10">
			<div class="panel panel-default">
				<ul class="nav nav-tabs">
					<li ><a href="password.html">修改密码</a></li>
					<li><a href="userdata.html">个人资料</a></li>
					<li><a href="upload.html">上传头像</a></li>
					<li class="active"><a href="#">收货管理</a></li>

				</ul>
				<div class="panel-body">
					<!--地址显示-->
					<table class="table table-striped">
						<caption>收货地址列表</caption>
						<thead>
							<tr>
								<th>地址类型</th>
								<th>收货人姓名</th>
								<th>详细地址</th>
								<th>联系电话</th>
								<th colspan="3">操作</th>
								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>家</td>
								<td>八戒</td>
								<td>北京市房山区高老庄3排6号</td>
								<td>1380***1234</td>
								<td><a class="btn btn-xs btn-info" ><span class="fa fa-edit"></span> 修改</a></td>
								<td><a class="btn btn-xs add-del btn-info" ><span class="fa fa-trash-o"></span> 删除</a></td>
								<td><a class="btn btn-xs add-def btn-default">设为默认</a></td>
								
							</tr>
							<tr>
								<td>公司</td>
								<td>八戒</td>
								<td>北京市海淀区中关村中路1号1001室</td>
								<td>1380***1234</td>
								<td><a class="btn btn-xs btn-info" ><span class="fa fa-edit"></span> 修改</a></td>
								<td><a class="btn btn-xs add-del btn-info" ><span class="fa fa-trash-o"></span> 删除</a></td>
								<td><a class="btn btn-xs add-def btn-default" >设为默认</a></td>
							</tr>
							<tr>
								<td>宿舍</td>
								<td>八戒</td>
								<td>北京市海淀区永丰镇30号</td>
								<td>1380***1234</td>
								<td><a class="btn btn-xs btn-info" ><span class="fa fa-edit"></span> 修改</a></td>
								<td><a class="btn btn-xs add-del btn-info" ><span class="fa fa-trash-o"></span> 删除</a></td>
								<td><a class="btn btn-xs add-def btn-default" >设为默认</a></td>
							</tr>
						</tbody>
					</table>
					<a href="/store/address/toAddAddress.do" class="btn btn-sm btn-primary"><span class="fa fa-plus"></span>新增收货地址</a>
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