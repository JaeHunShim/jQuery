<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = js/jquery-3.3.1.min.js></script>
<title>Insert title here</title>
<style>
	.reverse {
		background:green;
		color:white;
	}
	.reverse1{
		background:pink;
		color:green;
	}
	#context{
		margin:5px; padding:3px;
		border:3px solid black;
		border-radius:10px;
	}
	.inner{
		width:100px;
		height:100px;
		background:red;
	}
	.typing{
		border:1px solid pink;
		
	}
</style>
<script>
 	// .on(): 이벤트를 연결하는 부분 
	//	여기서의 this는  이벤트가 발생한 객체를 의미한다.
	// 첫번째 방법 
	 $(document).ready(function(){
		// 이벤트를 연결한다. 
		$('h1').on('click',function(event){
			$(this).html(function(index,html){
				return html+'★';
			});
		});
		// 이벤트를 연결한다. 
		$('h1').on({
			mouseenter:function(){
				$(this).addClass('reverse');
			},
			mouseleave:function(){
				$(this).removeClass('reverse');
			}
		});
	}); 
	// 간단하게 이벤트를 연결하는 방법(여러가지 함수를 제공한다. ) 
	// hover() : mouseenter,mouseleave 이벤트를 동시에 제공한다. 
	// off(): 이벤트를 한번만 실행 
	$(document).ready(function(){
		//이벤트 연결
		$('h2').hover(function(){
			$(this).addClass('reverse1');
		},
		function(){
			$(this).removeClass('reverse1');
			$(this).off();
		});	
	}); 
	// 매개변수 context 
	// context는 selector가 적용하는 범위를 한정한다. 즉 여기서는 div태그 안의 h1태그와p태그 안의 내용을같이 출력할수 있다.
	$(document).ready(function(){
		//이벤트를 연결 합니다.
		$('div').on('click',function(){
			//변수 선언
			var header = $('h1',this).text();
			var paragraph = $('p',this).text();
			//출력
			alert(header+'\n'+paragraph);
		});
	}); 
	// 이벤트 강제 발생  trigger()
	 $(document).ready(function(){
		//이벤트 연결
		$('#header').on('click',function(){
			$(this).html(function(index,html){
				return html+'★';
			});
		});
		// 3마다 하나씩 늘리는 
		var Interval = setInterval(function(){
			$('#header').last().trigger('click');
		},3000);
		clearInterval(Interval);
	}); 
	// 기본이벤트와 이벤트 전달을 막는 함수(preventDefault,stopPropagation) return false를 하면 같은 기능을 할수 있다.
	$(document).ready(function(){
		$('h1,a').on('click',function(event){
			$(this).css('background-color','red');
		 	event.stopPropagation();
			event.preventDefault();
		});
	}); 
	// 이벤트 한정범위 
	// delegate방식  두번재 매개변수는 selector역할을 한다. 즉 여기서는 wrap을 클릭했을때 h1이 selector가 된다.라는 의미로 해석 
	//	그래서 여기서의 this는  wrap이 아니라 h1이 된다.
	$(document).ready(function(){
		//이벤트 연결
		$('#wrap').on('click','h1',function(){
			var length = $('h1').length;
			var target = $(this).html();
			$('#wrap').append('<h1>'+length+'-'+target+'</h1>');
			//이벤트 연결 제거 
			$('#wrap').off('click','h1');
		});
	});
	
	$(document).ready(function(){
		//이벤트 연결
		$('h1').on('click',function(){
			var length = $('h1').length;
			var target = $(this).html();
			$('#wrap').append('<h1>'+length+'-'+target+'</h1>');
		});
	});
	//마우스 이벤트
	//가장 많이 사용하는것은 mouseenter,mouseleave,click 이벤트를 많이 쓰이고 이중에 전에 사용했던 mouseenter를 사용해봄
	$(document).ready(function(){
		$('.inner').mouseenter(function(){
			$('body').append('<h2>mouseenter<h2>');
		});
	});
	//키보드 이벤트
	//keyup:키보드 땔때 발생하는 이벤트
	$(document).ready(function(){
		$('textarea').keyup(function(){
			//글자수 구하기
			var inputLength = $(this).val().length;
			var remain = 150-inputLength;
			//문서 객체에 입력
			$('#remain').html(remain);
			//글자수 오버 했을때 색깔변경
			if(remain >= 0){
				$('#remain').css('color','green');
			}else{
				$('#remain').css('color','red');
			}
		});
	});
	//윈도우 이벤트 중에 scroll이벤트 사용해서 무한 스크롤 만들어보기
	$(document).ready(function(){
		//스크롤 이벤트 연결 
		$(window).scroll(function(){
			//필요한 변수를 구한다.
			var scrollHeight = $(window).scrollTop()+$(window).height();
			var documentHeight = $(document).height();
			//스크롤의 높이와 문서의 높이가 같아질때 처리
			if(scrollHeight == documentHeight){
				for(var i =0; i<10; i++){
					$('<h1>gogogo</h1>').appendTo('body');
				}
			}
		});
	});
	$(document).ready(function(){
		for(var i =0; i<20; i++){
			$('body').append('<h2>Infinity Scroll</h1>');
		}
	})
	//입력양식 이벤트 (1)
	$(document).ready(function(){
		$('#my-form').submit('click',function(event){
			var name = $('#name').val();
			var password =$('#password').val();
			
			alert(name+':'+password);
			
			event.preventDefault();
		});
	}); 
	// 입력양식 이벤트 (2) change 이벤트 사용
	$(document).ready(function(){
		$('#all-check').change(function(){
			if(this.checked){
				$('#check-item').children().prop('checked',true);
			}else{
				$('#check-item').children().prop('checked',false);
			}
		});
	});
</script>
</head>
<body>
	<h1>Header-01</h1>
	<h1>Header-02</h1>
	<h1>Header-03</h1>
	<h2>Header-04</h2>
	<h2>Header-05</h2>
	<h2>Header-06</h2>
	<div id = context>
		<h1>Header-01</h1>
		<p>paragraph</p>
	</div>
	<div id = context>
		<h1>Header-02</h1>
		<p>paragraph</p>
	</div>
	<div id = context>
		<h1>Header-03</h1>
		<p>paragraph</p>
	</div>
	<h1 id ='header'>Start</h1>
	<h1 id ='header'>Start</h1>
	
	<h1><a href ='http://www.naver.com'>naver</a></h1>
	
	<div id='wrap'>
		<h1>Header</h1>
	</div>
	<div class = 'outer'>
		<div class = 'inner'>
		</div>
	</div>
	<div class='typing'>
		<p>지금내 상태는</p>
		<h1 id = 'remain'> 150</h1>
		<textarea cols='70' rows ='5'></textarea>
	</div>
	<form id = 'my-form'>
		<table>
			<tr>
				<td>이름</td>
				<td><input type = 'text' name = 'name' id = 'name'></td>
			</tr>
			<tr>
				<td>비밀버호</td>
				<td><input type = 'password' name = 'password' id = 'password'></td>
			</tr>
		</table>
		<input type = 'submit' value ='제출'>
	</form>
	
	<input type = 'checkbox' id = 'all-check'/>
	<label>All</label>
	<div id = 'check-item'>
		<input type = 'checkbox'/>
		<label>A Option</label>
		<input type = 'checkbox'/>
		<label>B Option</label>
		<input type = 'checkbox'/>
		<label>C Option</label>
		
	</div>
</body>
</html>