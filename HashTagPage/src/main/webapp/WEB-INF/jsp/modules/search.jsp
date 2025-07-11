<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>검색 결과 | #PAGE</title>
  <link rel="stylesheet" href="/css/00_style.css" />
  <link rel="stylesheet" href="/css/search.css">
</head>
<body>
  <div class="page">
    <!-- 세컨 헤더 -->
    <jsp:include page="/common/simple-header.jsp" />

  <main class="search-page">
    <!-- 검색 바 -->
    <div class="search-header">
      <div class="tag-bar mb1">
        <button href="#"><img src="/img/hashtagp.png" alt="썸네일"></button>
        <input type="text" placeholder="#을 눌러 검색하세요!" class="search-input mb2">
      </div>
      
      
      <div class="search-bar">     
      <div class="nowtag mb2">
        <p>🔥 #Page 인기 태그:</p>
        <button href="#" class="float-text">#헌터</button>
        <button href="#" class="float-text">#착각물</button>
        <button href="#" class="float-text">#망함</button>
        <button href="#" class="float-text">#조별과제</button>
        <button href="#" class="float-text">#좀비</button>
      </div>
      <div class="search-tag">
        <div class="p-font">
          <p>👉 궁금한 태그를 눌러보세요!</p>     
        </div>
        <div class="btn-text">
          <button class="btext">#hashTagPage</button>
          <button class="btext">#엘롯기</button>
          <button class="btext">#먼치킨</button>
          <button class="btext">#마법은어떻게쓰나요</button>
          <button class="btext">#현생챙겨</button>
        </div>
       </div>      
      </div>
    </div>

    <!-- 검색 결과 요약 -->
    <section class="search-summary">
      <p><strong>“백작”</strong>에 대한 검색결과 <span class="result-count">총 284건</span></p>
      <div class="search-tabs">
        <button class="active">전체<span>(21건)</span></button>
        <button>NOVEL<span>(1건)</span></button>
        <button>COMIX<span>(20건)</span></button>
      </div>
    </section>

    <!-- 검색 결과 리스트 -->
    <section class="search-results">
      <ul class="result-list">
        <li class="result-card">
          <img src="/img/episode2.jpg" alt="썸네일">
          <div class="result-info">
            <p class="title highlight">백작가의 망나니가 되었다</p>
            <p class="meta">웹툰 · <span>유려한</span> · <span>청어람</span></p>
            <p class="desc">이세계의 재혼으로 갑작스레 동생이 생긴 장강 그룹의 후계자...</p>
          </div>
        </li>

        <!-- 반복 -->

        <li class="result-card">
          <img src="/img/episode1.jpg" alt="썸네일">
          <div class="result-info">
            <p class="title">백작가의 독공 천재</p>
            <p class="meta">웹소설 · <span>탐구생</span> · <span>카카오</span></p>
            <p class="desc">무공을 잃은 낙오자에서 독공으로 각성한 천재의 성장기!</p>
          </div>
        </li>
       
        <li class="result-card">
          <img src="/img/episode1.jpg" alt="썸네일">
          <div class="result-info">
            <p class="title">백작가의 독공 천재</p>
            <p class="meta">웹소설 · <span>탐구생</span> · <span>카카오</span></p>
            <p class="desc">무공을 잃은 낙오자에서 독공으로 각성한 천재의 성장기!</p>
          </div>
        </li>

        <li class="result-card">
          <img src="/img/episode1.jpg" alt="썸네일">
          <div class="result-info">
            <p class="title">백작가의 독공 천재</p>
            <p class="meta">웹소설 · <span>탐구생</span> · <span>카카오</span></p>
            <p class="desc">무공을 잃은 낙오자에서 독공으로 각성한 천재의 성장기!</p>
          </div>
        </li>

        <li class="result-card">
          <img src="/img/episode1.jpg" alt="썸네일">
          <div class="result-info">
            <p class="title">백작가의 독공 천재</p>
            <p class="meta">웹소설 · <span>탐구생</span> · <span>카카오</span></p>
            <p class="desc">무공을 잃은 낙오자에서 독공으로 각성한 천재의 성장기!</p>
          </div>
        </li>

        <li class="result-card">
          <img src="/img/episode1.jpg" alt="썸네일">
          <div class="result-info">
            <p class="title">백작가의 독공 천재</p>
            <p class="meta">웹소설 · <span>탐구생</span> · <span>카카오</span></p>
            <p class="desc">무공을 잃은 낙오자에서 독공으로 각성한 천재의 성장기!</p>
          </div>
        </li>

        <li class="result-card">
          <img src="/img/episode1.jpg" alt="썸네일">
          <div class="result-info">
            <p class="title">백작가의 독공 천재</p>
            <p class="meta">웹소설 · <span>탐구생</span> · <span>카카오</span></p>
            <p class="desc">무공을 잃은 낙오자에서 독공으로 각성한 천재의 성장기!</p>
          </div>
        </li>

        <li class="result-card">
          <img src="/img/episode1.jpg" alt="썸네일">
          <div class="result-info">
            <p class="title">백작가의 독공 천재</p>
            <p class="meta">웹소설 · <span>탐구생</span> · <span>카카오</span></p>
            <p class="desc">무공을 잃은 낙오자에서 독공으로 각성한 천재의 성장기!</p>
          </div>
        </li>

        <li class="result-card">
          <img src="/img/episode1.jpg" alt="썸네일">
          <div class="result-info">
            <p class="title">백작가의 독공 천재</p>
            <p class="meta">웹소설 · <span>탐구생</span> · <span>카카오</span></p>
            <p class="desc">무공을 잃은 낙오자에서 독공으로 각성한 천재의 성장기!</p>
          </div>
        </li>

        <li class="result-card">
          <img src="/img/episode1.jpg" alt="썸네일">
          <div class="result-info">
            <p class="title">백작가의 독공 천재</p>
            <p class="meta">웹소설 · <span>탐구생</span> · <span>카카오</span></p>
            <p class="desc">무공을 잃은 낙오자에서 독공으로 각성한 천재의 성장기!</p>
          </div>
        </li>

      </ul>
    </section>
  </main>
<jsp:include page="/common/footer.jsp" />
</div>

<script>
  const tabButtons = document.querySelectorAll('.search-tabs button');

  tabButtons.forEach((btn) => {
    btn.addEventListener('click', function () {
      // 1. 모든 버튼에서 active 제거
      tabButtons.forEach((b) => b.classList.remove('active'));

      // 2. 클릭한 버튼에 active 추가
      this.classList.add('active');
    });
  });
</script>


</body>
</html>
