<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Style-Type" content="text/css"/>
    <meta http-equiv="Content-Script-Type" content="text/javascript"/>
    <meta http-equiv="imagetoolbar" content="no"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <title>ProductList画面</title>
    <link rel="stylesheet" href="./css/style.css"/>
    <script type="text/javascript" src="js/template.js"></script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div id="main">
        <div id="top">
            <p>ProductList</p>
        </div>
        <div id="product_list_container">
            <ul id="wrap">
                <li class="box1 a">
                <a href='<s:url action="ProductDetailsAction">
	            <s:param name="productId" value="1"/>
	            </s:url>'><img src="./images/walk_the_plank.jpg" width="300" height="300"/></a>
	            </li>
                <li class="box1 b"><img src="./images/awake.jpg" width="300" height="300"/></li>
                <li class="box1 c"><img src="./images/stories.jpg" width="300" height="300"/></li>
            </ul>
            <ul id="wrap">
                <li class="box1 a"><img src="./images/sikennhousou.png" width="300" height="300"/></li>
                <li class="box1 b"><img src="./images/nothing_but_the_beat.jpg" width="300" height="300"/></li>
                <li class="box1 c"><img src="./images/Loser.jpg" width="300" height="300"/></li>
            </ul>
            <ul id="wrap">
                <li class="box1 a"><img src="./images/walk_the_plank.jpg" width="300" height="300"/></li>
                <li class="box1 b"><img src="./images/walk_the_plank.jpg" width="300" height="300"/></li>
                <li class="box1 c"><img src="./images/walk_the_plank.jpg" width="300" height="300"/></li>
            </ul>

        </div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>