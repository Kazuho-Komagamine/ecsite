<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/product-details.css">
<title>商品詳細</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="main">
    <div id="top">
        <p>Product Detail</p>
    </div>
    <div id="product-detail-container">
        <s:form action="AddCartAction">
	        <div class="box">
	            <div class="main_container">
	                <div class="productImage">
		                <img src='<s:property value="%{#session.imageFilePath}"/>/<s:property value="%{#session.imageFileName}"/>'
		                class="item-image-box-350"/><br>
	                </div>
	                <div id="detail">
	                    <table class="vertical-list-table-mini">
		                    <tr>
		                        <td>商品名</td>
		                        <td><s:property value="%{#session.productName}"/></td>
		                    </tr>
		                    <tr>
		                        <td>商品名かな</td>
		                        <td><s:property value="%{#session.productNameKana}"/></td>
		                    </tr>
		                    <tr>
		                        <td>値段</td>
		                        <td><s:property value="%{#session.price}"/>円</td>
		                    </tr>
		                    <tr>
		                         <td>発売会社名</td>
		                         <td><s:property value="%{#session.releaseCompany}"/></td>
		                    </tr>
		                    <tr>
		                         <td>発売年月日</td>
		                         <td><s:property value="%{#session.releaseDate}"/></td>
		                    </tr>
		                    <tr>
		                         <td>商品詳細情報</td>
		                         <td><s:property value="%{#session.productDescription}"/></td>
		                    </tr>
		                </table>
		                購入個数<br>
		                <s:select name="productCount" list="%{#session.productCountList}"/>
		                <s:hidden name="productId" value="%{#session.productId}"/>
	                    <s:hidden name="productName" value="%{#session.productName}"/>
	                    <s:hidden name="productNameKana" value="%{#session.productNameKana}"/>
	                    <s:hidden name="imageFilePath" value="%{#session.imageFilePath}"/>
	                    <s:hidden name="imageFileName" value="%{#session.imageFileName}"/>
	                    <s:hidden name="price" value="%{#session.price}"/>
	                    <s:hidden name="releaseCompany" value="%{#session.releaseCompany}"/>
	                    <s:hidden name="releaseDate" value="%{#session.releaseDate}"/>
	                    <s:hidden name="productDescription" value="%{#session.productDescription}"/>
	                    <div id="addCart-submit">
	                        <s:submit value="カートに追加"/>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </s:form>
    </div>
</div>
<s:include value="footer.jsp"/>
</body>
</html>