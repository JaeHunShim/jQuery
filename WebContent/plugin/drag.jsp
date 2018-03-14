<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Insert title here</title>
<style>
  #draggable { width: 150px; height: 150px; padding: 0.5em; color:red;}
  </style>
<script>
  $( function() {
    $( "#draggable" ).draggable();
  } );
  </script>
</head>
<body>
<div id="draggable" class="ui-widget-content">
  <p>Drag me around</p>
</div>
</body>
</html>