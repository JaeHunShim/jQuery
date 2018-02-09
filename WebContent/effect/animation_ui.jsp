<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	.reverse{
		color:white;
		background-color:pink;
	}
 	div{
		background-color:orange;
		width:150px;
		height:150px;
		position:relative;
	}
</style>
<script>
 	$(document).ready(function(){
		$('div').hover(function(){
			$(this).addClass('reverse',1000);
		},function(){
			$(this).removeClass('reverse',1000);
		});
	}); 
	$(document).ready(function(){
		//이벤트 연결
		$('button').on('click',function(){
			//변수 선언
			var easing = $('select > option:selected').html();
			//animate() 메서드 사용한다.
			$('div').animate({
				left:'400'
			},2000,easing).animate({
				left:'0'
			},1000,easing);
		});
	});
</script>
</head>
<body>
<div>
	<h1>시험 1</h1>
	<p>우라라랄라라라라</p>
</div>
<div>
	<h1>시험 2</h1>
	<p>우라라랄라라라라</p>
</div>
<div>
	<h1>시험 3</h1>
	<p>우라라랄라라라라</p>
</div>
<select>
	<option>linear</option>
	<option>swing</option>
</select>
<button>Move</button>
<div></div>
</body>
</html>