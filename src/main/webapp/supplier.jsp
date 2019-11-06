<%@ page pageEncoding="UTF-8" contentType="text/html;UTF-8" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="http://system.tjldsd.com:80/style/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" href="http://system.tjldsd.com:80/style/animate.css"/>
    <link href="http://system.tjldsd.com:80/style/loginstyle.css" rel="stylesheet"/>
    <script type="text/javascript"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
</head>

<body>
<!--导航条  头部-->
<!--添加导航条的样式-->

<nav class="navbar navbar-default">
    <div class="container-fluid" style="background: #F8F8F8">

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="#">仓库管理系统</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#" class="glyphicon glyphicon-user">欢迎用户名:</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle"
                       data-toggle="dropdown">${sessionScope.loginAdmin.name} <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/admin/end">安全退出</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!--左边部分 手风琴-->
<!--用户菜单-->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-2">
            <!--添加面板组的样式--> <!--保证面板之间可以进行对应的交互-->
            <div class="panel-group" id="accordion" role="tablist">
                <!--默认样式的面板-->
                <div class="panel panel-default">
                    <!--面板头-->
                    <div class="panel-heading">
                        <!--面板标题-->
                        <h4 class="panel-title">
                            <!--添加手风琴的触发器--> <!--保证面板之间可以进行对应的交互-->
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                库存管理
                            </a>
                        </h4>
                    </div>
                    <!--展示的具体内容-->
                    <div id="collapseOne" class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#" data-parent="#accordion">用户列表</a></li>
                                <!--触发器-->
                                <li><a href="#info" data-toggle="modal">用户添加</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--类别菜单-->
                <div class="panel panel-default">
                    <div class="panel-heading" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                出入库管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" >
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">类别列表</a></li>
                                <li><a href="#">类别添加</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--图书菜单-->
                <div class="panel panel-default">
                    <div class="panel-heading" id="heading">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThrees">
                                人员管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThrees" class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">仓库列表</a></li>
                                <li><a href="#">仓库添加</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--订单菜单-->
                <div class="panel panel-default">
                    <div class="panel-heading" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                基础数据
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="javascript:$('#lun').load('${pageContext.request.contextPath}/supplier2.jsp')">供应商信息管理</a></li>
                                <li><a href="#">客户信息管理</a></li>
                                <li><a href="#">货物信息管理</a></li>
                                <li><a href="#">仓库信息管理</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-10">
            <div id="lun">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <div class="carousel-caption">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        <!--模态框-->
        <div class="modal fade" id="info" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">编辑用户信息</h4>
                    </div>
                    <div class="modal-body">
                        <!--表单-->
                        <form action="" class="form-horizontal">
                            <div class="form-group">
                                <label for="name" class="control-label col-xs-2">供应商名称</label>
                                <div class="col-xs-8">
                                    <input type="text" name="name" class="form-control" id="name" placeholder="请输入姓名">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="leader" class="control-label col-xs-2">负责人</label>
                                <div class="col-xs-8">
                                    <input type="password" name="leader" class="form-control" id="leader" placeholder="请输入密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="phone" class="control-label col-xs-2">联系电话</label>
                                <div class="col-xs-8">
                                    <input type="text" name="phone" class="form-control" id="phone" placeholder="请输入年龄">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">保存</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>
</body>
</html>