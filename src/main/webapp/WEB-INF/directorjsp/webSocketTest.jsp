<%--
  Created by IntelliJ IDEA.
  User: JK
  Date: 2020-4-14
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	    <title>My WebSocket</title>
	   
	<style>
		#message {
			margin-top: 40px;
			border: 1px solid gray;
			padding: 20px;
		}

	</style>
</head>
<body>
<input type="text" id="nickname"/>
<button onclick="conectWebSocket()">连接WebSocket</button>
<button onclick="closeWebSocket()">断开连接</button>
<hr/>
<br/>
消息：<input id="text" type="text"/>
<button onclick="send()">发送消息</button>
<div id="message"></div>
</body>
<script type="text/javascript">
	var websocket = null;

	function conectWebSocket() {
		var nickname = document.getElementById("nickname").value;
		if(nickname===""){
			alert("请输入昵称");
			return;
		}
		//判断当前浏览器是否支持WebSocket
		if ('WebSocket' in window) {
			//request.getContextPath()
			// websocket = new WebSocket("ws://localhost:10010/websocket");
			websocket = new WebSocket("ws://localhost:10010${pageContext.request.contextPath}/websocket/"+nickname);
			alert("websocket");
		} else {
			alert('Not support websocket')
		}
		//连接发生错误的回调方法
		websocket.onerror = function () {
			setMessageInnerHTML("error");
		};
		//连接成功建立的回调方法
		websocket.onopen = function (event) {
			setMessageInnerHTML("Loc MSG: 成功建立连接");
		}
		//接收到消息的回调方法
		websocket.onmessage = function (event) {
			setMessageInnerHTML(event.data);
		}
		//连接关闭的回调方法
		websocket.onclose = function () {
			setMessageInnerHTML("Loc MSG:关闭连接");
		}
		//监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
		window.onbeforeunload = function () {
			websocket.close();
		}
	}

	//将消息显示在网页上
	function setMessageInnerHTML(innerHTML) {
		document.getElementById('message').innerHTML += innerHTML + '<br/>';
	}

	//关闭连接
	function closeWebSocket() {
		websocket.close();
	}

	//发送消息
	function send() {
		var message = document.getElementById('text').value;
		websocket.send(message);
	}
</script>
</html>
