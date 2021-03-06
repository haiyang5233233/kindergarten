<%--
  Created by IntelliJ IDEA.
  User: Mr.Fan
  Date: 2020-3-9
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>智慧幼儿园-园长登录界面</title>
	<%String path = request.getContextPath(); %>
	<link rel="stylesheet" href=<%=path+"/layui/css/layui.css" %>>
	<script src=<%=path + "/layui/layui.js"%>></script>
	<style type="text/css">
		* {
			margin: 0;
			padding: 0;
		}

		html {
			width: 100%;
			height: 100%;
		}

		body {
			width: 100%;
			height: 100%;
			background-image: url("${pageContext.request.contextPath}/image/loginreg/Login.jpg");
			background-size: 100% 100%;
			background-attachment: fixed;
		}

		#alldiv {
			position: absolute;
			width: 100%;
			height: 100%;
		}

		#hh1 {
			color: black;
			font-weight: bold;
			font-size: 24px;
			margin-top: 3%;
			font-family: 楷体;
			text-align: center;
		}

		.container {
			position: absolute;
			width: 28%;
			height: 39%;
			min-height: 33%;
			max-height: 50%;
			top: 0;
			left: 0;
			bottom: 0;
			right: 0;
			margin: auto;
			padding: 20px;
			z-index: 130;
			border-radius: 10px;
			background-color: rgba(240, 255, 255, 0.2);
			box-shadow: 0 3px 18px rgba(21, 49, 31, 0.39);
		}

		.layui-input {
			border-radius: 5px;
			width: 160%;
			height: 40px;
		}

		.layui-form-item {
			color: #3a3a3a;
		}

		.layui-btn {
			margin-left: -15%;
			border-radius: 5px;
			width: 85%;
			height: 15%;
			font-size: 20px;
		}

		.verity {
			width: 60%;
		}

		#bu3 {
			width: 30%;
			height: 8%;
			margin-left: 18%;
			font-size: 13px;
			background-color: transparent;
			color: black;
		}

		#bu4 {
			position: absolute;
			width: 30%;
			height: 8%;
			font-size: 13px;
			background-color: transparent;
			color: black;
		}

		#bu3:hover {
			color: #09ff3d;
		}

		#bu4:hover {
			color: #09ff3d;
		}


		#codediv {
			position: absolute;
			background-color: transparent;
			margin-left: 48%;
			width: 45%;
			height: 12.5%;
		}

		#code {
			width: 40%;
			height: 75%;
			border-radius: 3px;
			margin-top: 2%;
		}

		#bu1 {
			position: absolute;
			width: 55%;
			height: 50%;
			margin-left: 1%;
			margin-top: 4%;
			border: none;
			font-size: 13px;
			background-color: transparent;
			color: red;
		}

		.admin-icon {
			position: absolute;
			margin-left: 170%;
			margin-top: 10px;
		}

		.btn {
			/*margin-left: 7%;*/
			text-align: center;
			/*margin-left: 20%;*/
		}

	</style>

</head>
<body>
<form class="layui-form" method="post">
	<input type="hidden" id="path" value="<%=path%>">
	<div id="alldiv">
		<div class="container">
			<h1 id="hh1">智慧幼儿园园所长登录界面</h1>
			<hr style="color: white">
			<div class="layui-form-item">
				<label class="layui-form-label">用户名</label>
				<div class="layui-input-inline">
					<i class="layui-icon layui-icon-username admin-icon admin-icon-username"></i>
					<input type="text" name="username" lay-verify="required" placeholder="请输入用户名" value="刘金坤"
					       autocomplete="off" class="layui-input" id="te1">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">密 &nbsp;&nbsp;码</label>
				<div class="layui-input-inline">
					<i class="layui-icon layui-icon-password admin-icon admin-icon-password"></i>
					<input type="password" name="userpwd" required lay-verify="pass" placeholder="请输入6-12位密码"
					       value="123456"
					       autocomplete="off" class="layui-input" id="te2">
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">验证码</label>
				<div class="layui-input-inline">
					<input type="text" name="code" lay-verify="code" placeholder="请输入验证码"
					       autocomplete="off" class="layui-input verity">
				</div>

				<div id="codediv">
					<img src="${pageContext.request.contextPath}/director/loginCode" id="code">
					<input type="button" id="bu1" value="看不清？换一张">
				</div>
			</div>

			<div class="layui-form-item btn">
				<div class="layui-input-block">
					<button type="button" class="layui-btn layui-btn-normal" id="bu2" lay-submit lay-filter="formDemo">
						立即登录
					</button>
				</div>
			</div>

			<div id="butdiv">
				<button type="button" class="layui-btn" id="bu3">忘记密码？</button>
				<button type="button" class="layui-btn" id="bu4">点击此处返回首页</button>
			</div>
		</div>
	</div>
	<div id="type-content" style="display: none;">
		<div class="layui-form-item" style="margin-left: 50px;">
			<div class="layui-inline">
				<input type="text" id="rectorphone" placeholder="请输入11位手机号码" value=""
				       autocomplete="off" class="layui-input" style="width: 332px;margin-top: 8%">
			</div>
		</div>
	</div>

