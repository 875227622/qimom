<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2022/1/4
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>管理员管理菜品信息</title>
        <link rel="stylesheet" href="./bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="./jquery/3.4.1/jquery-3.4.1.min.js" ></script>
        <script src="./popper/popper.min.js"></script>
        <script src="./bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </head>
    <body>
    <!-- 页面导航条 -->
    <div class="container-fluid"  ><div class="row"><div class="col-md-12 col-12">
        <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-between">
            <a class="navbar-brand" href="first.jsp">
                <span class="text-info">商城首页</span></a>
            <ul class="nav justify-content-end"><li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"><%=request.getSession().getAttribute("loginName")%> </a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <li>
                        <form action="LogoutServlet" class="nav-link" method="post">

                            <input type="submit" value="退出">
                        </form>
                    </li>

                </ul>
            </li></ul>
        </nav>
    </div></div></div>
    <!-- 卡片组件 -->
    <div class="container-fluid"><div class="card border">
        <!-- 菜品搜索表单和添加按钮 -->
        <div class="card-header border">
            <form class="form-inline" action="#" method="post">
                <input type="search" class="form-control mr-sm-2"
                       placeholder="商品" name="s_fn">
                <select class="form-control mr-sm-2" name="s_type">
                    <option value="">所有分类</option>
                    <option value="1">手机</option>
                    <option value="2">电脑</option>
                    <option value="3">家用电器</option>
                    <option value="4">服饰</option>
                </select>
                <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">搜索</button>
                &nbsp;&nbsp;
                <a class="btn btn-outline-success my-2 my-sm-0 form-control"
                   href="first.jsp" role="button">添加更多商品</a>
            </form>
        </div>
        <!-- 菜品展示表格 -->
        <div class="card-body"><div class="table-responsive-xl">
            <table class="table table-striped table-hover table-sm">
                <thead><tr>
                    <th scope="col">序号</th><th scope="col">图片</th><th scope="col">商品名称</th>
                    <th scope="col">单价</th><th scope="col">商品详情</th><th scope="col">分类</th>
                    <th scope="col"></th><th scope="col">数量</th><th scope="col">备注</th><th scope="col">操作</th>
                </tr></thead>
                <tbody>
                <tr>
                    <th scope="row">1</th> <td><img class="img-rounded" src="./images/phone/pg.jpg" width="100"height="100"/></td>
                    <td>【现货速发】Apple/苹果 iPhone14 2022新品国行苹果14 5G全网通手机 官方正品iphone 中国电信官旗</td>
                    <td>8699</td><td> iphone 14Promax（远峰蓝）512GB</td>
                    <td>手机</td>
                    <td></td><td>4</td><td>无</td>
                    <td><a class="btn btn-sm btn-outline-warning"
                           href="admin_edit_food.action?id=1" role="button">编辑</a>
                        <button type="button" class="btn btn-sm btn-outline-danger"
                                name="delButton"  data-toggle="modal" data-target="#delConfirmModal">移除商品</button></td>
                </tr>
                <!-- 其他菜品行代码省略 -->
                </tbody>
            </table>
        </div></div>
        <!-- 分页组件 -->
        <div class="card-footer border">
            <div class="row"><div class="col-md-12 col-12">
                <nav>
                    <ul class="pagination justify-content-end">
                        <li class="page-item disabled"><a class="page-link">
                            <span aria-hidden="true">&laquo;</span></a></li>
                        <li class="page-item active"><a
                                class="page-link" href="#">1</a></li>
                        <li class="page-item "><a
                                class="page-link" href="#">2</a></li>
                        <li class="page-item "><a
                                class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" >
                            <span aria-hidden="true">&raquo;</span></a></li>
                    </ul>
                </nav>
            </div></div>
        </div>
    </div></div>

    <!--删除确认框-->
    <div class="modal" role="dialog" id="delConfirmModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <h5 class="modal-title">删除确认</h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h5 class="text-danger" id="prompt">确定要删除该菜品吗？</h5>
                </div>
                <div class="modal-footer">
                    <input type="hidden" id="url" />
                    <button type="button" class="btn btn-default" data-dismiss="modal">放弃</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal"
                            id="delButtonConfirm">删除</button>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
