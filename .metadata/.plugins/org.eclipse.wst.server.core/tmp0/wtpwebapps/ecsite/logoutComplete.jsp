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
    <title>LogoutCompleteAction画面</title>
    <link rel="stylesheet" href="./css/style.css"/>
    <script type="text/javascript" src="js/template.js"></script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div id="main">
        <div id="top">
            <p>LogoutComplete</p>
        </div>
        <div>
            <h3>ログアウトに成功しました。</h3>
            <div id="text-link">
                <p>Homeへ戻る場合は
                <a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
                <p>別のアカウントでログインする場合は
                <a href='<s:url action="GoLoginAction"/>'>こちら</a></p>
                <p>新規ユーザー登録は
                <a href='<s:url action="UserCreateAction"/>'>こちら</a></p>
            </div>

        </div>
    </div>
    <script type="text/javascript">footer();</script>
</body>
</html>