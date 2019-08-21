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
		<link rel="stylesheet" type="text/css" href="/store/css/login.css" />
		<link rel="stylesheet" type="text/css" href="/store/css/footer.css" />
		<script src="/store/bootstrap3/js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
		<script src="/store/js/autoLogin.js" type="text/javascript"></script>
	
	<script type="text/javascript">
	//校验用户名和密码不能为空
		function checkParam(){
			//根据ID 查询元素
			var ele_name = document.getElementById('username');
			var ele_pwd = document.getElementById('password');
			var name = ele_name.value;
			var pwd = ele_pwd.value;
			//var reg= / ^\w{3,6}$/;//用正则表达式判断输入用户名的格式
			//console.log(name.test(reg));
			if(name.length>0 && pwd.length >0){
				return true;
			}else{
				alert('用户名或密码不能为空');
				return false;
			}
			
	}
		
	
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
			<div class="loginDiv">
				<h4>用户登录   <span style="color:red">${msg }</span></h4>
				<hr />
				<!--表单开始-->
				<form action="/store/user/login.do" onsubmit="return checkParam();"method="post"  class="form-horizontal" role="form">
					<!--用户名-->
					<div class="form-group">
						<label for="username" class="col-md-3 control-label"><img src="/store/images/index/user.png" height="20" width="20"></label>
						<div class="col-md-8">
							<input type="text" name="username" class="form-control" id="username"  placeholder="请输入用户名">
						</div>
					</div>
					<!--密码-->
					<div class="form-group">
						<label for="password" class="col-md-3 control-label"><img src="/store/images/index/pw.png" height="20" width="20"></label>
						<div class="col-md-8">
							<input type="password" name="password" class="form-control" id="password"  placeholder="请输入密码">
						</div>
					</div>
					<!-- 记住我-->
					<div class="form-group">
						<div class="col-md-offset-3 col-md-6">
							<div class="checkbox">
								<label>
									<input type="checkbox" id="auto">自动登录
								</label>
							</div>
						</div>
					</div>

					<!--提交按钮-->
					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-8">
							<input id="loginBtn" class="btn btn-primary" type="submit" value="登录" />

							<span class="pull-right"><small>还没有账号？</small><a href="/store/user/toRegister.do">注册</a></span>
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