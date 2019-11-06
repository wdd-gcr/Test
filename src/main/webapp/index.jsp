<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <div id="collapseTwo" class="panel-collapse collapse">
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
                                <li>
                                    <a href="javascript:$('#lun').load('${pageContext.request.contextPath}/supplier2.jsp')">供应商信息管理</a>
                                </li>
                                <li><a href="#">客户信息管理</a></li>
                                <li><a href="#">货物信息管理</a></li>
                                <li><a href="#">仓库信息管理</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="lun" class="col-sm-10">
            <div class="panel panel-default">
                <div class="panel-heading">供应商信息管理</div>
                <div class="panel-body">
                    <form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/admin/sousuo"
                          method="post">
                        <div class="form-group">
                            <select class="form-control" id="status1" name="key">
                                <option value="name">名称</option>
                                <option value="leader">负责人</option>
                                <option value="phone">联系电话</option>
                            </select>
                            <input type="text" class="form-control" name="content">
                        </div>
                        <button type="submit" class="btn btn-default btn-success">搜索</button>
                    </form>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button id="add" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span>添加供应商</button>
                <br/><br/>
                <div class="ui-jqgrid-view table-responsive" role="grid" id="gview_table" style="width: 1029px;">
                    <div class="ui-jqgrid-titlebar ui-jqgrid-caption" style="display: none;"><a role="link"
                                                                                                class="ui-jqgrid-titlebar-close HeaderButton "
                                                                                                title="Toggle Expand Collapse Grid"
                                                                                                style="right: 0px;"><span
                            class="ui-jqgrid-headlink glyphicon glyphicon-circle-arrow-up"></span></a><span
                            class="ui-jqgrid-title"></span></div>
                    <div class="ui-jqgrid-hdiv" style="width: 1027px;">
                        <div class="ui-jqgrid-hbox">
                            <table class="ui-jqgrid-htable ui-common-table table table-bordered" style="width:1026px"
                                   role="presentation" aria-labelledby="gbox_table">
                                <thead>
                                <tr class="ui-jqgrid-labels" role="row">
                                    <th id="table_id" role="columnheader" class="ui-th-column ui-th-ltr"
                                        style="width: 205px;" aria-selected="true"><span
                                            class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
                                            style="cursor: col-resize;">&nbsp;</span>
                                        <div class="ui-th-div ui-jqgrid-sortable" id="jqgh_table_id">供应商ID<span
                                                class="s-ico" style=""><span sort="asc"
                                                                             class="ui-grid-ico-sort ui-icon-asc ui-sort-ltr"></span><span
                                                sort="desc"
                                                class="ui-grid-ico-sort ui-icon-desc ui-sort-ltr ui-disabled"></span></span>
                                        </div>
                                    </th>
                                    <th id="table_name" role="columnheader" class="ui-th-column ui-th-ltr"
                                        style="width: 205px;"><span class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
                                                                    style="cursor: col-resize;">&nbsp;</span>
                                        <div class="ui-th-div ui-jqgrid-sortable" id="jqgh_table_name">供应商名称<span
                                                class="s-ico" style="display:none"><span sort="asc"
                                                                                         class="ui-grid-ico-sort ui-icon-asc ui-sort-ltr ui-disabled glyphicon glyphicon-triangle-top"></span><span
                                                sort="desc"
                                                class="ui-grid-ico-sort ui-icon-desc ui-sort-ltr ui-disabled glyphicon glyphicon-triangle-bottom"></span></span>
                                        </div>
                                    </th>
                                    <th id="table_leader" role="columnheader" class="ui-th-column ui-th-ltr "
                                        style="width: 205px;"><span class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
                                                                    style="cursor: col-resize;">&nbsp;</span>
                                        <div class="ui-th-div ui-jqgrid-sortable" id="jqgh_table_leader">负责人<span
                                                class="s-ico" style="display:none"><span sort="asc"
                                                                                         class="ui-grid-ico-sort ui-icon-asc ui-sort-ltr ui-disabled glyphicon glyphicon-triangle-top"></span><span
                                                sort="desc"
                                                class="ui-grid-ico-sort ui-icon-desc ui-sort-ltr ui-disabled glyphicon glyphicon-triangle-bottom"></span></span>
                                        </div>
                                    </th>
                                    <th id="table_phone" role="columnheader" class="ui-th-column ui-th-ltr "
                                        style="width: 205px;"><span class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
                                                                    style="cursor: col-resize;">&nbsp;</span>
                                        <div class="ui-th-div ui-jqgrid-sortable" id="jqgh_table_phone">联系电话<span
                                                class="s-ico" style="display:none"><span sort="asc"
                                                                                         class="ui-grid-ico-sort ui-icon-asc ui-sort-ltr ui-disabled glyphicon glyphicon-triangle-top"></span><span
                                                sort="desc"
                                                class="ui-grid-ico-sort ui-icon-desc ui-sort-ltr ui-disabled glyphicon glyphicon-triangle-bottom"></span></span>
                                        </div>
                                    </th>
                                    <%--<th id="table_option" role="columnheader" class="ui-th-column ui-th-ltr "--%>
                                        <%--style="width: 206px;"><span class="ui-jqgrid-resize ui-jqgrid-resize-ltr"--%>
                                                                    <%--style="cursor: col-resize;">&nbsp;</span>--%>
                                        <%--<div class="ui-th-div ui-jqgrid-sortable" id="jqgh_table_option">操作<span--%>
                                                <%--class="s-ico" style="display:none"><span sort="asc"--%>
                                                                                         <%--class="ui-grid-ico-sort ui-icon-asc ui-sort-ltr ui-disabled glyphicon glyphicon-triangle-top"></span><span--%>
                                                <%--sort="desc"--%>
                                                <%--class="ui-grid-ico-sort ui-icon-desc ui-sort-ltr ui-disabled glyphicon glyphicon-triangle-bottom"></span></span>--%>
                                        <%--</div>--%>
                                    <%--</th>--%>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <div class="ui-jqgrid-bdiv" style="height: 150px; width: 1027px;">
                        <div style="position:relative;">
                            <div></div>
                            <table id="table" tabindex="0" role="presentation" aria-multiselectable="false"
                                   aria-labelledby="gbox_table"
                                   class="ui-jqgrid-btable ui-common-table table table-bordered" style="width: 1026px;">
                                <tbody>
                                <c:forEach items="${requestScope.list}" var="li">
                                    <tr role="row" tabindex="-1" class="jqgrow ui-row-ltr">
                                        <td role="gridcell" style="" aria-describedby="table_id">
                                                ${li.id}
                                        </td>
                                        <td role="gridcell" aria-describedby="table_name">
                                                ${li.name}
                                        </td>
                                        <td role="gridcell" aria-describedby="table_leader">
                                                ${li.leader}
                                        </td>
                                        <td role="gridcell" aria-describedby="table_phone">
                                                ${li.phone}
                                        </td>
                                        <%--<td role="gridcell" aria-describedby="table_option">--%>
                                            <%--<a class="btn btn-primary">删除</a>&nbsp;&nbsp;--%>
                                            <%--<a class="btn btn-danger">修改</a>--%>
                                        <%--</td>--%>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>