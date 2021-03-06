<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE>
<html>
<head>
<title>글수정</title>
</head>
<script>
	function check() {
		if (mf.title.value == "") {
			alert("제목을 입력해 주세요.");
			mf.title.focus();
			return false;
		}

		else if (mf.writer.value == "") {
			alert("이름을 입력해 주세요.");
			mf.writer.focus();
			return false;
		} else
			return document.getElementById("modify_form").submit();
	}
</script>
<body>
	글 수 정 페 이 지
	<form action="modify" method="post" id="modify_form" name="mf">
		<body>
			<p>
				<label>글번호</label> <input type="text" name="bno"
					value="${boardVO.bno}" readonly="readonly">
			</p>
			<p>
				<label>제목</label><input type="text" name="title"
					value="${boardVO.title}" style="background-color: #B0E0E6;">
			</p>
			<p>
				<label>작성자</label> <input type="text" name="writer" size="15"
					value="${boardVO.writer}" readonly="readonly">
			</p>
			<label>내용</label>
			<textarea name=content rows="10" cols="70"
				style="background-color: #B0E0E6;">${boardVO.content}</textarea>
			<br>
			<button type="button" onclick="check()">완료</button>
		</body>
	</form>
</html>