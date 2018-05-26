
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>教务管理系统</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="/dist/css/skins/skin-blue.min.css">

</head>
<body class="hold-transition skin-blue sidebar-mini">
<script type="text/javascript">
    function ahead(){
        if(${page} == 1) {
            alert("当前已是第一页");
        } else{
            window.location.href="../list/${page-1}";
        }
    }

    function behind(){
        if(${pages} == ${page}){
            alert("当前已是最后一页");
        } else{
            window.location.href="../list/${page+1}";
        }
    }
</script>
<div class="wrapper">

    <!--页首-->
    <header class="main-header">
        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">导航开关</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">

                <ul class="nav navbar-nav">
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="/dist/img/avatar_ani.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">${sessionScope.get("studentId")}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="/dist/img/avatar_ani.jpg" class="img-circle" alt="User Image">
                                <p>
                                    Talk is cheap show me the code.
                                </p>
                            </li>
                            <!-- Menu Body -->

                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-right">
                                    <a href="http://localhost:8080" class="btn btn-default btn-flat">登出</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <!--侧边-->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <div class="user-panel">
                <div class="pull-left image">
                    <img src="/dist/img/avatar_ani.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${sessionScope.get("studentId")}</p>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <ul class="sidebar-menu">
                <li class="header">管理系统</li>
                <li><a href="/student/${sessionScope.get("userid")}/course"><i class="fa fa-link"></i><span>个人课表</span></a></li>
                <li><a href="/student/${sessionScope.get("userid")}/recomcourse"><i class="fa fa-link"></i><span>专业推荐课表</span></a></li>
                <li><a href="/student/${sessionScope.get("userid")}/grade"><i class="fa fa-link"></i><span>查看成绩</span></a></li>
                <li class="header">毕业设计系统</li>
                <li><a href="/student/${sessionScope.get("userid")}/CheckConfirmedSubject"><i class="fa fa-link"></i><span>已通过的课题</span></a></li>
                <li><a href="/student/${sessionScope.get("userid")}/CheckNotConfirmedSubject"><i class="fa fa-link"></i><span>未通过的课题</span></a></li>
                <li><a href="/student/${sessionScope.get("userid")}/list/1"><i class="fa fa-link"></i><span>可申请的课题</span></a></li>
                <li class="header">选课系统</li>
                <li><a href="/student/${sessionScope.get("userid")}/courselist"><i class="fa fa-link"></i><span>查看全部课程</span></a></li>
                <li><a href="/student/${sessionScope.get("userid")}/selectlist"><i class="fa fa-link"></i><span>查看已选课程</span></a></li>
            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>

    <!--核心-->
    <div class="content-wrapper">
        <!--标题-->
        <section class="content-header">
            <h1>
                资产管理平台
                <small>变动申请</small>
            </h1>
            <!--位置导航-->
            <ol class="breadcrumb">
                <li><a href="#">Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>

        <!--网页正文-->
        <section class="content">
            <div class="panel-heading text-center">
                <h2>报失（销账）申请</h2>
            </div>
            <div class="table-div" style="overflow:scroll">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>设备编号</th>
                        <th>设备名称</th>
                        <th>存放地</th>
                        <th>使用人</th>
                        <th>使用单位</th></tr>
                    <tr>
                        <td><textarea style="resize:none"></textarea></td>
                        <td><textarea style="resize:none"></textarea></td>
                        <td><textarea style="resize:none"></textarea></td>
                        <td><textarea style="resize:none"></textarea></td>
                        <td><textarea style="resize:none"></textarea></td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="subjectItem">
                        <tr>
                            <td>${subjectItem.subjectId}</td>
                            <td>${subjectItem.subjectName}</td>
                            <td>${subjectItem.teacherName}</td>
                            <td>未申请</td>
                            <td>
                                <a class="btn btn-info" href="../../CheckSubjectInfo/${subjectItem.subjectId}">查看</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div align="center">
                    <td><a class="btn btn-info" href="#" onclick="ahead()" target="_self">提交</a></td>
                </div>
                <%--<div align="right">--%>
                <%--<td><a class="btn btn-info" href="../list/1" target="_self">第一页</a></td>--%>
                <%--<td><a class="btn btn-info" href="#" onclick="ahead()" target="_self">上一页</a></td>--%>
                <%--<td><a class="btn btn-info" href="#" onclick="behind()" target="_self">下一页</a></td>--%>
                <%--</div>--%>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!--页脚-->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            各位大佬强力驱动
        </div>
        <strong>Copyright &copy; 2017 <a href="#">CS1404</a>.</strong> All rights reserved.
    </footer>


</div>

<script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/dist/js/app.min.js"></script>

</body>
</html>
