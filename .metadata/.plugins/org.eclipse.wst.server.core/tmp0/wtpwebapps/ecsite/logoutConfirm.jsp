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
    <title>LogoutConfirm画面</title>
    <link rel="stylesheet" href="./css/style.css"/>
    <script type="text/javascript" src="js/template.js"></script>
    <!--
    <script>
        function submitAction(url){
        	$('form').attr('action',url);
        	$('form').submit();
        }

        function goLogoutAction(){
        	document.getElementById('form').action="LogoutCompleteAction";
        }

        function goHomeAction(){
        	document.getElementById('form').action="GoHomeAction";
        }
    </script>
    -->
    <script type="text/javascript">
    function link() {
	    document.location = "GoHomeAction";
}
</script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div id="main">
        <div id="top">
            <p>LogoutConfirm</p>
        </div>
        <div>
            カートに商品が残っています!(実装予定:#sessionでカートが空かs:ifで判定)<br>
            本当にログアウトしますか?
            <s:form>
                <tr>
	                <!--  <td><input type="submit" value="Yes" onclick="goLogoutAction();"/></td> -->
	                <td><input type="button" onclick="location.href='LogoutCompleteAction'"value="Yes"></td>
                    <td><input type="button" onclick="location.href='GoHomeAction'"value="No"></td>
                </tr>
            </s:form>
        </div>
    </div>
    <script type="text/javascript">footer();</script>
</body>
</html>