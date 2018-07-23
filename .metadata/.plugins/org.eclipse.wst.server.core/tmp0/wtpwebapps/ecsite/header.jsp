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
<link rel="stylesheet" href="./css/style.css">
<style type="text/css">
<!--
#header a:link { color:white; text-decoration:none }
#header a:visited { color:white; text-decoration:none }
#header a:hover { color:red; text-decoration:none }
#header a:active { color:white; text-decoration:none }
-->
</style>
</head>
<body>
    <div id="header">
        <span id="header_title">
        <!--  ECsite.com -->
            <a href='<s:url action="GoHomeAction"/>'>
            ECsite.com</a>
        </span>
        <div id="header_menu">
            <ul>
                <li><a href='<s:url action="ProductListAction"/>'>Search</a></li>
                <li><a href='<s:url action="CartAction"/>'>Cart</a></li>
                <li>
                    <s:if test="#session.id != null"><a href='<s:url action="LogoutAction"/>'>Logout</a></s:if>
                    <s:if test="#session.id == null"><a href='<s:url action="UserCreateAction"/>'>SignUp</a></s:if>
                </li>
                <li>
                    <s:if test="#session.id != null"><a href='<s:url action="MyPageAction"/>'>MyPage</a></s:if>
                    <s:if test="#session.id == null"><a href='<s:url action="GoLoginAction"/>'>Login</a></s:if>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>