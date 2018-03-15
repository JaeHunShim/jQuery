<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../jquery-ui-1.12.1.custom/jquery-ui.min.css">
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<title>Insert title here</title>
<script>
// 클릭시  해당 p태그가 열림
	$(document).ready(function(){
		$('#accordion').accordion();
	});
</script>
</head>
<body>
<div id= 'accordion'>
	<h2> 첫번째  </h2>
	<div>
		<p>JQuery Ui Accordion1</p>
	</div>
	<h2> 두번째  </h2>
	<div>
		<p>JQuery Ui Accordion2</p>
	</div>
	<h2> 세번째  </h2>
	<div>
		<p>JQuery Ui Accordion3</p>
	</div>
	<h2> 네번째  </h2>
	<div>
		<p>JQuery Ui Accordion4</p>
	</div>
</div>
</body>
</html>