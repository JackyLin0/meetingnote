<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>

<style>
.ui-li-thumb {
	top: 0;
	bottom: 0;
 }

 
</style>

<title>Jacky Big Company</title>
</head>
<body>
 	<div data-role="page">
	
		<div data-role="content">

			<form action="register">
				請輸入帳號<input type='text' id='user' name='user' />
				<p>
					請輸入密碼<input type="password" id='passwd' name='passwd' />
				<p>
					確認密碼<input type="password" id='passwd2' name='passwd2' />
				<p>
					請輸入email<input type='text' id='email' name='email' />
				<p>
					請輸入中文名<input type='text' id='chname' name='chname' />
				<p> 
				 <div class="ui-grid-a">
				
				 <div class="ui-block-a"><input type='submit' value='確定'/> </div>
				 <div class="ui-block-b"><input type="reset" value='重設'/></div>
				</div>
			</form>
		</div>

	</div>
 
</body>
</html>