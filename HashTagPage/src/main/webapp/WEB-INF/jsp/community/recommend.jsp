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
    <link rel="stylesheet" href="/css/03community-recommended.css" />
</head>

<body>
  <div class="page">
    <jsp:include page="/common/header.jsp" />
    <main>
      <!-- 본문 사이드 메뉴 -->
      <div class="community-container">
        <aside class="recommended-side mt2">
          <div class="recommended-title">
            <h1>작품 추천</h1>
          </div>
          <div class="recommended-logo">
            <a href="#"><img src="/img/tagchsize.png" alt="로고"></a>
          </div>
        </aside>
        <!-- 선만 별도로 -->
        <div class="recommended-divider"></div>


        <section class="recommended-content">
          <div class="recommended-subject">
            <div class="recommended-subjectbox">
              <div class="recommended-subject-body">

                <!-- 게시판 리스트 -->
                <ul class="recommended-list">

                  <!-- 글쓰기 버튼 -->
                  <div class="recommended-btn">
                    <div class="recommended-search"><input type="text">
                      <select class="search-select">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                        <option value="nickname">닉네임</option>
                      </select>
                    </div>
                    <div class="written-btn">
                      <button>글쓰기</button>
                    </div>
                  </div>

                  <!-- 정렬 버튼 -->
                  <div class="array-btn">
                    <select class="array-select">
                      <option value="title">최신순</option>
                      <option value="content">조회순</option>
                      <option value="nickname">추천순</option>
                    </select>
                  </div>

                  <div class="post-box">
                    <li class="post-row">
                      <div class="recommended-list-img">
                        <img src="/img/img4.jpg" alt="리스트이미지">
                      </div>




                      <div class="recommended-text-box">
                        <!-- 제목 + 댓글 -->
                        <div class="top-row">
                          <div class="list-title">작품추천드립니다!!</div>
                          <div class="list-comment">💬[5]</div>
                        </div>
                        <div class="list-nick">작성자닉넴</div>
                        <!-- 날짜 + 조회수 + 좋아요 -->
                        <div class="bottom-row">
                          <div class="list-date">2025.07.08</div>
                          <div class="list-view">👁️12</div>
                          <div class="list-like">👍4</div>
                        </div>
                      </div>
                    </li>
                    <li class="post-row">
                      <div class="recommended-list-img">
                        <img src="/img/img4.jpg" alt="리스트이미지">
                      </div>

                      <div class="recommended-text-box">
                        <!-- 제목 + 댓글 -->
                        <div class="top-row">
                          <div class="list-title">작품추천드립니다!!</div>
                          <div class="list-comment">💬[5]</div>
                        </div>
                        <div class="list-nick">작성자닉넴</div>
                        <!-- 날짜 + 조회수 + 좋아요 -->
                        <div class="bottom-row">
                          <div class="list-date">2025.07.08</div>
                          <div class="list-view">👁️12</div>
                          <div class="list-like">👍4</div>
                        </div>
                      </div>
                    </li>
                    <li class="post-row">
                      <div class="recommended-list-img">
                        <img src="/img/img4.jpg" alt="리스트이미지">
                      </div>

                      <div class="recommended-text-box">
                        <!-- 제목 + 댓글 -->
                        <div class="top-row">
                          <div class="list-title">작품추천드립니다!!</div>
                          <div class="list-comment">💬[5]</div>
                        </div>
                        <div class="list-nick">작성자닉넴</div>
                        <!-- 날짜 + 조회수 + 좋아요 -->
                        <div class="bottom-row">
                          <div class="list-date">2025.07.08</div>
                          <div class="list-view">👁️12</div>
                          <div class="list-like">👍4</div>
                        </div>
                      </div>
                    </li>
                    <li class="post-row">
                      <div class="recommended-list-img">
                        <img src="/img/img4.jpg" alt="리스트이미지">
                      </div>

                      <div class="recommended-text-box">
                        <!-- 제목 + 댓글 -->
                        <div class="top-row">
                          <div class="list-title">작품추천드립니다!!</div>
                          <div class="list-comment">💬[5]</div>
                        </div>
                        <div class="list-nick">작성자닉넴</div>
                        <!-- 날짜 + 조회수 + 좋아요 -->
                        <div class="bottom-row">
                          <div class="list-date">2025.07.08</div>
                          <div class="list-view">👁️12</div>
                          <div class="list-like">👍4</div>
                        </div>
                      </div>
                    </li>
                    <li class="post-row">
                      <div class="recommended-list-img">
                        <img src="/img/img4.jpg" alt="리스트이미지">
                      </div>

                      <div class="recommended-text-box">
                        <!-- 제목 + 댓글 -->
                        <div class="top-row">
                          <div class="list-title">작품추천드립니다!!</div>
                          <div class="list-comment">💬[5]</div>
                        </div>
                        <div class="list-nick">작성자닉넴</div>
                        <!-- 날짜 + 조회수 + 좋아요 -->
                        <div class="bottom-row">
                          <div class="list-date">2025.07.08</div>
                          <div class="list-view">👁️12</div>
                          <div class="list-like">👍4</div>
                        </div>
                      </div>
                    </li>
                    <li class="post-row">
                      <div class="recommended-list-img">
                        <img src="/img/img4.jpg" alt="리스트이미지">
                      </div>

                      <div class="recommended-text-box">
                        <!-- 제목 + 댓글 -->
                        <div class="top-row">
                          <div class="list-title">작품추천드립니다!!</div>
                          <div class="list-comment">💬[5]</div>
                        </div>
                        <div class="list-nick">작성자닉넴</div>
                        <!-- 날짜 + 조회수 + 좋아요 -->
                        <div class="bottom-row">
                          <div class="list-date">2025.07.08</div>
                          <div class="list-view">👁️12</div>
                          <div class="list-like">👍4</div>
                        </div>
                      </div>
                    </li>
                    <li class="post-row">
                      <div class="recommended-list-img">
                        <img src="/img/img4.jpg" alt="리스트이미지">
                      </div>

                      <div class="recommended-text-box">
                        <!-- 제목 + 댓글 -->
                        <div class="top-row">
                          <div class="list-title">작품추천드립니다!!</div>
                          <div class="list-comment">💬[5]</div>
                        </div>
                        <div class="list-nick">작성자닉넴</div>
                        <!-- 날짜 + 조회수 + 좋아요 -->
                        <div class="bottom-row">
                          <div class="list-date">2025.07.08</div>
                          <div class="list-view">👁️12</div>
                          <div class="list-like">👍4</div>
                        </div>
                      </div>
                    </li>
                    <li class="post-row">
                      <div class="recommended-list-img">
                        <img src="/img/img4.jpg" alt="리스트이미지">
                      </div>

                      <div class="recommended-text-box">
                        <!-- 제목 + 댓글 -->
                        <div class="top-row">
                          <div class="list-title">작품추천드립니다!!</div>
                          <div class="list-comment">💬[5]</div>
                        </div>
                        <div class="list-nick">작성자닉넴</div>
                        <!-- 날짜 + 조회수 + 좋아요 -->
                        <div class="bottom-row">
                          <div class="list-date">2025.07.08</div>
                          <div class="list-view">👁️12</div>
                          <div class="list-like">👍4</div>
                        </div>
                      </div>
                    </li>
                    <li class="post-row">
                      <div class="recommended-list-img">
                        <img src="/img/img4.jpg" alt="리스트이미지">
                      </div>

                      <div class="recommended-text-box">
                        <!-- 제목 + 댓글 -->
                        <div class="top-row">
                          <div class="list-title">작품추천드립니다!!</div>
                          <div class="list-comment">💬[5]</div>
                        </div>
                        <div class="list-nick">작성자닉넴</div>
                        <!-- 날짜 + 조회수 + 좋아요 -->
                        <div class="bottom-row">
                          <div class="list-date">2025.07.08</div>
                          <div class="list-view">👁️12</div>
                          <div class="list-like">👍4</div>
                        </div>
                      </div>
                    </li>
                    <li class="post-row">
                      <div class="recommended-list-img">
                        <img src="/img/img4.jpg" alt="리스트이미지">
                      </div>

                      <div class="recommended-text-box">
                        <!-- 제목 + 댓글 -->
                        <div class="top-row">
                          <div class="list-title">작품추천드립니다!!</div>
                          <div class="list-comment">💬[5]</div>
                        </div>
                        <div class="list-nick">작성자닉넴</div>
                        <!-- 날짜 + 조회수 + 좋아요 -->
                        <div class="bottom-row">
                          <div class="list-date">2025.07.08</div>
                          <div class="list-view">👁️12</div>
                          <div class="list-like">👍4</div>
                        </div>
                      </div>
                    </li>
                  </div>

                </ul>
              </div>
            </div>



          </div>
          <!-- 여기: 페이지번호 -->
          <div class="pagination">
            <ul>
              <li><a href="#">&laquo;</a></li>
              <!-- 이전 -->
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">&raquo;</a></li>
              <!-- 다음 -->
            </ul>
          </div>
      </div>
      </section>
  </div>
  </div>
  </main>
  <jsp:include page="/common/footer.jsp" />
  </div>
 
</body>

</html>
