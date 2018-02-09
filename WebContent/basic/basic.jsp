<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = js/jquery-3.3.1.min.js></script>
<title>Insert title here</title>
<script>
	/*1. 문서가 준비되면 매개변수로 넣은 콜백 함수를 실행하라는 의미 */
	$(document).ready(function(){
		alert('jquery 시작');
	});
	/* 2.기본 선택자 */
	/* 2.1 전체 선택자  (*) */
	$(document).ready(function(){
		$('*').css('color','red');
	});
	/*2.2 태그 선택자 */
	$(document).ready(function(){
		$('h2').css('background-color','blue');
		$('h3').css('background-color','pink');
		$('h3, p').css('color','orange'); /* 여러개의 태그속성을 한번에 줄수도 있음. */
	});
	/* 2.3해당아이디 선택자  #을 붙인다.*/
	$(document).ready(function(){
		$('#target').css('color','green');
		$('h2 ,#target2').css('background-color','yellow');
	});
	/* 2.4 해당클래스 선택자  */
	$(document).ready(function(){
		$('h1.item').css('color','pink'); /*두개의 선택자를 붙여서 정확하게 할수도 있다. */
	});
	/* 3.1 자손선택자 말그대로 자신바로 밑에 태그를 선택하는 것*/
	/* body 밑에 div태그에만 적용된다. */
	$(document).ready(function(){
		$('body > *').css('color','green');
	});
	/* 3.2후손 선택자. 해당 선택자의 밑에 있는 모든태그들을 뜻하게 된다. */
	$(document).ready(function(){
		$('body *').css('color','yellow');
	});
	/* 3.3 속성선택자*/
	/* 말그대로 속성을 선택자로 하겠다는 소리징 여기서 쓰인 val()는 val파라미터에 매개변수를 입력하면 input태그의 value속성을 지정하게 되고, 넣지 않으면 value속성을 검사한다. */
	$(document).ready(function(){
		$('input[type = "text"]').val('안녕하세요');
	});
</script>
</head>
<body>
	<div>
		<h1> Jaehun1</h1>
		<h2> Jaehun2</h2>
		<h3> Jaehun3</h3>
		<p> Jaehun4</p>
		<h1 id='target'> Jaehun5</h1>
		<h2 id='target2'>Jaehun6</h2>
		<h1 class ='item'>Jaehun7</h1>
		<h1 class = 'item select'>Jahun8</h1>
		<input type ='text'>
		<input type = 'password'>
		<input type = 'radio'>
		<input type = 'checkbox'>
		<input type = 'file'>
	</div>
</body>
</html>