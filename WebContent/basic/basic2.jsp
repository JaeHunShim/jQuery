<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = js/jquery-3.3.1.min.js></script>
<title>Insert title here</title>
<style>
	.high-light-0{
		background-color:yellow;
	}
	.high-light-1{
		background-color:red;
	}
	.high-light-2{
		background-color:orange;
	}
	.high-light-3{
		background-color:green;
	}
	.high-light-4{
		background-color:blue;
	}
</style>
<script>
	<!-- 3.4 필터 선택자 -->
	/* : 기호를 포함하는 선택자를 필터 선택자라고 하는데 type속성에 따라서 문서 객체를 선택할수 있다. */
	
	/* 3.4.1 입력필더 선택자 */
		$(document).ready(function(){
			setTimeout(function(){
				var value = $('select>option:selected').val();
				
				alert(value);
			},5000);	
		});
	$(document).ready(function(){
		setTimeout(function(){
			var value1 = $('input:input').val();
			$('input:focus').css('background-color','green');
			alert(value1)
		},6000);
	});
	/* 3.4.2 위치 필터 선택자 */
	$(document).ready(function(){
		$('tr:odd').css('background-color','red');
		$('tr:even').css('background-color','blue');
		$('tr:first').css('background-color','green');
	});
	/* 4.배열 관리  */
	$(document).ready(function(){
		var array = [
			{name:'naver', link:'http://naver.com'},
			{name:'daum', link:'http://daum.com'},
			{name:'nate', link:'http://nate.com'},
			{name:'w3school', link:'https://www.w3schools.com/'}
		];
		$.each(array,function(index,item){
			//변수 선언
			 output ='';
			//문자열 만들기
			output += '<a href = "'+ item.link +'">';
			output += '<h1>' +item.name+'</h1>'
			output += '</a>'
			
			//집어넣기
			document.body.innerHTML += output;
		});
	});
	/* 5. JQuery 배열관리 */
	$(document).ready(function(){
		
		$('h1').each(function(index,item){
			$(this).addClass('high-light-'+index);
		});
	});
	/* 6. 객체 확장($.(extend()) */
	/* 자바스크립트에서는 이런식으로 빈 객체를 생성하고 이후에  새속성을 이런식으로 추가했다.*/
	$(document).ready(function(){
		var object ={}
		object.name = 'jaehun';
		object.gender = 'man';
		object.address ='서울시 ';
		object.age =36;
		
		var output ='';
		
		$.each(object,function(key,value){
			output += key +":"+value+"\n";
		});
		alert(output)
	});
	/* $.extend()를 사용하면 extend의 두번째 매개변수에 입력한 객체의 속성이 object 객체에 합쳐진 것을 볼수 있음.  */

	$(document).ready(function(){
		var object ={name : 'jaehun'};
		
		$.extend(object,{
			gender :'men',
			address:'서울시',
			age :36
		});
		$.each(object,function(key,value){
			output += key +":"+value+"\n";
		});
		alert(output);
	});
</script>
</head>
<body>
	<select>
		<option>Apple</option>
		<option>Banana</option>
		<option>Tomato</option>
		<option>Grape</option>
	</select>
	<br>
	<label for = name>이름</label>
	<input type ='text' name= 'name' id= 'name'><br>
	<label for = 'password'>비밀번호</label>
	<input type ='password' name='password' id = 'password'><br>
	<label for = 'file'>파일</label>
	<input type = 'file' name= 'file' id = 'file'>
	<br><br>
	<table>
		<tr>
			<th>이름</th>
			<th>혈액형</th>
			<th>지역</th>
		</tr>
		<tr>
			<td>강민수</td>
			<td>에이비형</td>
			<td>서울시 송파구1</td>
		</tr>
		<tr>
			<td>강민수1</td>
			<td>오형</td>
			<td>서울시 송파구2</td>
		</tr>
		<tr>
			<td>강민수2</td>
			<td>에이형</td>
			<td>서울시 송파구3</td>
		</tr>
		<tr>
			<td>강민수3</td>
			<td>비형</td>
			<td>서울시 송파구4</td>
		</tr>
		<tr>
			<td>강민수4</td>
			<td>에이비형</td>
			<td>서울시 송파구5</td>
		</tr>
		<tr>
			<td>강민수5</td>
			<td>에이비형</td>
			<td>서울시 송파구6</td>
		</tr>
	</table>
	
	<h1>item -0</h1>
	<h1>item -1</h1>
	<h1>item -2</h1>
	<h1>item -3</h1>
	<h1>item -4</h1>
</body>
</html>