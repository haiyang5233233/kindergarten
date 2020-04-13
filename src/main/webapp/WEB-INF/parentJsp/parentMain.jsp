<%--
  Created by IntelliJ IDEA.
  User: Mr.Fan
  Date: 2020-4-6
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Stict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<%@ include file="/commons/basejs.jsp" %>
<head>

    <title>智慧幼儿园-首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/mainres/css/main.css">
    <style type="text/css">
        html, body {
            margin: 0;
            padding: 0;
        }
    </style>
    <!--加载meta IE兼容文件-->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"/>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"/>
    <![endif]-->


</head>
<body>

<!-- header -->
<div class="header_box">

    <ul class="layui-nav layui-layout-right" style="background-color: white;">
        <li class="layui-nav-item" >
            <a href="javascript:;" style="color: black;font-size: 18px">
                <img src="${pageContext.request.contextPath}/image/logo/head.jpg" class="layui-nav-img">
                &nbsp;欢迎您：${sessionScope.onlineParent.parentName}&nbsp;
            </a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:void(0)" id="a1">个人信息</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item"><a href="javascript:void(0); "  id="exit" style="color: black;font-size: 18px">注销</a></li>
    </ul>


    <div class="header" style="max-width: 80%">
        <ul class="app-header">
            <li class="app-header-menuicon">
                <i class="layui-icon layui-icon-more-vertical"></i>
            </li>
        </ul>
        <h1 class="logo">
            <img style="width: 100%;height: 90px" src="${pageContext.request.contextPath}/image/logo/logo.png">
        </h1>
        <h1 style="margin-left: 21%;font-size: 40px;color: coral">家长端首页</h1>

    </div>
</div>
<!-- end-header -->


<!-- content -->
<div class="content">
    <div class="title">
        <h3>世上最大的恩情，莫过于父母的养育之恩</h3>
        <h4>The greatest kindness in the world is the kindness of parenting.</h4>
    </div>
    <div class="layui-carousel imgbox" id="test1">
        <div carousel-item class="imgH">
            <div><img style="width: 100%" src="${pageContext.request.contextPath}/image/carousel/main-1.jpg"></div>
            <div><img style="width: 100%" src="${pageContext.request.contextPath}/image/carousel/main-2.jpg"></div>
            <div><img style="width: 100%" src="${pageContext.request.contextPath}/image/carousel/main-3.jpg"></div>
            <div><img style="width: 100%" src="${pageContext.request.contextPath}/image/carousel/main-4.jpg"></div>
            <div><img style="width: 100%" src="${pageContext.request.contextPath}/image/carousel/main-5.jpg"></div>
        </div>
    </div>

    <div class="prod-show">

        <div class="layui-fluid">
            <div class="row layui-col-space12 layui-clear">


                <div class="layui-col-xs6 layui-col-sm6 layui-col-md3" style="width: 50%">
                    <div class="img-txt">
                        <h3><button type="button" id="FaceRecognition" class="layui-btn layui-btn-lg layui-btn-normal" style="width: 100%;height: 100%;font-size: 20px">人脸识别</button></h3>
                    </div>



                </div>

                <div class="layui-col-xs6 layui-col-sm6 layui-col-md3" style="width: 50%">
                    <div class="img-txt">
                        <h3><button type="button" class="layui-btn layui-btn-lg layui-btn-warm" style="width: 100%;height: 100%;font-size: 20px">作业中心</button></h3>
                    </div>
                </div>

                <div class="layui-col-xs6 layui-col-sm6 layui-col-md3" style="width: 50%">
                    <div class="img-txt">
                        <h3><button type="button" id="SafetyVideo" class="layui-btn layui-btn-lg layui-btn-normal" style="width: 100%;height: 100%;font-size: 20px">安全教育</button></h3>
                    </div>
                </div>


                <div class="layui-col-xs6 layui-col-sm6 layui-col-md3" style="width: 50%">
                    <div class="img-txt">
                        <h3><button type="button" class="layui-btn layui-btn-lg layui-btn-warm" style="width: 100%;height: 100%;font-size: 20px">幼儿中心</button></h3>
                    </div>
                </div>

            </div>


            <div class="row layui-col-space12 layui-clear">

                <div class="layui-col-xs6 layui-col-sm6 layui-col-md3" style="width: 50%">
                    <div class="img-txt">
                        <h3><button type="button" class="layui-btn layui-btn-lg layui-btn-normal" style="width: 100%;height: 100%;font-size: 20px">资源中心</button></h3>
                    </div>
                </div>

                <div class="layui-col-xs6 layui-col-sm6 layui-col-md3" style="width: 50%">
                    <div class="img-txt">
                        <h3><button type="button" class="layui-btn layui-btn-lg layui-btn-normal" style="width: 100%;height: 100%;font-size: 20px">消息中心</button></h3>
                    </div>
                </div>


            </div>
        </div>
    </div>


    <div class="prod-show">
        <div class="layui-fluid">
            <div class="row layui-col-space12 layui-clear">
                <div class="layui-col-xs6 layui-col-sm6 layui-col-md3" style="width: 50%">
                    <div class="img-txt">
                        <h3 style="text-align: left">园所动态News</h3>
                        <div  style=" overflow:auto;" >

                            <a href="javascript:;">新闻一</a><br>
                            <a href="javascript:;">新闻二</a><br>
                            <a href="javascript:;">新闻三</a><br>
                            <a href="javascript:;">新闻四</a><br>
                            <a href="javascript:;">新闻五</a>

                        </div>

                    </div>
                </div>
                <div class="layui-col-xs6 layui-col-sm6 layui-col-md3" style="width: 50%">
                    <div class="img-txt">
                        <h3 style="text-align: left">园所视频Videos</h3>
                        <div style=" overflow:auto;">
                            
                            <a  id="playVideos"><img src="${path}/image/logo/logo.png" alt=""/></a><br>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</div>

