<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Document</title>
  <link rel="stylesheet" href="/css/00_style.css" />
  <link rel="stylesheet" href="/css/signup.css" />
</head>
<body>

<div class="signup-body">
    <a href="/"
        ><div class="signup-logo"><img src="/img/샵page.png" alt="page" /></div
      ></a>
  <div class="signup-container">
    <h2>무료 회원가입</h2>
    <form id="addForm" name="addForm"
                        action="/register/addition.do"
                        method="post">
      <input type="text" id="userName" name="userName" placeholder="사용자 이름" required />
      <input type="text" id="userId" name="userId" placeholder="아이디" required />
      <input type="email" id="userEmail" name="userEmail" placeholder="이메일 주소" required />
      <input type="password" id="userPw" name="userPw" placeholder="비밀번호" required />
      <input type="password" id="reuserPw" name="reuserPw" placeholder="비밀번호 확인" required />
       <div class="options">
        <label><input type="checkbox" /> 서비스이용약관(필수)에 동의합니다.</label>
        <label><input type="checkbox" /> 개인정보 보호정책(필수)에 동의합니다.</label>
        <label><input type="checkbox" /> #PAGE 소식, 혜택안내 등(선택)에 동의합니다.</label>
      </div>
      <button type="submit">가입하기</button>
    </form>

    <div class="login-link">
      이미 계정이 있으신가요? <a href="<c:url value='/hashtagpage/login.do' />">로그인</a>
    </div>
  </div>
  </div>
  
</body>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 유효성체크 플러그인 -->
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.21.0/dist/jquery.validate.min.js"></script>
<script src="/js/users/users-validation-config.js"></script>
</html>
