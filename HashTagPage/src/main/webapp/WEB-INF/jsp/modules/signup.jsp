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
<jsp:include page="/common/header.jsp" />

<div class="signup-body">

 <div class="signup-container">
    <h2>무료 회원가입</h2>
     <form id="addForm" name="addForm"
                        action="/register/addition.do"
                        method="post"
                        >
      <input type="text" id="userName" name="userName" placeholder="사용자 이름"  />
      <input type="text" id="userId" name="userId" placeholder="사용자 아이디"  />
      <input type="email" id="userEmail" name="userEmail" placeholder="이메일 주소"  />
      <input type="text" id="userPw" name="userPw" placeholder="비밀번호"  />
      <input type="text" id="reuserPw" name="reuserPw" placeholder="비밀번호 확인"  />
      
       <div class="options">
        <label><input type="checkbox" /> 서비스이용약관(필수)에 동의합니다.</label>
        <label><input type="checkbox" /> 개인정보 보호정책(필수)에 동의합니다.</label> 
        <label><input type="checkbox" /> #PAGE 소식, 혜택안내 등(선택)에 동의합니다.</label>
      </div>
      
      <div class="sign">
      <button type="submit" class="sign-button" >가입하기</button>
      </div>
    </form>

    <div class="login-link">
      이미 계정이 있으신가요? <a href="<c:url value='/hashtagpage/login.do' />">로그인</a>
    </div>
  </div>

</div>

  <jsp:include page="/common/footer.jsp" />
  
  



  
</body>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- 유효성체크 플러그인 -->
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.21.0/dist/jquery.validate.min.js"></script>
<script src="/js/users/users-validation-config.js"></script>
</html>
