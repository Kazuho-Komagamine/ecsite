<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
@import url('https://fonts.googleapis.com/css?family=Oswald');
</style>
<link rel="stylesheet" href="./css/hf_template.css">
<style type="text/css">
</style>
<script type="text/javascript">
function goSearchItemAction(){
	document.getElementById("form").action="SearchItemAction";
}
</script>
</head>
<body>
    <div id="header">
        <span id="header_title">
        <!-- ロゴ 押すとホーム画面に飛ぶ -->
            <a href='<s:url action="GoHomeAction"/>'>
            ECsite.com</a>
        </span>
        <div id="header_menu">
            <ul>
            <s:form id="form">
                <!-- 検索カテゴリ -->
                <s:if test='#session.containsKey("mCategoryDtoList")'>
	                <li><s:select name="categoryId" list="#session.mCategoryDtoList" listValue="categoryName" listKey="categoryId" class="cs-div" id="categoryId"/></li>
	            </s:if>
	            <!-- 検索ワード -->
	            <li><a><s:textfield name="keywords" class="txt-keywords" placeholder="検索ワード" /></a></li>
                <!-- 検索submit -->
                <li><a href='<s:submit onclick="goSearchItemAction();"/>'>Search</a></li>
                <!-- 買い物カート -->
                <li><a href='<s:url action="CartAction"/>'>Cart</a></li>
                <!-- サインアップ(ログイン中はログアウト) -->
                <li>
                    <s:if test="#session.id != null"><a href='<s:url action="LogoutAction"/>'>Logout</a></s:if>
                    <s:if test="#session.id == null"><a href='<s:url action="UserCreateAction"/>'>SignUp</a></s:if>
                </li>
                <!-- ログイン(ログイン中はマイページ) -->
                <li>
                    <s:if test="#session.id != null"><a href='<s:url action="MyPageAction"/>'>MyPage</a></s:if>
                    <s:if test="#session.id == null"><a href='<s:url action="GoLoginAction"/>'>Login</a></s:if>
                </li>
            </s:form>
            </ul>
        </div>
    </div>
</body>
</html>
