<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = ../js/jquery-3.3.1.min.js></script>
<script src = ../js/jquery.innerfade.js></script>
<script src = ../jquery-ui-1.12.1.custom/jquery-ui.min.js ></script>
<script src = ../colorboxjs/jquery.colorbox-min.js></script>
<link rel ="stylesheet" href= ../jquery-ui-1.12.1.custom/jquery-ui.structure.min.css>
<link rel ="stylesheet" href= ../jquery-ui-1.12.1.custom/jquery-ui.theme.min.css>
<link rel ="stylesheet" href= ../colorboxjs/colorbox.css>
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		$('a').colorbox({
			inline:true,
			width:550
		}).on('click',function(){
			setTimeout(function(){
				$.colorbox.close();
			},3000);
		}).trigger('click');
	});
</script>
</head>
<body>
<h1>Jquery ColorBox</h1>
<a id ='colorbox' href ='#dialog'>Dialog with ColorBox</a>

<!--다이얼 로그부분 -->

<div id = 'dialogs' style ='displsy:none;'>
	<div id ='dialog'>
		<h1>다이얼 로그를 열어보자</h1>
		<p>잘열렸으면 보이겠지</p>
	</div>
</div>
</body>
</html>