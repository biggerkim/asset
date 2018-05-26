<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="WEB-INF/jsp/common/tag.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>teacher</title>
    <%@include file="WEB-INF/jsp/common/header.jsp"%>
</head>
<body>
<script>alert("输出序号不存在或输出错误")
</script>
<script type="text/JavaScript">
    window.location.href="/user/${sessionScope.get("username")}/search";
</script>

<!--页脚-->
<footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
        各位大佬强力驱动
    </div>
    <strong>Copyright &copy; 2018 <a href="#">BUCT</a>.</strong> All rights reserved.
</footer>


</div>

<script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/dist/js/app.min.js"></script>

</body>
</html>
