<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>$().css() : css 적용</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style type="text/css">
	.red{background-color: red;}
	#box{
		background: red;
		width: 100px;
		padding: 10px;
		
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// 자바 스크립트 방식
		document.getElementById("java").style.background="skyblue";
		
		//addClass 적용
		$("#JSP").addClass("red"); //소대문자 구분 
		
		//css 적용
		//var 변수 = $("선택자").css("속성") => getter 
		//$("선택자"). css("속성","값")         =>setter
		
		//이렇게 하면 ul밑에 li 자식이니까 ul밑 li만
		$("body>ul>li").css("background","orange"); // > 자식 
		$("body>ul>li").css("color","white");
		
		$("#box").click(function() {
		       $("#box").css("width", "+=200").css("height", "+=200");
		});
	});
</script>
</head>
<body>
		<ul>
				<li id="java">java</li>
				<li>WEB</li>
				<ul>
				<li id="JSP">JSP</li>
				<ul>
					<li calss="bg1111">EL</li>
					<li calss="bg1111">JSEL</li>
				</ul>
				<li>SPRING</li>
				</ul>
				<li>ANDROID</li>
		</ul>
		<hr>
		<div id ="box">눌러주세요</div>
</body>
</html>