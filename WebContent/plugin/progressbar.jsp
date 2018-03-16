<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../jquery-ui-1.12.1.custom/jquery-ui.min.css">
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<title>Progressbar</title>
 <script>
  $( function() {
    $( "#progressbar" ).progressbar({
    	//상태 변화
      value: 90
    });
  } );
  </script>
</head>
<body>
<div id ='progressbar'>

</div>
</body>
</html>