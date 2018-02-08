<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = js/jquery-3.3.1.min.js></script>
<style>
 	.first{
		color:red;
	}
	.second{
		color:orange;
	}
	.third{
		color:yellow;
	} 
</style>
<title>Insert title here</title>
<script>
	<!--1.문서 객체의 클래스 속성 추가(addClass()) -->
	 $(document).ready(function(){
		$('h1').addClass(function(index){
			return 'class'+index;
		});
	}); 
	/* 2.문서 객체의 클래스 속성 제거(removeClass()) */
	 $(document).ready(function(){
		$('h2').removeClass('a');
	}); 
	/* 3.속성과 관련된 모든 기능을 수행한다.문서객체의 속성검사(attr()) */
	 $(document).ready(function(){
		var img = $('img').attr('src');
		
		alert(img);
	}); 
	/* 4.문서 객체에 속성추가 */
 	$(document).ready(function(){ 
		/* 첫번째 방법 */
		 $('img').attr('width','250'); 
		/* 두번째 방법 */
		 $('img').attr('width',function(index){
			return (index+1)*100;
		}); 
		/* 세번째 방법 */
		 $('img').attr({
			width:function(index){
				return (index+1)*100
			},
			height:100
		});
	}); 
	/* 문서 객체의 속성 제거 (removeAttr(name)) */
	/* removeClass()를 사용해서 제거해봤는데 다른점은 removeAttr()을 사용하면 클래스 속성자체가 모두 삭제가 된다.removeClass()는 여러개의 클래스 속성중 선택적으로 
		제거할수 있다.*/
	 $(document).ready(function(){
		$('h2').removeAttr('class');
	}); 
	/* 스타일 검사 (css():스타일과 관련된 모든 기능을 수행한다.) */
	 $(document).ready(function(){
		var color = $('h1').css('color');
		alert(color);
	}); 
	/* 문서객체에 스타일 추가 */
	 $(document).ready(function(){ 
		/* 첫번째 방법 */
		 $('h1').css('color','red'); 
		/* 두번째 방법 */
		 var color = ['red','green','blue'];
		$('h1').css('color',function(index){
			return color[index];
		}); 
		/* 세번째 방법 */
		 var color = ['orange','yellow','purple','green'];
		$('h3').css({
			color:function(index){
				return color[index];
			},
			backgroundColor:'black'
		});
	}); 
	/* 문서객체의 내부추가  
		html(): 문서 객체 내부의 글자와 관련딘 모든 기능을 수행 (HTML 태그 인식), 첫번째 문서 객체의 글자를 가져온다
		text(): 문서 객체 내부의 글자와 관련된 모든 기능을 수행 , 선택자로 선택한 모든 문서 객체의 글자를 모두가져온다.
		기능은 같지만 text의 경우는 html태그를 인식하지 못한다.
		/* 첫번째 방법 */
	 $(document).ready(function(){ 
		 $('div').html('<h1> Method </h1>'); /* 태그가 적용되어 Method 글자가 h1태그 크기에 맞추어 출력 */
		 $('div').text('<h2> Method </h2>'); /* 태그를 인식하지 못해서 문자열 그대로 <h2>Method<h2> 그대로 출력 */
	 }); 
		/* 두번째 방법   매개변수를 두개 사용하면 두번째는 원래 있던 HTML의 내용을 의미하게 된다.*/
	 $(document).ready(function(){
		$('div').html(function(index){
			return '<h1>Header -'+index+'</h>';
		});
		$('h1').html(function(index,html){
			return '★'+html+'★';
		});
	}); 
	/* 문서객체 제거 (remove) :frist()를 넣어서 첫번째 요소만 삭제*/
	 $(document).ready(function(){
		$('h1').first().remove();
		$('h3').eq(0).remove();
	});
	/* 문서객체 생성 */
	/* $()로 문서를 객체를 생성.text()이나 html()로 문서객체 내부에 추가하고,appendTo로 어디 안에 넣을지 지정 */
	$(document).ready(function(){
		$('<h1><h1>').text('Hello World..!!').appendTo('body');
		$('<h1>Hello World</h1>').appendTo('body');
		$('<img src = "img/daoinsertLog.png"/>').appendTo('body');
	});	 
	/* 문서객체에 문서객체를 삽입  */
	/* 첫번재 방식 */
	 $(document).ready(function(){
		var h1 = '<h1> ABCDEFG</h1>';
		var h2 = '<h2> ABCDEFG</h2>';
		
		$('body').append(h1,h2,h1,h2);
	}); 
	/* 두번째 방식 */
	 $(document).ready(function(){
		var content =[
			{name:'재훈',address:'수원시 영통구'},
			{name:'재훈1',address:'수원시 영통구1'},
			{name:'재훈2',address:'수원시 영통구2'}
		];
		
		$('div').append(function(index){
			var item = content[index];
			var output ='';
			output += '<h1>' + item.name +'</h1>';
			output += '<h2>' + item.address +'</h2>'
			
			return output;
		});
	}); 
	/* 문서객체 이동 */
	$(document).ready(function(){
		$('img').css('width',250);
		
		var Interval=setInterval(function(){
			$('img').first().appendTo('body');
		},2000);
		clearInterval(Interval);
	}); 
	/* 문서객체 복사 (clone)*/
	$(document).ready(function(){
		$('div').append($('h1').clone());
	});
	 
	
</script>
</head>
<body>
	<h1>Header-0</h1>
	<h1>Header-1</h1>
	<h1>Header-2</h1>
	
	<h2 class='a'>Header-0</h2>
	<h2 class='b'>Header-1</h2>
	<h2 class='c'>Header-2</h2>
		
	<img src ='img/daoinsertLog.png'>
	<img src ='img/datasource error.png'>
	<img src ='img/json으로 데이터뽑아오기.png'>
	<img src ='img/json처리예제.png'>
	<img src ='img/댓글 수정.png'>
	
	<h1 class ='first'>Header-0</h1>
	<h1 class ='second'>Header-1</h1>
	<h1 class ='third'>Header-2</h1>
	
	<h3>Header-0</h3>
	<h3>Header-1</h3>
	<h3>Header-2</h3>
	<h3>Header-3</h3>
	
	<div></div>
	<div></div>
	<div></div>
</body>
</html>