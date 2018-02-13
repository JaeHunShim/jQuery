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

<title>Colorbox</title>
<script>
	$(document).ready(function(){
		$('a').colorbox();
	});
</script>
</head>
<body>
<h1> JQuery LightBox</h1>
<a title ='강아지' href ='../colorboxjs/daisy.jpg'> image-1</a>
<a title = '가족사진'href ='../colorboxjs/ohoopee1.jpg'>image-2</a>
<a title ='심슨' href ='../colorboxjs/homer.jpg'>image-3</a>
<a title ='말 ' href ='../colorboxjs/marylou.jpg'>image-4</a>
</body>
</html>