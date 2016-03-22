<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>联系我们_月升宾馆酒店用品</title>
    <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
    <%@ include file="/WEB-INF/pages/common/shopping-resources.jsp" %>
</head>
<body>
<jsp:include page="../main/header.jsp"/>

<!--breadcrumb start-->
<div class="breadcrumb-wrapper">
    <div class="container">
        <h1>联系 我们</h1>
    </div>
</div>
<!--end breadcrumb-->

<div class="space-60"></div>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h3>我们很高兴听到您的意见反馈. </h3>
            <p>
                如果您对我们公司有什么意见或建议，请在下面提出来并给我们发送，我们很高兴得到您的支持!月升酒店用品经营部已把过去单一产品发展为现在拥有生产客房用品；酒店用品；宾馆配套设备，等多产品全面发展的新企业。欢迎各宾馆，酒店经理负责人前来访问咨询洽谈业务.欢迎各单位企事业前来定购 . 月升酒店用品经营部从事生产多年，产品齐全，经验丰富，资金雄厚。产品遍布全国各地。 欢迎各单位企事业定做工作服,(一次合作,终身朋友)资金雄厚,售后服务一流!
            </p>
            <form name="sentMessage" id="contactForm" method="post" novalidate="">
                <div class="row">
                    <div class="col-md-6">
                        <div class="row control-group">
                            <div class="form-group col-xs-12 controls">

                                <input type="text" class="form-control" placeholder="姓名" id="name" required="" data-validation-required-message="请输入您的姓名." aria-invalid="false">
                                <p class="help-block"></p>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-6">
                        <div class="row control-group">
                            <div class="form-group col-xs-12 controls">

                                <input type="email" class="form-control" placeholder="邮件地址" id="email" required="" data-validation-required-message="请输入您的邮件地址.">
                                <p class="help-block"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row control-group">
                    <div class="form-group col-xs-12 controls">

                        <textarea rows="5" class="form-control" placeholder="意见/建议内容" id="message" required="" data-validation-required-message="请输入您的意见或建议."></textarea>
                        <p class="help-block"></p>
                    </div>
                </div>

                <div id="success"></div>
                <div class="row">
                    <div class="form-group col-xs-12">
                        <button type="submit" class="btn btn-skin btn-lg">发送意见或建议</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-6">
            <!-- map -->
            <div id="dituContent" style="width:100%; height: 300px;"></div>
            <div class="space-40"></div>
            <ul class="list-unstyled contact contact-info">
                <li><p><strong><i class="fa fa-map-marker"></i> 公司地址:</strong> 江苏省泰州市海陵区温泰市场#81055-#81060</p></li>
                <li><p><strong><i class="fa fa-envelope"></i> 给我们发邮件:</strong> <a href="mailto:benjaminwhx@sina.com">benjaminwhx@sina.com</a></p></li>
                <li> <p style="display: inline;"><strong><i class="fa fa-phone"></i> 座机1:</strong> +86 0523-82939856</p>&nbsp;&nbsp;&nbsp;&nbsp;<p style="display: inline"><strong><i class="fa fa-phone"></i> 座机2:</strong> +86 0523-86273766</p></li>
                <li> <p style="display: inline;"><strong><i class="fa fa-phone"></i> 手机1:</strong> +86 13182204990</p>&nbsp;&nbsp;&nbsp;&nbsp;<p style="display: inline"><strong><i class="fa fa-phone"></i> 手机2:</strong> +86 18752600665</p></li>
                <li><p></p></li>
                <li> <p><strong><i class="fa fa-print"></i> 传真:</strong> +86 0523-86665052</p></li>
            </ul>
        </div>
    </div>
</div>
<div class="space-60"></div>

<%@include file="../main/footer.jsp"%>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
        addRemark();//向地图中添加文字标注
    }

    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(119.966605,32.504027);//定义一个中心点坐标
        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
        var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
        map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
        var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
        map.addControl(ctrl_sca);
    }

    //标注点数组
    var markerArr = [{title:"温泰市场",content:"江苏省泰州市海陵区南通路温泰市场1区81055-81060&nbsp;月升宾馆酒店用品有限公司",point:"119.966668|32.504095",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
    ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
            var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                borderColor:"#808080",
                color:"#333",
                cursor:"pointer"
            });

            (function(){
                var index = i;
                var _iw = createInfoWindow(i);
                var _marker = marker;
                _marker.addEventListener("click",function(){
                    this.openInfoWindow(_iw);
                });
                _iw.addEventListener("open",function(){
                    _marker.getLabel().hide();
                })
                _iw.addEventListener("close",function(){
                    _marker.getLabel().show();
                })
                label.addEventListener("click",function(){
                    _marker.openInfoWindow(_iw);
                })
                if(!!json.isOpen){
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    //文字标注数组
    var lbPoints = [{point:"119.96629|32.504438",content:"月升宾馆酒店用品有限公司"}
    ];
    //向地图中添加文字标注函数
    function addRemark(){
        for(var i=0;i<lbPoints.length;i++){
            var json = lbPoints[i];
            var p1 = json.point.split("|")[0];
            var p2 = json.point.split("|")[1];
            var label = new BMap.Label("<div style='padding:2px;'>"+json.content+"</div>",{point:new BMap.Point(p1,p2),offset:new BMap.Size(3,-6)});
            map.addOverlay(label);
            label.setStyle({borderColor:"#999"});
        }
    }

    initMap();//创建和初始化地图
</script>
</body>