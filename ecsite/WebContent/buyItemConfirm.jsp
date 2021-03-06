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
    <title>BuyItemConfirm画面</title>
    <link rel="stylesheet" href="./css/style.css"/>
    <script type="text/javascript" src="js/template.js"></script>
	<script>
        function submitAction(url){
        	$('form').attr('action',url);
        	$('form').submit();
        }

        function goHomeAction(){
        	document.getElementById('form').action="HomeAction";
        }

        function goBuyItemConfirmAction(){
        	document.getElementById('form').action="BuyItemConfirmAction";
        }
    </script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div id="main">
        <div id="top">
            <p>BuyItemConfirm</p>
        </div>
        <div>
            <s:form action="HomeAction" id="form">
                <tr>
                    <td>商品名</td>
                    <td><s:property value="session.buyItem_name"/></td>
                </tr>
                <tr>
                    <td>値段</td>
                    <td><s:property value="session.total_price"/><span>円</span></td>
                </tr>
                <tr>
                    <td>購入個数</td>
                    <td><s:property value="session.count"/><span>個</span></td>
                </tr>
                <tr>
                    <td>支払い方法</td>
                    <td><s:property value="session.pay"/></td>
                </tr>
                <tr>
                    <td><br></td>
                </tr>
                <tr>
	                <td><input type="submit" value="戻る" onclick="goHomeAction();"/></td>
                    <td><input type="submit" value="完了" onclick="goBuyItemConfirmAction();"/></td>
                <!--
                    <td><input type="submit" value="戻る" onclick="submitAction('HomeAction')"/></td>
                    <td><input type="submit" value="完了" onclick="submitAction('BuyItemConfirmAction')"/></td>
                -->
                </tr>

            </s:form>
        </div>
    </div>
    <jsp:include page="footer.jsp" />

</body>
</html>