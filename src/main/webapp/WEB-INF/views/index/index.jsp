<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <base href="<%=basePath%>">

    <title>WMS仓储管理系统</title>

    <link href="${__static__}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${__static__}/css/styles.css" rel="stylesheet" type="text/css"/>
    <link href="${__static__}/css/skin/jquery-accordion-menu.css" rel="stylesheet" type="text/css"/>
    <link href="${__static__}/css/skin/default.css" rel="stylesheet">
    <link href="${__static__}/css/skin/font-awesome.css" rel="stylesheet">
</head>

<%@ include file="common.jsp" %>
<body>
<%@ include file="header.jsp" %>
<div class="zlzkj_main_content">
    <!-- Left column -->
    <div class="nav">
        <div id="jquery-accordion-menu" class="jquery-accordion-menu blue">
            <div class="jquery-accordion-menu-header" id="form"><fmt:formatDate value="${now}" pattern="yyyy年M月d日 E"/></div>
            <ul id="demo-list">
                <li class="active"><a href="#"><i class="fa fa-home"></i>首页 </a></li>
                <li><a href="#"><i class="fa fa-glass"></i>仓库管理 </a>
                    <ul class="submenu">
                        <li><a href="#">仓库管理 </a></li>
                        <li><a href="#">货位管理 </a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="fa fa-file-image-o"></i>入库管理 </a>
                    <ul class="submenu">
                        <li><a href="#">自动入库管理 </a></li>
                        <li><a href="#">入库作业 </a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="fa fa-cog"></i>出库管理 </a>
                    <ul class="submenu">
                        <li><a href="#">自动出库管理 </a></li>
                        <li><a href="#">出库作业 </a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="fa fa-home"></i>库存管理 </a>
                    <ul class="submenu">
                        <li><a href="#">货物库存查询</a></li>
                        <li><a href="#">货物库位查询</a></li>
                        <li><a href="#">库存调整 </a></li>
                        <li><a href="#">阈值预警 </a></li>
                        <li><a href="#">库存报表 </a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="fa fa-user"></i>RFID管理 </a>
                    <ul class="submenu">
                        <li><a href="#">入库验货</a></li>
                        <li><a href="#">上架登记 </a></li>
                        <li><a href="#">整箱登记 </a></li>
                        <li><a href="#">出库确认 </a></li>
                        <li><a href="#">盘点确认 </a></li>
                        <li><a href="#">移库确认 </a></li>
                        <li><a href="#">补货确认 </a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="fa fa-check-square-o"></i>盘点管理
                </a>
                    <ul class="submenu">
                        <li><a href="#">盘点计划管理</a></li>
                        <li><a href="#">盘点任务管理</a></li>
                        <li><a href="#">盘点管理 </a></li>
                        <li><a href="#">盘点计划 </a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="fa fa-cube"></i>物品管理
                </a>
                    <ul class="submenu">
                        <li><a href="#">权限管理</a></li>
                        <li><a href="#">设备管理 </a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="fa fa-suitcase"></i>系统管理 </a>
                    <ul class="submenu">
                        <li><a href="#">权限管理</a></li>
                        <li><a href="#">设备管理 </a></li>
                        <li><a href="#" tar-href="${z:u('user/index')}">人员管理 </a></li>
                    </ul>
                </li>
                <%--<li><a href="#"><i class="fa fa-user"></i>About </a></li>--%>
                <%--<li><a href="#" tar-href="${z:u('system/log')}"><i class="fa fa-envelope"></i>日志管理 </a></li>--%>

            </ul>
            <%--<div class="jquery-accordion-menu-footer">
                Footer
            </div>--%>
        </div>
    </div>
    <!-- Main content -->
    <div class="zlzkj_content light-gray-bg">
        <div class="templatemo-content col-1 light-gray-bg">
            <div class="zlzkj_item_content table-responsive">
                <div class="zlzkj_index_content_item">
                    <div class="zlzkj_index_content_item_left">
                        <p><i class="fa fa-codepen"></i></p>
                    </div>
                    <div class="zlzkj_index_content_item_right">
                        <div class="p1">RFID标签管理</div>
                        <div class="p2">
                            对每一件产品进行RFID标签绑定，从上标签开始一直精确监控到出库，有效提高盘点和出库效率，可供数据分析
                        </div>
                    </div>

                </div>
                <div class="zlzkj_index_content_item">
                    <div class="zlzkj_index_content_item_left">
                        <p><i class="fa fa-cubes"></i></p>
                    </div>
                    <div class="zlzkj_index_content_item_right">
                        <div class="p1">产品信息及库存管理</div>
                        <div class="p2">维护产品信息，控制库存，设定阈值，红字货物库存预警</div>
                    </div>
                </div>
                <div class="zlzkj_index_content_item">
                    <div class="zlzkj_index_content_item_left">
                        <p><i class="fa fa-th-large"></i></p>
                    </div>
                    <div class="zlzkj_index_content_item_right">
                        <div class="p1">仓库管理</div>
                        <div class="p2">仓库位置信息，容量信息，以及其包含的货架，库存区等管理，方便仓库管理员快速定位产品，降低人力劳动力</div>
                    </div>
                </div>
                <div class="zlzkj_index_content_item">
                    <div class="zlzkj_index_content_item_left">
                        <p><i class="fa fa-truck"></i></p>
                    </div>
                    <div class="zlzkj_index_content_item_right">
                        <div class="p1">出入库管理</div>
                        <div class="p2">依据出入库单号，可通过人工选定和系统分配两种方式，对仓库产品进行出入库操作</div>
                    </div>
                </div>
                <div class="zlzkj_index_content_item">
                    <div class="zlzkj_index_content_item_left">
                        <p><i class="fa fa-check-square-o"></i></p>
                    </div>
                    <div class="zlzkj_index_content_item_right">
                        <div class="p1">盘点管理</div>
                        <div class="p2">自定义盘点范围，盘点时间，通过RFID标签可大大提高盘点效率，释放人力资源，减少人工劳动力</div>
                    </div>
                </div>
                <div class="zlzkj_index_content_item">

                    <div class="zlzkj_index_content_item_left">
                        <p><i class="fa fa-cloud-upload"></i></p>
                    </div>
                    <div class="zlzkj_index_content_item_right">
                        <div class="p1">云数据管理</div>
                        <div class="p2">将仓库管理数据上传至云端，可供质量追溯，数据分析，产品结构分析，便于产品结构转型升级</div>
                    </div>
                </div>
                <div class="zlzkj_index_content_item">
                    <div class="zlzkj_index_content_item_left">
                        <p><i class="fa fa-bar-chart-o"></i></p>
                    </div>
                    <div class="zlzkj_index_content_item_right">
                        <div class="p1">统计报表</div>
                        <div class="p2">通过划定时间范围，对产品进行数据分析，提供高效可视化效果展示，提供极佳的互联网体验</div>
                    </div>
                </div>
                <div class="zlzkj_index_content_item">
                    <div class="zlzkj_index_content_item_left">
                        <p><i class="fa fa-suitcase"></i></p>
                    </div>
                    <div class="zlzkj_index_content_item_right">
                        <div class="p1">系统管理</div>
                        <div class="p2">基于Saas模式的用户，角色，权限嵌套管理</div>
                    </div>
                </div>
            </div>

        </div>

        <footer class="zlzkj_footer">
            <p>Copyright &copy; HangZhou DingYan Tech
                | 杭州鼎研科技有限公司版权所有</p>
        </footer>
    </div>
</div>
<!-- JS -->
<script src="${__static__}/js/bootstrap.min.js"></script>
<script src='${__static__}/js/skin/jquery-accordion-menu.js'></script>

<script type="text/javascript">
    $(function () {

        jQuery("#jquery-accordion-menu").jqueryAccordionMenu();

        $(".jquery-accordion-menu li a").off('click').on("click", function () {
            $(".jquery-accordion-menu li a.active").removeClass("active");
            $(".jquery-accordion-menu li.active").removeClass("active");
            $(this).addClass("active").closest("ul").closest("li").addClass("active");
            var tar_href = $(this).attr("tar-href");
            $(".zlzkj_content").load(tar_href, function () {
                $("#content").load(tar_href + " #content", function (result) {
                    $result = $(result);
                    $result.find("script").appendTo('#content');
                });
            });
        })

    });
</script>
</body>
</html>
