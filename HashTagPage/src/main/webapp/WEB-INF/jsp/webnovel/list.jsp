<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>webnovel-series-detail</title>
    <link rel="stylesheet" href="/css/00_style.css" />
    <link rel="stylesheet" href="/css/webnovel-series-detail.css" />
  </head>
  <body>
    <div class="page">
      <jsp:include page="/common/header.jsp" />
     
      <main class="webnovel-series-detail mt4 mb4">
        <div class="series-flex-row">
          <div class="webnovel-series-cover w25 mr4">
            <img src="${series.thumbnailImgUrl}" alt="책 표지" />
          </div>
          <div class="webnovel-series-info w75">
            <h3 class="mb1">${series.seriesTitle}</h3>
            <p class="mb1">✍ ${series.authorId} | 🏷️ ${series.typeId}</p>
            <p class="mb1">📖 총 ${fn:length(episode)}화 | 📚 ${publisher.publisherName}</p>
            <p class="mb1">⭐ 평점 4.9 (13,753명)</p>
            <div class="button-group">
              <a href="/unimplemented.do" class="a-rounded-al mr2">첫 화 보기</a>
              <button class="btn-rounded">찜하기 ❤️</button>
            </div>
          </div>
        </div>

        <div class="book-description mt4">
          <h3 class="mb1">💬 작품 소개</h3>
          
          <!-- 앞 50자 -->
           <p class="description">
             <c:choose>
                 <c:when test="${fn:length(series.seriesDescription) >= 30}">
                   
                         <c:out value="${fn:substring(series.seriesDescription, 0, 30)}" />
                  
                 </c:when>
                 <c:otherwise>
                     
                         <c:out value="${series.seriesDescription}" />
                    
                 </c:otherwise>
             </c:choose>
           </p>
