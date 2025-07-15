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
                <h3>제목: 자유게시판 게시글 조회 페이지</h3>
              </div>
            </div>
            <div class="title-info">
              <div class="date">
                <span>2025-06-31</span>
              </div>

              <div class="nick">
                [작성자]
              </div>
              <div class="plus">
                <button>👍</button>15
              </div>

              <div class="view">
                👁️1,134
              </div>
            </div>
          </div>

          <!-- 게시판 목록보기 -->
          <div class="recommended-listback">
            <button id="listbackBtn">뒤로가기</button>
          </div>
        </div>

        <!-- 게시글 본문 -->
        <div class="quote">
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!
          님들아 이거 요번에 나온 웹툰인데 재밌는거같아서 추천드림 !!


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
            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input ml1 mr1" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <!-- 삭제 : 반복 -->
            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

              <!-- 대댓글 입력창  -->
              <div class="comment-reply reply-input" style="display: none">
                <input type="text" placeholder="답글을 입력하세요" />
                <button>등록</button>
              </div>
            </div>


            <div class="comments-repeat pb2">
              <div class="comment-header">
                <div class="user-nickname">
                  <p>눈야임마</p>
                </div>
                <div class="vote-buttons">
                  <button class="vote up">👍 <span>3</span></button>
                  <button class="vote down">👎 <span></span></button>
                </div>
              </div>
              <div class="comment-body">
                <span class="comment-text">하하하하핳ㅎㅎ하하ㅏㅎㅎ핳</span>
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
                  <span class="input-time">09:32:20</span>
                  <button class="reply-btn ml2">↳ 덧글</button>
                </div>
                <button class="report mr2">🚨</button>
              </div>

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




 
</body>

</html>