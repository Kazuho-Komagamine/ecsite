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
    <title>Login画面</title>
    <link rel="stylesheet" href="./css/style.css"/>
    <script type="text/javascript" src="js/template.js"></script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div id="main">
        <div id="top">
            <p>Login</p>
        </div>
        <div>
            <h3>商品を購入する際はログインをお願いします。</h3>
            <s:form action="LoginAction">
                <s:textfield name="loginUserId"/>
                <s:textfield name="loginPassword"/>
                <s:submit value="ログイン"/>
            </s:form>
            <br>
            <div id="text-link">
                <p>新規ユーザー登録は
                <a href='<s:url action="UserCreateAction"/>'>こちら</a></p>
                <p>Homeへ戻る場合は
                <a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
            </div>

        </div>
    </div>
    <script type="text/javascript">footer();</script>
</body>
</html>