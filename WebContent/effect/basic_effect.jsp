<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = ../js/jquery-3.3.1.min.js></script>
<script src = ../js/jquery.innerfade.js></script> <!--jquery.js 보다 뒤에 와야 한다. -->
<title>Insert title here</title>
<style>
	ul{
		list-style:none;
	}
	img{
		width:500px;
		height:350px;
	}
</style>
<script>
	//기본 효과  toggle 사용해봄 show와 hide를 동시에 보여줌 
	$(document).ready(function(){
		$('button').on('click',function(){
			$('.page').toggle('slow');
		});
	});
	$(document).ready(function(){
		$('#inner-fade').innerfade({
			animationtype:'slide',
			speed:750,
			timeout:2000,
			type:'random',
			containerheight:'auto'
		});
	});
</script>
</head>
<body>
	<button> Toggle Show </button>
	<div class ='page'>
		<h1>우라랄라라</h1>
		<p>아무가나쓰고 놀자 야호우앙 이양 자바스크립트보단 쉽지만 몬가 지루하다 이것만 보기에는 알고리즘이 재밌는데 ? ㄷㄷㄷㄷ</p>
	</div>
	
	<ul id = 'inner-fade'>
		<li><img src = '../img/json으로 데이터뽑아오기.png'/></li>
		<li><img src = '../img/daoinsertLog.png'/></li>
		<li><img src = '../img/json처리예제.png'/></li>
		<li><img src = '../img/datasource error .png'/></li>
	</ul>
</body>
</html>