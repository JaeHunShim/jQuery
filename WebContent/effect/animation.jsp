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
	div{
		width:50px;
		height:50px;
		background-color:red;
		position:relative;
	}
</style>
<script>
	//사용자 정의 효과 
 	$(document).ready(function(){
		$('div').hover(function(){
			$(this).animate({
				left:500,
				opacity:0.5
			},'slow');
		},function(){
			$(this).animate({
				left:0
			},'slow')
		});
	});
	//상대적 정의 
	$(document).ready(function(){
		$('div').on('click',function(){
			//변수 선언
			var width = $(this).css('width');
			var height = $(this).css('height');
			//animate()메서드 사용
			$(this).animate({
				width:parseInt(width) +50,
				height:parseInt(height) +50
			},'slow');
			
		});
	});
	//애니메이션 큐 (clearQueue)
	//애니메이션 효과는 계속해서 누적되고 그 누적된것은 Queue에 계속 해서 누적된다. 큐에 있는 내용을 제거 하고 싶다면 
	 $(document).ready(function(){
		$('div').animate({left:'+=60'},2000);
		$('div').animate({width:'+=60'},2000);
		$('div').animate({height:'+=60'},2000);
		
		setInterval(function(){
			//애니메이션 큐 제거
			$('div').clearQueue();
			//효과 메서드 사용(hide를 사용한다구 해서 에니멩션 효과가 없어지는것은 아니다.)
			$('div').hide();
		},3000);
	});
	//에니메이션 정지 (stop())
	/* $(document).ready(function(){
		//이벤트 연결
		$('button').on('click',function(){
			//변수 선언
			var html = $(this).html();
			var evalText = "$('div')." + html;
			//메소드 실행
			eval(evalText);
		});
	});

	setInterval(function(){
		$('div').animate({
			left:'500'
		},1000).animate({
			left:'0'
		},1000);
	},2000);

	$(document).ready(function(){
		$('div').each(function(index){
			$(this).delay(index * 500).animate({
				left:500
			},'slow');
		});
	});

</script>
</head>
<body>
<div></div><div></div>
<div></div><div></div>
<div></div><div></div>

<button>stop()</button>
<button>stop(true)</button>
<button>stop(false,true)</button>
<button>stop(true,true)</button>
<div></div>

</body>
</html>