<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

 <script>
 $( document ).ready(function() {
 	});
 
 </script>
<link type='text/css' rel="stylesheet" href='css/index.css'>
<style>
	#register {
	position: fixed;
	top: 500px;
	left: 30%;
	width: 450px;
	background-color: #fff;
	color: #7F7F7F;
	padding: 20px;
	border: 2px solid #ccc;
	-moz-border-radius: 20px;
	-webkit-border-radius: 20px;
	-khtml-border-radius: 20px;
	-moz-box-shadow: 0 1px 5px #333;
	-webkit-box-shadow: 0 1px 5px #333;
	z-index: 101;
	-webkit-transition: all 3s ease-out;
	-ms-transition: all 3s ease-out;
	transition: all 3s ease-out;
}
	


</style>
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>會議記錄</title>
</head>
<body>
	<div id='login'>
		<button id='doLogin'>登入</button>  
		<a href='register.jsp'>註冊</button><p>
		<a href='register.jsp' class="button">新增案由</a><p>

	</div>


	<div id='summary-table'>
		摘要
		<table>
			<th rowspan='2'>級別</th>
			<th rowspan='2'>處理原則</th>
			<th rowspan='2'>數量</th>
			<th colspan='4'>本次會議建議處理件數說明</th>
			<tr>
				<th class='table1'>維持</th>
				<th class='table1'>轉為B級</th>
				<th class='table1'>轉為B級</th>
				<th class='table1'>解除列管</th>
			</tr>
			<tr>
				<td>A級</td>
				<td>於會議中提出報告</td>
				<td>7</td>
				<td>1</td>
				<td>2</td>
				<td>1</td>
				<td>3</td>
			</tr>
			<tr>
				<td>B級</td>
				<td>承辦人檢視追蹤</td>
				<td>5</td>
				<td>1</td>
				<td>0</td>
				<td>1</td>
				<td>3</td>
			</tr>
			<tr>
				<td>C級</td>
				<td>列入議程，由團隊追蹤，並依情節回報承辦人</td>
				<td>1</td>
				<td>0</td>
				<td>1</td>
				<td>0</td>
				<td>0</td>
			</tr>
			<tr>
				<td>解列</td>
				<td>提出說明恭請裁示</td>
				<td>B03,B04,B05,A05,A06,A07</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
		<div id='summary-table'>明細
		<table>
			<th>列管事項來源</th>
			<th>分級列管(註1)</th>
			<th>討論事項</th>
			<th>決議/裁示事項</th>
			<th>辦理情形</th>
			<th>本次會議裁示</th>
			<tr>
			<td>106年第3次工作會議106/5/9(二)</td>
		 	<td>A01</td>
			<td>建請教育部協助協調縣市政府，將初階認證線上審查作業規劃，訂於6/1後進行，提請討論。...</td>
			<td>一、 精緻網須於各縣市完成初階認證審查人員培訓前，完成初階認證審查功能介面。...</td>
			<td>6/8更新「退回修正」為「修正後複審」、複審保留初審意見、審核意見字數調整為...</td>
			<td>上線並完成穩定運作一周後，建議轉為B級列管</td>
			</tr>
			<tr>
			<td>106年第3次工作會議106/5/9(二) </td>
		 	<td>A02</td>
			<td>有關106年計畫之系統開發相關規劃乙案，提請討論。(請參照106開發相關事項)。...</td>
			<td>目前暫定為105年4-6月撰寫規格書，7-9月開發系統，10月測試與修正，11-12月上線與回饋。...</td>
			<td>詳見【附件七 p.26】</td>
			<td>持續列管</td>
			</tr>
		</table>
		</div>
		
		
		
		
		 
</body>
</html>