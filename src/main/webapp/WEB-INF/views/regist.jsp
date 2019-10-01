<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
</head>
<script>
function check() {
  if(ck.title.value == "") {
    alert("제목을 입력해 주세요.");
    ck.title.focus();
    return false;
  }

  else if(ck.writer.value == "") {
    alert("이름을 입력해 주세요.");
    ck.writer.focus();
    return false;
  }
  else return document.getElementById("register_form").submit();
}
</script>

<form method="post" id="register_form" name="ck">
	<body>
		<p>
			<label>제목</label><input type="text" name="title">
		</p>
		<p>
			<label>작성자</label><input type="text" name="writer" size="15">
		</p>
		<label>내용</label>
		<p>
			<textarea rows="15" cols="65" name="content"></textarea>
		<p>
			<button type="button" onclick="check();">등록</button>
</form>
</body>
</html>