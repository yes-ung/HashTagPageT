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
    <link rel="stylesheet" href="/css/01freewrite.css" />
    <style type="text/css">
    .replycomment{padding: 0.2rem 0.3rem; background: var(--bg-subtle); border-radius: 6px;}
    .add{ display: flex; justify-content: center; margin: 30px 0; }
    
    </style>
</head>

<body>
  <div class="page">
    <jsp:include page="/common/header.jsp" />
    <main>
      <div class="freewrite-container ml1">
        <!-- 게시글 제목 -->
        <div class="freewrite-title-header">
          <div class="freewrite-title-box">
            <div class="freewrite-title">
              <div class="title">
                <h3>${board.boardPostTitle}</h3>
              </div>
            </div>
            <div class="title-info">
              <div class="date">
                <span>${board.boardPostCreatedAt}</span>
              </div>

              <div class="nick">
                [${board.userName}]
              </div>
              <div class="plus">
                👍${board.likeCount}
              </div>

              <div class="view">
                👁️${board.boardPostViews}
              </div>
            </div>
          </div>

          <!-- 게시판 목록보기 -->
          <div class="recommended-listback">
            <button id="listbackBtn" onclick="goBack()">뒤로가기</button>
          </div>
        </div>

        <!-- 게시글 본문 -->
        <div class="quote">
          ${board.boardPostContent}

        </div>
        <div class="add" >
          <div class="vote-buttons">
            <button class="vote up">&nbsp;게시글 추천👍 <span></span></button>
          </div>
        </div>
        <div class="comment-area">
          <!-- 댓글 입력창 -->
          <div class="comment-box comment-input">
            <input type="text" placeholder="댓글을 입력하세요" />
            <button>등록</button>
          </div>

          <!-- 댓글 목록 -->
          <div class="user-comments mt4">
            <!-- 반복 -->
         <c:forEach var="data" items="${comment}">
            
            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>${data.userName}</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span></span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">${data.boardCommentContent}</span>
                <div class="comment-btn">
                  <div class="commenteditor">
                    <button class="updata">수정</button>
                  </div>
                  <div class="commenteditor">
                    <button class="delete">삭제</button>
                  </div>
                </div>
              </div>

              <div class="comment-footer">
                <div class="input-timebox">
                  <span class="input-time">${data.boardCommentCreatedAt}</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input ml1 mr1" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
              <!-- 대댓글 출력  -->
              <div class="reply-list">
              <c:forEach var="data2" items="${data.replyComment}">
              <div class="replycomment">${data2.replyUserName} : ${data2.replyContent}</div>
              </c:forEach>
              </div>
            </div>
          </c:forEach>

          
              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>
            <!-- 더보기 버튼 -->
            <div class="comment-more-btn-wrapper">
              <button id="commentMoreBtn">더보기</button>
            </div>


          </div>



        </div>






      </div>

    </main>
   <jsp:include page="/common/footer.jsp" />
  </div>

  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const allComments = document.querySelectorAll(".comments-repeat");
      const moreBtn = document.getElementById("commentMoreBtn");

      let shownCount = 5;

      // 처음엔 5개만 보여주고 나머진 숨김
      allComments.forEach((comment, index) => {
        if (index >= shownCount) {
          comment.style.display = "none";
        }
      });

      // 더보기 버튼 클릭 시 다음 5개 표시
      moreBtn.addEventListener("click", () => {
        let nextCount = 0;
        for (let i = shownCount; i < allComments.length && nextCount < 5; i++) {
          // ✅ 핵심 수정: 원래 CSS에서 지정된 디스플레이 속성을 따르게 하기 위해 빈 값
          allComments[i].style.display = "";
          nextCount++;
        }
        shownCount += nextCount;

        if (shownCount >= allComments.length) {
          moreBtn.style.display = "none";
        }
      });
    });
  </script>

  <!-- 덧글 창 js-->
  <script>
    document.addEventListener("DOMContentLoaded", () => {
      const replyButtons = document.querySelectorAll(".reply-btn");

      replyButtons.forEach((btn) => {
        btn.addEventListener("click", () => {
          const replyInput =
            btn.closest(".comment-footer").nextElementSibling;

          if (
            replyInput &&
            (replyInput.style.display === "none" || !replyInput.style.display)
          ) {
            replyInput.style.display = "flex"; // 열기
          } else if (replyInput) {
            replyInput.style.display = "none"; // 닫기
          }
        });
      });
    });
  </script>
   <!-- 뒤로 가기 추가-->
  <script>
  function goBack() {
	    history.back(); // 또는 history.go(-1);
	  }
  </script>




 
</body>

</html>