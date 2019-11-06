<%@page pageEncoding="UTF-8" contentType="text/html; UTF_8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!--引入BootStrap的css样式-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
    <!--引入BootStrap与JQGRID整合的css样式-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/boot-jqgrid/css/trirand/ui.jqgrid-bootstrap.css">
    <!--引入jquery的js文件-->
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.3.1.min.js"></script>
    <!--引入bootstrap的js文件-->
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <!--引入BootStrap与JQGRID整合的国际化文件-->
    <script src="${pageContext.request.contextPath}/boot-jqgrid/js/trirand/i18n/grid.locale-cn.js"></script>
    <!--引入BootStrap与JQGRID整合过后的js文件-->
    <script src="${pageContext.request.contextPath}/boot-jqgrid/js/trirand/jquery.jqGrid.min.js"></script>

    <script type="application/javascript">
        $(function () {
            $("#table").jqGrid({
                styleUI: "Bootstrap",
                url: "${pageContext.request.contextPath}/admin/querySup",
                datatype: "json",
                autowidth: true,
                pager: "#pager",
                rowNum: "3",
                rowList: ["3", "6", "9"],
                viewrecords: true,
                editurl: "${pageContext.request.contextPath}/admin/edit",
                colNames: ["供应商ID", "供应商名称", "负责人", "联系电话", "操作"],
                colModel: [
                    {name: "id"},
                    {name: "name", editable: true},
                    {name: "leader", editable: true},
                    {name: "phone", editable: true},
                    {
                        name: "option", formatter: function (cellvalue, options, rowObject) {
                            return "<a class='btn btn-primary' onclick=\"del('" + rowObject.id + "')\">删除</a>&nbsp;&nbsp;<a class='btn btn-danger' onclick=\"update('" + rowObject.id + "')\">修改</a>";
                        }
                    }
                ]
            }).jqGrid("navGrid","#pager",{edit:true});

            //给对应的按钮添加单击事件
            //添加
            $("#add").click(function () {
                //给对应的目标JQGRID表格做添加操作
                $("#table").jqGrid('editGridRow', "new", {
                    height: 400,
                    reloadAfterSubmit: true  //添加过后是否进行刷新
                });
            });
        });

        function update(rowid) {
            //获取选中行的rowid
            if (rowid != null)
            //调用修改的方法
                $("#table").jqGrid('editGridRow', rowid, {
                    height: 400,
                    reloadAfterSubmit: true
                });
            else
                alert("请选中一行");
        }

        function del(rowid) {
            //改行的ID
            if (rowid != null)
                $("#table").jqGrid('delGridRow', rowid, {
                    reloadAfterSubmit: true
                });
            else
                alert("请选中一行");
        }
    </script>

</head>
<body>

<div class="panel panel-default">
    <div class="panel-heading">供应商信息管理</div>
    <div class="panel-body">
        <form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/admin/sousuo" method="post">
            <div class="form-group">
                <select class="form-control" id="status1" name="key">
                    <option value="name">名称</option>
                    <option value="leader">负责人</option>
                    <option value="phone">联系电话</option>
                </select>
                <input type="text" class="form-control" name="content" >
            </div>
            <button type="submit" class="btn btn-default btn-success">搜索</button>
        </form>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button id="add" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span>添加供应商</button>
    <br/><br/>
    <table id="table"></table>
    <div id="pager"></div>
</div>
</body>
</html>