<!-- footer -->
<div class="footer">
    <div class="line"></div>
    <p class="copyright">
        @2020 最后#的小组 版权所有©<br/>
        E-MAIL:kindergarten@outlook.com<br/>
        TEL:400-888-888
    </p>
    <div class="icon_box">
        <a href="#"><i class="layui-icon layui-icon-login-wechat weixin-icon"></i></a>
        <a href="#"><i class="layui-icon layui-icon-login-weibo weibo-icon"></i></a>
    </div>
</div>
<!-- end-footer -->
<script>
    layui.use(['carousel', 'jquery', 'element','layer'], function () {
        var carousel = layui.carousel, $ = layui.$;
        var element = layui.element;
        var layer = layui.layer;
        //建造实例
        carousel.render({
            elem: '#test1'
            , width: '100%' //设置容器宽度
            , arrow: 'always'
            , height: 'auto'
            //,anim: 'updown' //切换动画方式
        });
        $('.app-header-menuicon').on('click', function () {
            $('.header-down-nav').toggleClass('down-nav')
        });
        var imgH = $('.imgbox div.layui-this').outerHeight();
        $('.imgH').css('height', imgH + 'px');
        window.onresize = function () {
            var imgH = $('.imgbox div.layui-this').outerHeight();
            $('.imgH').css('height', imgH + 'px')
        };

        $(function () {


            $("#a1").click(function () {
                layer.open({
                    type: 2,
                    area: ['95%', '80%'],
                    offset: ['10%', '3%'],
                    title:"智慧幼儿园-家长个人信息页",
                    btn1: function (index, layero) {
                        //layer.getChildFrame("form", index)获取iframe的表单
                        //serializeArray jquery方法，将表单对象序列化为数组
                        layer.close(index);
                    },
                    content: path + '/parent/toUrl/parentInfo' //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                    , success: function (layero, index) {

                    }
                });
            });

            $("#exit").click(function () {
                layer.confirm('您确定要退出到登录界面吗?', {icon: 3, title:'温馨提示'},function(index){
                    layer.close(index);
                    sessionStorage.clear();//清除session信息
                    location.href=path+'/parent/logout';
                });
            });

            //人脸识别跳转
            $("#FaceRecognition").click(function () {
                window.location.href=path+"/parent/toUrl/parentFaceRecognition"
            });

            //前往查看安全试题跳转
            $("#SafetyVideo").click(function () {
                window.location.href=path+"/parent/toUrl/SafetyTestTable"
            });


            //点击查看园所视频
            $("#playVideos").click(function () {

                //打开一个窗口播放视频
                layer.open({
                    //打开一个窗口播放视频
                    type: 1,
                    area: ['70%', '70%'],
	                offset:['10%','5%'],
	                title:'',
                    content:'<video width="100%" height="100%"  controls="controls" autobuffer="autobuffer"  autoplay="autoplay" loop="loop">' +
                            '<source src="${pageContext.request.contextPath}/videos/TakeTheElevatorSafely.mp4" type="video/mp4"></source></video>'
                    //直接跳出一个标签播放视频
                });
            });

        });
    });

</script>


</body>
</html>
