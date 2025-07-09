<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="/css/00_style.css" />
    <link rel="stylesheet" href="/css/login.css" />
  </head>
  <body>
  <jsp:include page="/common/header.jsp" />
  <div class="login-body">
  
   <div class="login-container">
      <h2>로그인</h2>
      <form id="addForm" name="addForm" 
      action="/loginProcess.do" method="post">
      <input type="text" id="userId" name="userId" placeholder="사용자 아이디" />
      <input type="password" id="userPw" name="userPw" placeholder="비밀번호" />

      <div class="options">
        <label><input type="checkbox" /> 아이디저장</label>
        <label><input type="checkbox" /> 자동로그인</label>
      </div>
      
      <div class="login-box">
      <button type="submit" class="login-btn">로그인</button>
      </div>
      </form>
      <div class="links">
        <a href="#">아이디찾기</a> | <a href="#">비밀번호찾기</a> |
        <a href="<c:url value='/hashtagpage/signup.do' />">회원가입</a>
      </div>
      
      <div class="social-icons">
        <img
          src="https://upload.wikimedia.org/wikipedia/commons/8/83/KakaoTalk_logo.svg"
          alt="카카오 로그인"
        />
        <img
          src="https://upload.wikimedia.org/wikipedia/commons/2/2d/Naver_Logotype.svg"
          alt="네이버 로그인"
        />
        <img
          src="https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg"
          alt="구글 로그인"
        />
      </div>
    </div>
  <c:if test="${not empty msg}">
  <script>
    alert("${msg}");
  </script>
</c:if>
<c:if test="${not empty msg2}">
  <script>
    alert("${msg2}");
  </script>
</c:if>
  </div>
   
    <jsp:include page="/common/footer.jsp" />
    
    <!-- jquery -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- 유효성체크 플러그인 -->
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.21.0/dist/jquery.validate.min.js"></script>
<script src="/js/users/users-validation-config.js"></script>
  </body>
</html>
