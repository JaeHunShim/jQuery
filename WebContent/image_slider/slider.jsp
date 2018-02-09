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
<style>
	/* Animation Canvas */
	.animation_canvas{
		overflow:hidden;
		position:relative;
		width:600px;
		height:400px;
	}
	/* Slider Panel */
	.slider_panel{
		width:3000px;
		position:relative;
	}
	.slider_image{
		float:left;
		width:600px;
		height:400px;
	}
	/* Slider Text Panel */
	.slider_text_panel{
		position:absolute;
		top:200px;
		left:50px;
	}
	.slider_text{
		position:absolute;
		width:250px;
		height:150px;
	}
	/* Control Pannel */
	.control_panel{
		position:absolute;
		top:380px;
		left:270px;
		height:13px;
		overflow:hidden;
	}
	.control_button{
		width:12px;
		height:46px;
		position:relative;
		float:left;
		cursor:pointer;
		background:url('../img/가을.png');
	}
	.control_button:hover{
		top:-16px;
	}
	.control_button.active{
		top:-31px;
	}
</style>
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		//슬라이더를 움직여주는 함수
		function moveSlider(index){
			//슬라이더 이동
			var willMoveLeft= -(index *600);
			$('.slider_panel').animate({
				left:willMoveLeft
			},'slow');
			//contorl_button에 active 클래스를 부여/제거 한다.
			$('.control_button[data-index = '+index+']').addClass('active');
			$('.control_button[data-index!='+index+']').removeClass('active');
			//글자를 이동
			$('.slider_text[data-index='+index+']').show().animate({
				left:0
			},'slow');
			$('.slider_text[data-index!='+index+']').hide('slow',function(){
				$(this).css('left',-300);
			});
		}
		//초기 텍스트 위치
		$('.slider_text').css('left',-300).each(function(index){
			$(this).attr('data-index',index);
		});
		//컨트롤 버튼의 클릭 리스너 지정 , data-index 할당
		$('.control_button').each(function(index){
			$(this).attr('data-index',index);
		}).on('click',function(){
			var index = $(this).attr('data-index');
			moveSlider(index);
		});
		//초기슬라이더 위치
		var randomNumber = Math.round(Math.random()*4);
		moveSlider(randomNumber);
		
	});
</script>
</head>
<body>
	<h1> 대한민국 사계절</h1>
	<div class = 'animation_canvas'>
		<div class = 'slider_panel'>
			<img class = 'slider_image' src='../img/봄.png'/>
			<img class = 'slider_image' src='../img/여름.png'/>
			<img class = 'slider_image' src='../img/가을.png'/>
			<img class = 'slider_image' src='../img/겨울.png'/>
		</div>
		<div class='slider_text_panel'>
			<div class = 'slider_text'>
				<h1>봄</h1>
				<p>봄입니다 .결혼하고 싶지?</p>
			</div>
			<div class = 'slider_text'>
				<h1>여름</h1>
				<p>바다로 놀러가고싶지?</p>
			</div>
			<div class = 'slider_text'>
				<h1>가을</h1>
				<p>외롭지? 책읽지말고 여자만나</p>
			</div>
			<div class = 'slider_text'>
				<h1>겨울</h1>
				<p>이불밖은 위험해 나오지마</p>
			</div>
		</div>
		<div class='control_panel'>
			<div class ='control_button'></div>
			<div class ='control_button'></div>
			<div class ='control_button'></div>
			<div class ='control_button'></div>
		</div>	
	</div>
	<h1> 대한민국 사계절</h1>
</body>
</html>