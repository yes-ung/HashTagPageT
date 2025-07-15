<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>publisherPage</title>
    <link rel="stylesheet" href="/css/00_style.css" />
    <link rel="stylesheet" href="/css/publisher-details.css" />

  </head>
  <body>
    <div class="page">
      <!-- 헤더 -->
      <jsp:include page="/common/simple-header.jsp" />

      <main class="publisher-page">
        <!-- 출판사 프로필 -->
        <section class="publisher mt2">
          <div class="publisher-cover">
            <div class="publisher-image">
              <img src="/img/bookcard21.jpg" alt="" />
            </div>
            <div class="publisher-name"><span>${Publisher.publisherName}</span></div>
          </div>
          <div class="publisher-note mt1">
            <h3>출판사 sns</h3>
            <p>
              공식홈페이지 : <a
                href="${Publisher.publisherUrl}"
                target="_blank"
                rel="noopener noreferrer">
               ${Publisher.publisherUrl}</a>
            </p>
            <p>e-mail : ${Publisher.contactEmail}</p>
          </div>
        </section>

        <!-- 작품 리스트 -->
        <div class="publisher-work">
          <section class="publisherwork-list">
            <h3 class="list-title">출판 작품</h3>
            <!-- 요기 목록 -->
            <ul class="work-list">
            
            
              <li class="work-item mb1">
                <a href="#" class="work-link">
                  <div class="card">
                    <img src="./img/bookcard20.jpg" alt="웹툰1" />
                      <div class="info-container">
                        <p>백수가 너무 유능하다</p>
                        <div class="flex-row">
                          <p>시하</p>
                        <div class="my-wishlist" data-liked="false">🤍</div>
                      </div>
                    </div>
                  </div>
                </a>               
              </li>

              <!-- 반복 -->

              <li class="work-item mb1">
                <a href="#" class="work-link">
                  <div class="card">
                    <img src="./img/bookcard20.jpg" alt="웹툰1" />
                      <div class="info-container">
                        <p>백수가 너무 유능하다</p>
                        <div class="flex-row">
                          <p>시하</p>
                        <div class="my-wishlist" data-liked="false">🤍</div>
                      </div>
                    </div>
                  </div>
                </a>               
              </li>

              <li class="work-item mb1">
                <a href="#" class="work-link">
                  <div class="card">
                    <img src="./img/bookcard20.jpg" alt="웹툰1" />
                      <div class="info-container">
                        <p>백수가 너무 유능하다</p>
                        <div class="flex-row">
                          <p>시하</p>
                        <div class="my-wishlist" data-liked="false">🤍</div>
                      </div>
                    </div>
                  </div>
                </a>               
              </li>

              <li class="work-item mb1">
                <a href="#" class="work-link">
                  <div class="card">
                    <img src="./img/bookcard20.jpg" alt="웹툰1" />
                      <div class="info-container">
                        <p>백수가 너무 유능하다</p>
                        <div class="flex-row">
                          <p>시하</p>
                        <div class="my-wishlist" data-liked="false">🤍</div>
                      </div>
                    </div>
                  </div>
                </a>               
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
          btn.addEventListener("click", (e) => {
            e.stopPropagation(); // 부모 요소 클릭 방지
            e.preventDefault(); // a태그의 이동막기

            const liked = btn.classList.toggle("liked");
            btn.textContent = liked ? "❤️" : "🤍";
          });
        });
      });
    </script>
  </body>
</html>
