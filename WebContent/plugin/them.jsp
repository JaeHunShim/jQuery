<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#box{
		padding:5px;
	}
	#box h1{
		margin:0;
		padding:5px;
		text-align:center;
	}
	button{
		padding:5px;
	}
	.button p{
		margin:0px;
		padding:5px;
		text-aling:center;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = ../js/jquery-3.3.1.min.js></script>
<script src = ../js/jquery.innerfade.js></script>
<script src = ../jquery-ui-1.12.1.custom/jquery-ui.min.js ></script>
<link rel ="stylesheet" href= ../jquery-ui-1.12.1.custom/jquery-ui.structure.min.css>
<link rel ="stylesheet" href= ../jquery-ui-1.12.1.custom/jquery-ui.theme.min.css>
<title>Insert title here</title>
<script>
	//버튼 클릭했을때 ui상태 변화
	$(document).ready(function(){
		//hover()적용
		$('button').hover(function(){
			$(this).addClass('ui-state-hover');
		},function(){
			$(this).removeClass('ui-state-hover');
		});
		
		//click메서드
		$('#button').on('click',function(){
			$(this).toggleClass('ui-state-active')
		});
	});
	
	//버튼을 누를때마다 테마 변경	
	$(document).ready(function(){
		//함수를 선언
		function reset(){
			var resetClass ='ui-corner-all ui-wedget-content box';
			$('#output').attr('class',resetClass);
		}
		reset();
		
		//JQuery Ui button 사용
		$('#radio').buttonset();
		
		//이벤트 연결
		$('button').on('click',function(){
			reset();
		});
		$('#radio > input').change(function(){
			reset();
			$('#output').addClass('ui-state-'+$(this).val());
		});
		
	});
</script>
</head>
<body>
<!-- ui(1) -->
<div id= 'box' class = 'ui-widget-content ui-corner-all'>
	<h1 class ='ui-widget-header ui-corner-all'>JQuery UI</h1>
	<p>요요요요</p>
</div>
<!-- ui(2) -->
<div id= 'button' class= 'box ui-state-default ui-corner-all'>
	<p> 우아아아아아아</p>
</div>
<br>
<!-- button 을 눌렀을때 변화되는 ui -->
<div id = 'radio'>
	<input type ='radio' name='theme' id= 'highlight' value='highlight'/>
	<label for ='highlight'>highlight</label>
	<input type ='radio' name='theme' id= 'error' value='error'/>
	<label for ='error'>error</label>
	<input type ='radio' name='theme' id= 'error-text' value='error-text'/>
	<label for ='error-text'>error-text</label>
	<input type ='radio' name='theme' id= 'disabled' value='disabled'/>
	<label for ='disabled'>disable</label>
	<button>Reset</button>
</div>
<br>
<div id='output'>
	<p>테스트해봅니다</p>
</div>
</body>
</html>