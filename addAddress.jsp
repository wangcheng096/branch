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

		<!-- <script type="text/javascript" src="/store/js/distpicker.data.js"></script>
		<script type="text/javascript" src="/store/js/distpicker.js"></script> -->

		<script type="text/javascript">
			 $(function(){
				 //选中select
				 var select = $("#receiverState");
				 //发送ajax请求
				 $.ajax({
					 url:"/store/district/findProvince.do",
					 type:"post",
					 dataType:"json",//返回值类型
					 success:function(data){//服务器返回成功执行
						 var arr = data.data;
					    var result = '';
					    //循环将数组拼接成字符串
					    for(var i=0;i<arr.length;i++){
					    	var d = arr[i];//数组中的每个元素
					    	var text = '<option value="code">name</option>';
					    	//code  name通过变量  d.code  d.name替换掉
					    	text = text.replace('code',d.code);
					    	text = text.replace('name',d.name);
					    	result += text;
					    }
					    //将拼接的文本添加到select上
					    select.append($(result));
					 }
				 })
				 //省份下拉选绑定事件
				 select.change(function(){
					 //alert("触发下拉选");
					 //发送ajax请求，提交code
					 //this代表当前的select,find("option:selected")
					 var option = 
						 $(this).find("option:selected");
					 var value = option.val();
					 //省份发生变化，将区域清空
					 $("#receiverDistrict").empty();
					 //alert(value);
					 //发送ajax请求,请求城市
					 $.ajax({
						 url:"/store/district/findCity.do",
						 type:"post",
						 data:{"parent":value},
						 dataType:"json",
						 success:function(data){
							//选中城市的下拉选
							var city = $("#receiverCity");
							 //清空数据
							 city.empty();
							var result = '';//将拼接的字符串存入该变量
							var arr = data.data;//服务器返回的数据
							for(var i=0;i<arr.length;i++){
								var d = arr[i];
								var text = 
								'<option value="code">name</option>';
								text = text.replace('code',d.code);
								text = text.replace('name',d.name);
								result += text;
							}
							//将拼接的字符串添加到下拉选即可
							city.append($(result));
						 }
					 })
				 });
				 
				 //给城市绑定change事件
				 $("#receiverCity").change(function(){
					 //逻辑
					 //拿到参数
					 var option = $(this).find("option:selected");
					 var value = option.val();
					 var area = $("#receiverDistrict");
					 //清空
					 area.empty();
					 $.ajax({
						 url:"/store/district/findArea.do",
						 type:"post",
						 data:{"parent":value},
						 dataType:"json",
						 success:function(data){
							 var arr = data.data;
							 var result = '';
							 for(var i=0;i<arr.length;i++){
								 var d = arr[i];
								 var text = 
									 '<option value="code">name</option>';
								text = text.replace('code',d.code);
								text = text.replace('name',d.name);
								result += text;
							 }
							 area.append($(result));
						 }
					 })
				 });
			 })		
		</script>

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
					<li><a href="password.html">修改密码</a></li>
					<li><a href="userdata.html">个人资料</a></li>
					<li><a href="upload.html">上传头像</a></li>
					<li class="active"><a href="#">收货管理</a></li>

				</ul>
				<div class="panel-body">
					<!--新增收货地址表单开始-->
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-md-2 control-label"><span style="color: red;">*</span>收货人：</label>
							<div class="col-md-8">
								<input type="text" class="form-control" placeholder="请输入收货人姓名">
							</div>
						</div>
						<div class="address_content" data-toggle="distpicker">
							<div class="form-group">
								<label class="col-md-2 control-label"><span style="color: red;">*</span>省/直辖市：</label>
								<div class="col-md-3">
									<select class="form-control" data-province="---- 选择省 ----" id="receiverState"></select>
								</div>
								<label class="col-md-2 control-label"><span style="color: red;">*</span>城市：</label>
								<div class="col-md-3">
									<select class="form-control" data-city="---- 选择市 ----" id="receiverCity"></select>
								</div>
							</div>
							<div class="form-group ">
								<label class="col-md-2 control-label"><span style="color: red;">*</span>区县：</label>
								<div class="col-md-3">
									<select class="form-control" data-district="---- 选择区 ----" id="receiverDistrict"></select>
								</div>
								<label class="col-md-2 control-label">邮政编码：</label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="请输入邮政编码">
							</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label"><span style="color: red;">*</span>详细地址：</label>
							<div class="col-md-8">
								<textarea class="form-control" rows="3" placeholder="输入详细的收货地址，小区名称、门牌号等"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label"><span style="color: red;">*</span>手机：</label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="请输入手机号码">
							</div>
							<label class="col-md-2 control-label">固话：</label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="请输入固定电话号码">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-2 control-label">地址类型：</label>
							<div class="col-md-8">
								<input type="text" class="form-control" placeholder="请输入地址类型，如：家、公司或者学校">
							</div>
						</div>
						<div class="form-group">

							<label class="col-md-2 control-label"><a href="address.html">返回</a>&nbsp;&nbsp;&nbsp;</label>

							<div class="col-sm-10">
								<input type="button" class="col-md-1 btn btn-primary" value="保存" />

								<input type="reset" class="col-md-offset-1 col-md-1 btn btn-primary" value="重置" />
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