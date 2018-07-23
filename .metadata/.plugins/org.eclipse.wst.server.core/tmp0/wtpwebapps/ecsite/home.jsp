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
    <title>Home画面</title>
    <link rel="stylesheet" href="./css/style.css"/>
    <script type="text/javascript" src="js/template.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <script>
        $(document).ready(function(){
            $('.slider').bxSlider();
            auto: true;

        });
    </script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div id="main">
        <div id="top">
            <p>Home</p>
        </div>
        <div>
            <h1>New Release</h1>
        </div>
        <div id="slider_container">
         <div class="slider" id="slider">
             <div><img src="./images/walk_the_plank.jpg" width="300" height="300"/></div>
             <div><img src="./images/awake.jpg" width="300" height="300"/></div>
             <div><img src="./images/stories.jpg" width="300" height="300"/></div>
         </div>
         </div>
        <!--
        <div id="text-center">
            <s:form action="HomeAction">
                <s:submit value="商品購入"/>
            </s:form>
            <s:if test="#session.id != null">
                <p>ログアウトする場合は
                <a href='<s:url action="LogoutAction"/>'>こちら</a></p>
            </s:if>
        </div>
        -->
        <div>メモ:User登録でキー重複したときに、エラーじゃなくて警告メッセージを表示する</div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>