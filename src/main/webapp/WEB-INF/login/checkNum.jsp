<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">   

 <link
        href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
        rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	*{
		 font-family: 'Jua';
	}
</style>
</head>
<body>
<div class="randomNumCheck">
<input type="hidden" class ="num" value="${num }">
인증번호: <input type="text" class="randomNum">
<button class="numCheck">확인</button>
</div>
<div class="updatePass" style="display: none;">
비밀번호: <input type="password" class="pass">
<button>확인</button>
</div>
</body>
<script type="text/javascript">
	$(function () {
		$(".numCheck").click(function () {
			var num=$(".num").val();
			var randomNum=$(".randomNum").val();
			alert(num);
			
			if(num==randomNum){
				$(".randomNumCheck").hide();
				$(".updatePass").show();
				
			}else{
				alert("인증번호가 틀립니다");
				$(".randomNum").val("");
			}
			
		})
	
	})
</script>
</html>
