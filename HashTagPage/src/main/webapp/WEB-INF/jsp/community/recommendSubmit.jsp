<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>board-recommend-submit</title>
    <link rel="stylesheet" href="/css/00_style.css" />
    <link rel="stylesheet" href="/css/board-recommend-submit.css" />
  </head>
  <body>
    <div class="page">
      <jsp:include page="/common/simple-header.jsp" />

      <main class="recommend-page mt4">
        <!-- 글쓰기 폼 위에 삽입 -->
        <div class="work-search-box mb2">
          <label for="work-search">추천 작품 검색</label>
          <input
            type="text"
            id="work-search"
            placeholder="작품명을 입력하세요"
          />
          <div id="work-search-result" class="search-result-box"></div>
        </div>

        <!-- 선택된 작품 정보 -->
        <div
          id="selected-work"
          class="selected-work-box mb2"
          style="display: none"
        >
          <img src="" alt="썸네일" class="work-thumbnail" />
          <div class="work-info">
            <p class="work-title">작품명</p>
            <p class="work-author">작가명</p>
          </div>
          <button type="button" id="clear-selection" class="btn-clear">
            X
          </button>
          <input type="hidden" name="workId" value="" />
        </div>

        <!-- 셀렉박스 카테고리 선택 시 해당 게시판으로 등록 -->
        <form
          action="/board/write.do"
          method="post"
          enctype="multipart/form-data"
        >
          <!-- 게시판 카테고리 탭 -->
          <div class="write-category-select mb2">
            <label for="category">게시판 종류:</label>
            <select name="category" id="category">
              <option value="recommend" selected>작품 추천</option>
              <option value="free">자유게시판</option>
            </select>
          </div>

          <!-- 글쓰기 폼 -->
          <div class="write-form">
            <input
              type="text"
              name="title"
              placeholder="제목을 입력하세요"
              class="write-title"
            />
            <textarea
              placeholder="내용을 입력하세요"
              rows="18"
              class="write-content"
            ></textarea>
            <div class="file-upload">
              <label for="image-upload">이미지 첨부</label>
              <input type="file" id="image-upload" accept="image/*" />
            </div>
            <div class="write-buttons">
              <button type="submit" class="btn-rounded submit">등록</button>
              <button type="reset" class="btn-rounded cancel" onclick="history.back();">취소</button>
            </div>
          </div>
        </form>
      </main>

      <jsp:include page="/common/footer.jsp" />
    </div>

    <script>
      // 임시 작품 데이터
      const works = [
        {
          id: "1",
          title: "백수가 너무 유능하다",
          author: "시하",
          thumbnail: "/img/bookcard26.jpg",
        },
        {
          id: "2",
          title: "축구 천재인 거 나만 모름",
          author: "시작의바다",
          thumbnail: "/img/bookcard21.jpg",
        },
        {
          id: "3",
          title: "고인물 스트라이커",
          author: "홀본",
          thumbnail: "/img/bookcard20.jpg",
        },
      ];

      document
        .getElementById("clear-selection")
        .addEventListener("click", () => {
          // 정보 초기화
          selectedWork.style.display = "none";
          document.querySelector("#selected-work .work-title").textContent = "";
          document.querySelector("#selected-work .work-author").textContent =
            "";
          document.querySelector("#selected-work img").src = "";
          document.querySelector("#selected-work input[name='workId']").value =
            "";
          input.value = "";
          input.focus(); // 포커스 다시 이동
        });

      const input = document.getElementById("work-search");
      const resultBox = document.getElementById("work-search-result");
      const selectedWork = document.getElementById("selected-work");

      input.addEventListener("input", function () {
        const keyword = this.value.trim().toLowerCase();
        resultBox.innerHTML = "";

        if (keyword.length === 0) {
          resultBox.style.display = "none";
          return;
        }

        const filtered = works.filter((w) =>
          w.title.toLowerCase().includes(keyword)
        );
        if (filtered.length > 0) {
          filtered.forEach((w) => {
            const div = document.createElement("div");
            div.textContent = `${w.title} - ${w.author}`;
            div.addEventListener("click", () => {
              // 선택 시
              document.querySelector("#selected-work .work-title").textContent =
                w.title;
              document.querySelector(
                "#selected-work .work-author"
              ).textContent = w.author;
              document.querySelector("#selected-work img").src = w.thumbnail;
              document.querySelector(
                "#selected-work input[name='workId']"
              ).value = w.id;
              selectedWork.style.display = "flex";
              resultBox.style.display = "none";
              input.value = w.title;
            });
            resultBox.appendChild(div);
          });
          resultBox.style.display = "block";
        } else {
          resultBox.style.display = "none";
        }
      });
    </script>

    <script>
      // 페이지 이동 로직
      const categorySelect = document.getElementById("category");
      let previousValue = categorySelect.value; // 처음 값 저장

      categorySelect.addEventListener("focus", function () {
        previousValue = this.value;
      });

      categorySelect.addEventListener("change", function () {
        const selected = this.value;

        if (selected === "free") {
          const confirmMove = confirm(
            "자유 게시판으로 이동할까요? 작성 중인 내용은 저장되지 않습니다."
          );
          if (confirmMove) {
            window.location.href = "/board-freewrite-submit.html";
          } else {
            // ❗ 사용자가 취소했을 경우 이전 값으로 되돌림!
            this.value = previousValue;
          }
        }
      });
    </script>

  </body>
</html>
