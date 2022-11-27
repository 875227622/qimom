<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2022/1/4
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>商城首页</title>
        <link rel="stylesheet" type="text/css" href="css/public.css"/>
        <link rel="stylesheet" type="text/css" href="css/shouye.css"/>
        <script src="js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/front_page.js" type="text/javascript" charset="utf-8"></script>
    </head>
    <body>
        <%String loginName = request.getParameter("loginName");%>
        <div class="head">
            <div class="head_zi">
                <div class="huan" action="LogoutServlet" method="post"  >
                    <a href="LogoutServlet" type="submit" style="color: aliceblue"> <%=request.getSession().getAttribute("loginName")%></a>
                    ,欢迎您
                </div>



                <div class="car">
                    <a href="car.jsp"><img src="images/购物车.png" height="28px">
                        <span>购物车</span>
                    </a>
                </div>
                <div class="login">
                    <div><a href="login.jsp">登录</a></div>
                    <div><a href="login.jsp">注册</a></div>
                </div>

            </div>
        </div>
        <!--搜索框-->
        <div class="search_kuang">
            <div class="search">
                <input type="text" class="text">
                <button><img src="images/搜索图标.png" width="40px"></button>
            </div>
        </div>
        <div class="shop">
            <div class="lunbo" >
                <span class="right" id="right"></span>
                <span class="left" id="left"></span>
                <div id="lunbo" >
                    <div>
                        <a href="#"><img src="images/mi11.png" ></a>
                    </div>
                    <div>
                        <a href="#"><img src="images/pingban5.png" ></a>
                    </div>
                    <div>
                        <a href="#"><img src="images/450ebe4e2420eba7064b6ce08b2fc503.jpg"></a>
                    </div>
                    <div>
                        <a href="#"><img src="images/3e34ddd6b7bcbfb90ed09e871d291593.png" ></a>
                    </div>
                    <div>
                        <a href="#"><img src="images/f89261d8655d76f2ab2340e4a3738678.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="nei">
                <div class="box_tit w">
                    <h2 class="title">手机</h2>
                    <div class="nei_pohot">
                        <ul>
                            <li class="phone_tu">
                                <a href="./商品/sj/shouji1.jsp">
                                    <div class="ph">
                                        <img src="./商品/sj/zwgt.jpg" >
                                    </div>
                                    <div class="na"> 真我gt</div>
                                    <p>￥3799</p>
                                </a>
                            </li>

                            <li class="phone_tu">
                                <a href="./商品/sj/shouji2.jsp">
                                    <div class="ph">
                                        <img src="./商品/sj//hwnova.jpg" >
                                    </div>
                                    <div class="na">华为 nova5</div>
                                    <p>￥1723</p>
                                </a>
                            </li>

                            <li class="phone_tu">
                                <a href="./商品/sj/shouji3.jsp">
                                    <div class="ph">
                                        <img src="./商品/sj/yj.jpg" >
                                    </div>
                                    <div class="na">
                                        一加ace
                                    </div>
                                    <p>￥3099</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./商品/sj/shouji4.jsp">
                                    <div class="ph">
                                        <img src="./商品/sj/rog.jpg" >
                                    </div>
                                    <div class="na">
                                        rog游戏手机
                                    </div>
                                    <p>￥4499</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./商品/sj/shouji5.jsp">
                                    <div class="ph">
                                        <img src="./商品/sj/xm1.jpg" >
                                    </div>
                                    <div class="na">小米手机</div>
                                    <p>￥4699</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./商品/sj/shouji6.jsp">
                                    <div class="ph">
                                        <img src="./商品/sj/hwp50.jpg" >
                                    </div>
                                    <div class="na">华为p50</div>
                                    <p>￥3888</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./商品/sj/shouji7.jsp">
                                    <div class="ph">
                                        <img src="./商品/sj/iqoo.jpg" >
                                    </div>
                                    <div class="na">
                                        IQOO手机
                                    </div>
                                    <p>￥4999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./商品/sj/shouji8.jsp">
                                    <div class="ph">
                                        <img src="./商品/sj/sn.jpg" >
                                    </div>
                                    <div class="na">
                                        Redmi Note 11 Pro系列
                                    </div>
                                    <p>￥1799</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box_tit w">
                    <h2 class="title">电脑</h2>
                    <div class="nei_pohot">
                        <ul>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com01">
                                    <div class="ph">
                                        <img src="images/computer/dbeee1b261367546.jpg" >
                                    </div>
                                    <div class="na">微星(MSI)PRO 电脑主板</div>
                                    <p>￥3629</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com02">
                                    <div class="ph">
                                        <img src="images/computer/8079c5b8a20b6eb7.jpg" >
                                    </div>
                                    <div class="na">新品英特尔酷睿12代</div>
                                    <p>￥1999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com03">
                                    <div class="ph">
                                        <img src="images/computer/O1CN01XdmjpR1IOuqoGgg5r_!!2616970884.jpg" >
                                    </div>
                                    <div class="na">
                                        笔记本电脑小新Air14 银
                                    </div>
                                    <p>￥4399</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com04">
                                    <div class="ph">
                                        <img src="images/computer/f063016c41fa50de.jpg" >
                                    </div>
                                    <div class="na">
                                        索尼（SONY）playstation5
                                    </div>
                                    <p>￥5099</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com01">
                                    <div class="ph">
                                        <img src="images/computer/dbeee1b261367546.jpg" >
                                    </div>
                                    <div class="na">微星(MSI)PRO 电脑主板</div>
                                    <p>￥3629</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com02">
                                    <div class="ph">
                                        <img src="images/computer/8079c5b8a20b6eb7.jpg" >
                                    </div>
                                    <div class="na">新品英特尔酷睿12代</div>
                                    <p>￥1999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com03">
                                    <div class="ph">
                                        <img src="images/computer/O1CN01XdmjpR1IOuqoGgg5r_!!2616970884.jpg" >
                                    </div>
                                    <div class="na">
                                        笔记本电脑小新Air14 银
                                    </div>
                                    <p>￥4399</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com04">
                                    <div class="ph">
                                        <img src="images/computer/f063016c41fa50de.jpg" >
                                    </div>
                                    <div class="na">
                                        索尼（SONY）playstation5
                                    </div>
                                    <p>￥5099</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box_tit w">
                    <h2 class="title">家用电器</h2>
                    <div class="nei_pohot">
                        <ul>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home01">
                                    <div class="ph">
                                        <img src="images/home/181a74dccd6f4a71.jpg" >
                                    </div>
                                    <div class="na">
                                        西门子（SIEMENS）蒸烤箱一体机嵌入式
                                    </div>
                                    <p>￥7999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home02">
                                    <div class="ph">
                                        <img src="images/home/c7c15101f2c8a652a4a0d069501d1e53.jpg" >
                                    </div>
                                    <div class="na">小米电视6 至尊版 65英寸</div>
                                    <p>￥7999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home03">
                                    <div class="ph">
                                        <img src="images/home/cf71655746411c0f.jpg!cc_320x320.webp" >
                                    </div>
                                    <div class="na">
                                        亿田（entive）D2ZK 集成灶蒸烤一体
                                    </div>
                                    <p>￥13800</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home04">
                                    <div class="ph">
                                        <img src="images/home/33508813f3a5059d.jpg" >
                                    </div>
                                    <div class="na">
                                        卡萨帝（Casarte）635升四开门十字对开门冰箱
                                    </div>
                                    <p>￥12499</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home01">
                                    <div class="ph">
                                        <img src="images/home/181a74dccd6f4a71.jpg" >
                                    </div>
                                    <div class="na">
                                        西门子（SIEMENS）蒸烤箱一体机嵌入式
                                    </div>
                                    <p>￥7999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home02">
                                    <div class="ph">
                                        <img src="images/home/c7c15101f2c8a652a4a0d069501d1e53.jpg" >
                                    </div>
                                    <div class="na">小米电视6 至尊版 65英寸</div>
                                    <p>￥7999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home03">
                                    <div class="ph">
                                        <img src="images/home/cf71655746411c0f.jpg!cc_320x320.webp" >
                                    </div>
                                    <div class="na">
                                        亿田（entive）D2ZK 集成灶蒸烤一体
                                    </div>
                                    <p>￥13800</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home04">
                                    <div class="ph">
                                        <img src="images/home/33508813f3a5059d.jpg" >
                                    </div>
                                    <div class="na">
                                        卡萨帝（Casarte）635升四开门十字对开门冰箱
                                    </div>
                                    <p>￥12499</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box_tit w">
                    <h2 class="title">服饰</h2>
                    <div class="nei_pohot">
                        <ul>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes01">
                                    <div class="ph">
                                        <img src="images/clothes/16fea7d7bb3f9144.jpg" >
                                    </div>
                                    <div class="na">梵希蔓垂感卡其色西装外套女</div>
                                    <p>￥299</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes02">
                                    <div class="ph">
                                        <img src="images/clothes/7ea39f5f4878b162.jpg" >
                                    </div>
                                    <div class="na">海青蓝时尚通勤小西服女</div>
                                    <p>￥358</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes03">
                                    <div class="ph">
                                        <img src="images/clothes/703d1f6c28d1c818.jpg" >
                                    </div>
                                    <div class="na">
                                        森马卫衣男2021秋新款oversize创意图案
                                    </div>
                                    <p>￥139</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes04">
                                    <div class="ph">
                                        <img src="images/clothes/4cc75617291b3b63.jpg" >
                                    </div>
                                    <div class="na">
                                        Lilbetter情侣重磅卫衣男加绒
                                    </div>
                                    <p>￥215</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes01">
                                    <div class="ph">
                                        <img src="images/clothes/16fea7d7bb3f9144.jpg" >
                                    </div>
                                    <div class="na">梵希蔓垂感卡其色西装外套女</div>
                                    <p>￥299</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes02">
                                    <div class="ph">
                                        <img src="images/clothes/7ea39f5f4878b162.jpg" >
                                    </div>
                                    <div class="na">海青蓝时尚通勤小西服女</div>
                                    <p>￥358</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes03">
                                    <div class="ph">
                                        <img src="images/clothes/703d1f6c28d1c818.jpg" >
                                    </div>
                                    <div class="na">
                                        森马卫衣男2021秋新款oversize创意图案
                                    </div>
                                    <p>￥139</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes04">
                                    <div class="ph">
                                        <img src="images/clothes/4cc75617291b3b63.jpg" >
                                    </div>
                                    <div class="na">
                                        Lilbetter情侣重磅卫衣男加绒
                                    </div>
                                    <p>￥215</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav">
            <ul>
                <li class="current">手机</li>
                <li>电脑</li>
                <li>家居</li>
                <li>服饰</li>
                <div class="back">返回顶部</div>
            </ul>
        </div>

        <div class="footer">
            <div class="translate">
                <div class="footer-links">
                    <h5>购物指南</h5>
                    <ul>
                        <li><a href="#">购物流程</a></li>
                        <li><a href="#">会员介绍</a></li>
                        <li><a href="#">生活旅行</a></li>
                        <li><a href="#">常见问题</a></li>
                        <li><a href="#">联系客服</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h5>支付方式</h5>
                    <ul>
                        <li><a href="#">信用卡</a></li>
                        <li><a href="#">货到付款</a></li>
                        <li><a href="#">在线付款</a></li>
                        <li><a href="#">分期付款</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h5>售后服务</h5>
                    <ul>
                        <li><a href="#">售后政策</a></li>
                        <li><a href="#">退款说明</a></li>
                        <li><a href="#">返修/退换货</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h5>帮助中心</h5>
                    <ul>
                        <li><a href="#">账户管理</a></li>
                        <li><a href="#">自助服务</a></li>
                        <li><a href="#">订单操作</a></li>
                        <li><a href="#">服务网点</a></li>
                        <li><a href="#">授权体验店/专区</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h5>关于我们</h5>
                    <ul>
                        <li><a href="#">新浪微博</a></li>
                        <li><a href="#">官方微信</a></li>
                        <li><a href="#">联系我们</a></li>
                        <li><a href="#">加入我们</a></li>
                        <li><a href="#">公益基金会</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
