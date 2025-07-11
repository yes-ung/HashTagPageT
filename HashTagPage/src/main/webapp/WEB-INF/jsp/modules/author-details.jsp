<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>authorPage</title>
    <link rel="stylesheet" href="/css/00_style.css" />
    <link rel="stylesheet" href="css/author-details.css" />
  </head>
  <body>
    <div class="page">
      <!-- 헤더 -->
      <jsp:include page="/common/simple-header.jsp" />

      <main class="author-page">
        <!-- 작가 프로필 -->
        <section class="author mt2">
          <div class="author-cover">
            <div class="author-image">
              <img src="${author.authorDebutDate}" alt="" />
            </div>
            <div class="author-name"><span>${author.authorName}</span></div>
          </div>
          <div class="author-profile">
            <div class="author-history">
              <p>${author.authorBio}</p>             
            </div>
            <div class="author-note">
              <h4>작가 sns</h4>
              <p><a href="https://instagram.com/daedaewon"
                target="_blank" rel="noopener noreferrer">
                인스타 : ${author.snsLink1}</a></p>
              <p>e-mail : ${author.authorEmail}</p>
            </div>
          </div>
        </section>

        <!-- 작품 리스트 -->
        <div class="author-work">
          <section class="authorwork-list">
            <h3 class="list-title">작가 작품</h3>
              <!-- 요기 목록 -->
            <ul class="work-list">
              <li class="work-item mb1">
                <a href="/episode/view/1" class="work-link">
                  <div class="thumb">
                    <img src="./img/episode2.jpg" alt="표지" />
                  </div>
                  <div class="work-info">
                    <div class="work-title">이세계 착각헌터</div>
                    <div class="work-publisher">ab Entertainment</div>
                    <div class="work-sub">
                      내게는 비밀이 있다 그게 뭐냐면...
                    </div>
                  </div>
                </a>
                <div class="my-wishlist" data-liked="false">🤍</div>
              </li>
                <!-- 반복 -->
              <li class="work-item mb1">
                <a href="/episode/view/1" class="work-link">
                  <div class="thumb">
                    <img src="./img/bookcard17.jpg" alt="표지" />
                  </div>
                  <div class="work-info">
                    <div class="work-title">던전 미식가</div>
                    <div class="work-publisher">익시드</div>
                    <div class="work-sub">눈 떠보니 먹보 괴물...</div>
                  </div>
                </a>
                <div class="my-wishlist" data-liked="false">🤍</div>
              </li>
            </ul>
          </section>
        </div>
      </main>

      <!-- 푸터 -->
      <jsp:include page="/common/footer.jsp" />
    </div>
  

      <!-- 찜목록 하트 토글 -->
    <script>
      document.addEventListener("DOMContentLoaded", () => {
        const wishlistButtons = document.querySelectorAll(".my-wishlist");

        wishlistButtons.forEach((btn) => {
          btn.addEventListener("click", () => {
            const liked = btn.classList.toggle("liked");
            btn.textContent = liked ? "❤️" : "🤍";
          });
        });
      });
    </script>
  </body>
</html>
