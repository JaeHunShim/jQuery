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
$( function() {
    // run the currently selected effect
    //button 눌렀을때 다양한 효과들 적용
    function runEffect() {
      // get effect type from
      var selectedEffect = $( "#effectTypes" ).val();
 
      // Most effect types need no options passed by default
      var options = {};
      // some effects have required parameters
      if ( selectedEffect === "scale" ) {
        options = { percent: 50 };
      } else if ( selectedEffect === "size" ) {
        options = { to: { width: 280, height: 185 } };
      }
 
      // Run the effect
      $( "#effect" ).show( selectedEffect, options, 500, callback );
    };
 
    //callback function to bring a hidden box back
    function callback() {
      setTimeout(function() {
        $( "#effect:visible" ).removeAttr( "style" ).fadeOut();
      }, 1000 );
    };
 
    // Set effect from select menu value
    $( "#button" ).on( "click", function() {
      runEffect();
    });
 
    $( "#effect" ).hide();
  } );
  </script>
</head>
<body>
<div class="toggler">
  <div id="effect" class="ui-widget-content ui-corner-all">
    <h3 class="ui-widget-header ui-corner-all">Show</h3>
    <p>
      Etiam libero neque, luctus a, eleifend nec, semper at, lorem. Sed pede. Nulla lorem metus, adipiscing ut, luctus sed, hendrerit vitae, mi.
    </p>
  </div>
</div>
 
<select name="effects" id="effectTypes">
  <option value="blind">Blind</option>
  <option value="bounce">Bounce</option>
  <option value="clip">Clip</option>
  <option value="drop">Drop</option>
  <option value="explode">Explode</option>
  <option value="fade">Fade</option>
  <option value="fold">Fold</option>
  <option value="highlight">Highlight</option>
  <option value="puff">Puff</option>
  <option value="pulsate">Pulsate</option>
  <option value="scale">Scale</option>
  <option value="shake">Shake</option>
  <option value="size">Size</option>
  <option value="slide">Slide</option>
</select>
 
<button id="button" class="ui-state-default ui-corner-all">Run Effect</button>
 
</body>
</html>