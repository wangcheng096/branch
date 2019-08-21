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
		<link rel="stylesheet" type="text/css" href="/store/css/top.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/index.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/layout.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/reg.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/footer.css" />
		<script type="text/javascript">
			//定义提交函数
			$(function(){
				//当页面加载完成后执行该函数
				//给提交按钮绑定单击事件
				$("#btn").click(function(){
					//alert("提交按钮被点击");
					//获取用户名
					var username = $("#username").val();
					//获取密码
					var password = 
						$("#password").val();
					//获取确认密码
					var conform_pwd = 
						$("#conform_pwd").val();
					if(username.length<=0 ||
							password.length<=0){
						alert("用户名密码不能为空!");
						return;
					}
					if(password != conform_pwd){
						alert("确认密码不一致");
						return;
					}
					//发送ajax
					$.ajax({
					url:"/store/user/register.do",
					type:"post",
					data:{"username":username,
						"password":password},
					dataType:"json",
					success:function(result){
						if(result.statu == 0){
							//表示注册成功
							var r = window.confirm(result.msg);
							if(r){
								//页面跳转
							  window.location.href='/store/user/toLogin.do';
							}
							
						}else if(result.statu==1){
							alert(result.msg)
						}else{
							alert(result.msg);
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

			<img src="/store/images/index/stumalllogo.png" alt="" />
			<span class="pull-right"><h3><small>欢迎访问</small><b>学子商城</b></h3></span>

		</header>
		<!--主体-->
		<div class="container mycontent text-left">
			<!--透明层 -->
			<div class="regDiv">
				<h4>新用户注册</h4>
				<hr />
				<!--表单开始-->
				<form action="/store/user/register.do" method="post"   class="form-horizontal" role="form">
					<!--用户名-->
					<div class="form-group">
						<label  class="col-md-3 control-label">名字：</label>
						<div class="col-md-8">
							<input type="text" name="username" id="username" class="form-control"  placeholder="请输入用户名">
						</div>
					</div>
					<!--密码-->
					<div class="form-group">
						<label class="col-md-3 control-label"> 密码：</label>
						<div class="col-md-8">
							<input type="password" name="password" id="password" class="form-control"  placeholder="请输入密码">
						</div>
					</div>
					<!--确认密码-->
					<div class="form-group">
						<label  class="col-md-3 control-label"> 确认密码：</label>
						<div class="col-md-8">
							<input type="password" id="conform_pwd" class="form-control"  placeholder="请再次输入密码">
						</div>
					</div>
					
					

					<!--提交按钮-->
					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-8">
							<input  class="btn btn-primary" type="button" id="btn" value="立即注册" />

							<span class="pull-right"><small>已经有账号？</small><a href="/store/user/toLogin.do">登录</a></span>
						</div>
					</div>

				</form>
			</div>

		</div>
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

</html>