</form>

<script>

	layui.use(['form', 'layer', 'jquery', 'layedit', 'laydate'], function () {
		var form = layui.form
			, layer = layui.layer
			, layedit = layui.layedit
			, laydate = layui.laydate;
		$ = layui.jquery;
		form.verify({
			required: function (value) {
				if (value.length < 2) {
					return '您好，用户名至少得2个字符！';
				}
				if (!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)) {
					return '用户名不能有特殊字符';
				}
				if (/(^\_)|(\__)|(\_+$)/.test(value)) {
					return '用户名首尾不能出现下划线\'_\'';
				}
				if (/^\d+\d+\d$/.test(value)) {
					return '用户名不能全为数字';
				}
			},
			//数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
			pass: [
				/^[\S]{6,12}$/
				, '您好，密码必须6~12位，且不能出现空格！'
			],
			code: function (value) {
				if (value.length != 4) {
					return '您好，验证码是4位数！';
				}
			}
			, content: function (value) {
				layedit.sync(editIndex);
			}

		});
		form.on('submit(formDemo)', function (data) {
			var path = $("#path").val();
			$.ajax({
				url: path + "/director/directorLogin",
				async: true,
				type: "post",
				data: data.field,
				datatype: "text",
				success: function (msg) {
					if (msg === "success") {
						layer.alert("登录成功！", {icon: 6}, function () {
							location.href = path + "/director/toUrl/directorMain";
						});
					} else if (msg === "error") {
						layer.alert("登录失败！", {icon: 2});
						var code = document.getElementById("code");
						code.src = path + "/director/loginCode?" + time;
					} else if (msg === "codeerror") {
						layer.alert("验证码错误！", {icon: 2});
						var code = document.getElementById("code");
						code.src = path + "/director/loginCode?" + time;
					} else if (msg === "notmen") {
						layer.alert("该用户已被禁用或者不存在！", {icon: 2});
						var code = document.getElementById("code");
						code.src = path + "/director/loginCode?" + time;
					}
				}, error: function (msg) {
					layer.alert("网络繁忙！", {icon: 2});
					var code = document.getElementById("code");
					code.src = path + "/director/loginCode?" + time;
				}
			});
		});

		$(function () {
			$("#code").click(function () {
				var time = new Date();
				var path = $("#path").val();
				var code = document.getElementById("code");
				code.src = path + "/director/loginCode?" + time;
			});
			$("#bu1").click(function () {
				var time = new Date();
				var path = $("#path").val();
				var code = document.getElementById("code");
				code.src = path + "/director/loginCode?" + time;

			});
			$("#bu3").click(function () {
				var path = $("#path").val();
				layer.open({
					type: 1,
					content: $("#type-content"), //数组第二项即吸附元素选择器或者DOM
					title: '个人密码重置',
					btn: ['确定', '取消'],
					area: ['26%', '28%'],
					offset: ['30%'],
					btnAlign: 'c',
					btn1: function (index) {
						var rectorphone = $("#rectorphone").val();
						var num = /^1\d{10}$/;
						if (!num.test(rectorphone)) {
							layer.alert("您好，手机号码必须11位，且不能出现空格！", {icon: 2});
						} else {
							$.ajax({
								url: path + '/director/resetRectorPwd',
								async: true,
								type: 'post',
								data: {"rectorphone": rectorphone},
								datatype: 'text',
								success: function (data) {
									if (data == "error") {
										layer.alert("重置失败！", {icon: 2});
									} else {
										layer.alert("重置成功，新密码为：'123456' ", {icon: 6});
										layer.close(index);
									}
								}, error: function (data) {
									layer.alert("网络繁忙！", {icon: 2});
								}
							});
						}
					}
				});
			});
			$("#bu4").click(function () {
				var path = $("#path").val();
				location.href = path + "/main/path/main";
			});
		})
	});
</script>

</body>
</html>
