<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = ../js/jquery-3.3.1.min.js></script>
<script src = ../js/jquery.innerfade.js></script>
<script src = ../js/jquery-ui.min.js ></script>
<link rel ="stylesheet" href= ../js/jquery-ui.structure.min.css>
<link rel ="stylesheet" href= ../js/jquery-ui.theme.min.css>
<title>Insert title here</title>
<style>
	*{
		margin:0px;
		padding:0px;
	}
	#canvas{
		background:pink;
		width:600px;
		height:400px;
		position:relative;
		overflow:hidden;
	}
	.inner-box{
		background:green;
		width:100px;
		height:100px;
		position:absolute;
	}
</style>
<script>
	$(document).ready(function(){
		$('.inner-box').each(function(index){
			$(this).css({
				left:index * 90,
				top:index * 90
			});
		});
	});
</script>
</head>
<body>
	<h1>Test Header</h1>
	<div id = 'canvas'>
		<div class='inner-box'></div>
		<div class='inner-box'></div>
		<div class='inner-box'></div>
		<div class='inner-box'></div>
		<div class='inner-box'></div>
	</div>
	<h1>Test Header</h1>
</body>
</html>