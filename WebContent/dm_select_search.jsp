<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = js/jquery-3.3.1.min.js></script>
<title>Insert title here</title>
<script>
	/* 1. 기본 filter 메소드: 특정위치를 찾는 역할을 하고  체이닝까지 할수 있게 해줌    */
	$(document).ready(function(){
		$('h3').filter(function(index){
			return index %3 ==0;;
		}).css({
			backgroundColor:'black',
			color:'white'
		});
	});
	/* 2. 특정 위치의 문서 객체를  선택 , 문서객체 추가(add()) */
	/* 문서 객체 추가 - eq():특정위치에 존재하는  문서객체를 선택한다.first():첫번째에 위치하는 문서 객체를 선택,last(): 마지막에 위치하는 문서객체를 선택 */
	/* 문서 객체 특징 판별 - is():문서객체의 특징을 판별한다. */
	$(document).ready(function(){
		$('h1').eq(0).css('background-color','orange');
		$('h1').eq(-1).css('background-color','red');
		$('h1').eq(1).css('background','green').add('h2').css('color','yellow');
		
		$('h1').each(function(){
			if($(this).is('.select')){
				$(this).css('background','pink');
			}
		});
	});
</script>
<script>
	/* 3. 특정 태그 선택 (find()): 특정태그를 선택한다.*/
	
	var xml = '';
	xml += '<friends>';
	xml +='   <friend>';
	xml +='      <name>재훈</name>';
	xml +='      <language>Java</language>'
	xml +='   </friend>';
	xml +='   <friend>';
	xml +='      <name>영서</name>';
	xml +='      <language>JavaScript</language>'
	xml +='   </friend>';
	xml +='   <friend>';
	xml +='      <name>주한</name>';
	xml +='      <language>C</language>'
	xml +='   </friend>';	
	xml += '</friends>';
	
	 /* $.parseXML : 문자열을 XML로 문서객체로 변경한다. */
	 /* 순서는 xml 객체를 parseXML로  파싱해서 xmlDoc 객체에 담는다 
	 	xml파일에서 friend라는 태그를 반복문을 통해서 모두 찾는다.
	 	this = xmlDoc 객체를 의미하고 find 태그에서 name 과 language 태그의 text를 찾아서 html객체로 만들어 body에 뿌려준다.
	 */
	$(document).ready(function(){
		var xmlDoc = $.parseXML(xml);
		$(xmlDoc).find('friend').each(function(index){
		
		var output = '';
		output += '<div>';
		output +='   <h1>'+$(this).find('name').text()+'</h1>';
		output +='   <p>'+$(this).find('language').text()+'</p>';
		output += '</div>'
		
		document.body.innerHTML +=output;
		});
	});
</script>
</head>
<body>
	<h3> Header-0</h3>
	<h3> Header-1</h3>
	<h3> Header-2</h3>
	<h3> Header-3</h3>
	<h3> Header-4</h3>
	<h3> Header-5</h3>
	
	<h1 class = 'select'>Header-0</h1>
	<h1>Header-1</h1>
	<h2>Header-3</h2>
	<h1 class = 'select'>Header-2</h1>
	<h2>Header-4</h2>
	
</body>
</html>