<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	.box{
		width:100px;
		height:100px;
		float:left;
	}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = ../js/jquery-3.3.1.min.js></script>
<script src = ../js/jquery.innerfade.js></script>
<script src = ../jquery-ui-1.12.1.custom/jquery-ui.min.js ></script>
<link rel ="stylesheet" href= ../jquery-ui-1.12.1.custom/jquery-ui.structure.min.css>
<link rel ="stylesheet" href= ../jquery-ui-1.12.1.custom/jquery-ui.theme.min.css>
<title>Insert title here</title>

<script>
	//드래그 해보기 
	$(document).ready(function(){
		$('div.box').draggable({
			grid:[102,102],
			stop:function(event,ui){
				alert(ui.offset.top+':'+ui.offset.left);
			}
		});
	});
</script>
</head>
<body>
<div class='box ui-widget-content'></div>
<div class='box ui-widget-content'></div>
<div class='box ui-widget-content'></div>
<div class='box ui-widget-content'></div>
</body>
</html>