<!-- 51번째부터 뒷부분 전체보기 -->
            <p class="description">
              <c:if test="${fn:length(series.seriesDescription) > 30}">
                
                      <c:out value="${fn:substring(series.seriesDescription, 30, fn:length(series.seriesDescription))}" />
                  
              </c:if>
             </p>

          <button id="loadMore2" class="btn-box mt1">더보기 ⌄</button>
        </div>
        
        
        
        
        
        <!-- 웹노벨 리스트 -->
        <section class="webnovel-episode-list mt5">
          <h3 class="mb1">📖 회차 목록</h3>
          <ul class="episodeContainer">
            <!-- 이 부분은 추후 JSP에서 forEach로 돌릴 것 -->
           <c:forEach var="data" items="${episode}" >
           
           <li class="episode-item mb1">
              <a href="/unimplemented.do" class="episode-link">
                <div class="thumb">
                  <img src="${data.thumbnailImgUrl}" alt="1화 썸네일" />
                </div>
                <div class="episode-number">${data.episodeId}화</div>
                <div class="episode-title">${data.episodeTitle}</div>
              </a>
              <div class="sub-info">무료</div>
            </li>
           
           </c:forEach>
     
          </ul>

          <button id="loadMore" class="btn-rounded mb2">더보기 ⌄</button>
        </section>

        <!-- 리뷰 -->
        <section class="review mt5">
          <h3 class="mb1 pl1">리뷰</h3>
          <div class="rating-info mb2">
            <div class="rating-score mb1">⭐ 4.9</div>
            <span class="rating-score-sub">(13,759명 평가)</span>
          </div>

          <div class="user-rating-stars mb2">
            <div>이 작품을 평가해 주세요!</div>
            <div class="star-rating">
              <span class="star" data-value="1">★</span>
              <span class="star" data-value="2">★</span>
              <span class="star" data-value="3">★</span>
              <span class="star" data-value="4">★</span>
              <span class="star" data-value="5">★</span>
            </div>
            <input type="hidden" id="rating-value" name="rating" value="0" />
            <textarea
              placeholder="리뷰를 10자 이상 입력해주세요."></textarea>
            <div class="review-options">
              <!-- <label><input type="checkbox" /> 스포일러가 있습니다</label> -->
              <button class="btn-rounded">리뷰 등록</button>
            </div>
          </div>

          <!-- 사용자 리뷰 -->
          <div class="review-list mt3">
            <c:forEach var="review" items="${reviewList}">
              <div class="review-item">
                <div class="review-top">
                  <p class="rating mb1">⭐️⭐️⭐️⭐️</p>
                  <div class="meta mb1">${review.userId} · ${review.date}</div>
                </div>

                <p class="comment mb1">${review.comment}</p>

                <div class="review-actions">
                  <button class="btn-text-danger report">🚩 신고</button>
                  <button class="btn-text-danger block">⛔ 차단</button>
                  <button class="btn-text-like like">
                    👍 좋아요 <span>0</span>
                  </button>
                </div>
              </div>
            </c:forEach>

            <!-- 반복 -->
            <c:forEach var="review" items="${reviewList}">
              <div class="review-item">
                <div class="review-top">
                  <p class="rating mb1">⭐️⭐️⭐️⭐️</p>
                  <div class="meta mb1">${review.userId} · ${review.date}</div>
                </div>

                <p class="comment mb1">${review.comment}</p>

                <div class="review-actions">
                  <button class="btn-text-danger report">🚩 신고</button>
                  <button class="btn-text-danger block">⛔ 차단</button>
                  <button class="btn-text-like like">
                    👍 좋아요 <span>0</span>
                  </button>
                </div>
              </div>
            </c:forEach>

          </div>
        </section>
      </main>

      <jsp:include page="/common/footer.jsp" />
    </div>

 

        <!-- 7/9 에피소드 더보기 버튼 생성 조건 추가(class="episode-item"5개 이상일 때만 생성) -->
        <!-- JSP에서는 필요없음 / c:if문으로 변경하면 됨. -->
    <script>
      const episodeList = document.querySelectorAll(".episodeContainer .episode-item");
      const loadMoreBtn = document.getElementById("loadMore");
      const initialVisibleCount = 4;

      // 처음에 일부만 보여줌
      episodeList.forEach((item, index) => {
        if (index >= initialVisibleCount) {
          item.style.display = "none";
        }
      });

      // 전체 아이템 개수 <5면 버튼 숨기기
      if (episodeList.length <= initialVisibleCount) {
        loadMoreBtn.style.display = "none";
      }

      // 버튼 클릭 시 -> 숨겨진 아이템 다 보여주기
      loadMoreBtn.addEventListener("click", ()=> {
        episodeList.forEach(item => {
          item.style.display = "flex";  // 원래 flex였으니 이걸로 보여줌
        });
        loadMoreBtn.style.display = "none"; // 버튼 숨김
      })
    </script>

      <!-- 7/9 작품 소개 더보기 버튼 생성 조건 추가(class="description") 2개 이상일 때만 생성-->

    <script>
      const descriptionList = document.querySelectorAll(".book-description .description");
      const loadMore = document.getElementById("loadMore2");
      const moreCount = 1;
      
      descriptionList.forEach((item, index) => {
        if(index >= moreCount) {
          item.style.display = "none";
        }
      });

      if (descriptionList.length <= moreCount) {
        loadMore.style.display = "none";
      }

      loadMore.addEventListener("click", ()=> {
        descriptionList.forEach(item => {
          item.style.display = "flex";
        });
        loadMore.style.display = "none"; 
      });

    </script>

        <!-- 7/9 별 클릭 이벤트 수정 -->
    <script>
      // user-rating-stars
      const stars = document.querySelectorAll(".star");
      const ratingInput = document.getElementById("rating-value");
      let selectedRating = 0;

      // 별 클릭 이벤트
      stars.forEach((star) => {
        star.addEventListener("click", () => {
          const clickedValue = parseInt(star.dataset.value);
          
          if (selectedRating === clickedValue) {
            selectedRating = 0;
            ratingInput.value = 0;
          } else {
            selectedRating = clickedValue;
            ratingInput.value = selectedRating;
          }
          
          updateStars(selectedRating);
        });



        star.addEventListener("mouseenter", () => {
          const hoverValue = parseInt(star.dataset.value);
          updateStars(hoverValue);
        });

        star.addEventListener("mouseleave", () => {
          updateStars(selectedRating);
        });
      });

      function updateStars(value) {
        stars.forEach((s) => {
          const starValue = parseInt(s.dataset.value);
          if (starValue <= value) {
            s.classList.add("active");
          } else {
            s.classList.remove("active");
          }
        });
      }

    </script>
  </body>
</html>
