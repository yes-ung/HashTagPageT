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
    <link rel="stylesheet" href="/css/01community-freetalk.css" />
</head>

<body>
    <div class="page">
        <jsp:include page="/common/header.jsp" />
       <main>
            <!-- 본문 사이드 메뉴 -->
            <div class="community-container">
                <aside class="freetalk-side mt2">
                    <div class="freetalk-title">
                        <h1>자유게시판</h1>
                    </div>
                    <div class="freetalk-logo">
                        <a href="#"><img src="/img/tagchsize.png" alt="로고"></a>
                    </div>
                </aside>
                <!-- 선만 별도로 -->
                <div class="freetalk-divider"></div>


                <section class="freetalk-content">

                    <!-- 본문 내용 -->
                    <div class="freetalk-subject">
                        <div class="freetalk-subjectbox">
                            <div class="freetalk-subject-body">

                                <!-- 게시판 리스트 -->
                                <ul class="freetalk-list">

                                    <!-- 글쓰기 버튼 -->
                                    <div class="freetalk-btn">
                                        <div class="freetalk-search"><input type="text">
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
                                    <li class="post-row">

                                        <!-- 제목 + 댓글 -->
                                        <div class="top-row">
                                            <div class="list-title">오늘 날씨가 진짜 너무 덥다ㅏㅏ오늘 날씨가 진짜 너무 덥다ㅏㅏ</div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick">구구까까</div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date">2025.07.08</div>
                                            <div class="list-view">👁️102</div>
                                            <div class="list-like">👍3</div>
                                        </div>

                                    </li>
                                    <li class="post-row">

                                        <!-- 제목 + 댓글 -->
                                        <div class="top-row">
                                            <div class="list-title">오늘 날씨가 진짜 너무 덥다ㅏㅏ오늘 날씨가 진짜 너무 덥다ㅏㅏ</div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick">구구까까</div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date">2025.07.08</div>
                                            <div class="list-view">👁️102</div>
                                            <div class="list-like">👍3</div>
                                        </div>

                                    </li>
                                    <li class="post-row">

                                        <!-- 제목 + 댓글 -->
                                        <div class="top-row">
                                            <div class="list-title">오밥뭐 오밥뭐 오밥뭐 오밥뭐 오밥뭐 오밥뭐 오밥뭐 오밥뭐</div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick">구구까까</div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date">2025.07.08</div>
                                            <div class="list-view">👁️102</div>
                                            <div class="list-like">👍3</div>
                                        </div>

                                    </li>
                                    <li class="post-row">

                                        <!-- 제목 + 댓글 -->
                                        <div class="top-row">
                                            <div class="list-title">오늘 날씨가 진짜 너무 덥다ㅏㅏ</div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick">구구까까</div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date">2025.07.08</div>
                                            <div class="list-view">👁️102</div>
                                            <div class="list-like">👍3</div>
                                        </div>

                                    </li>
                                    <li class="post-row">

                                        <!-- 제목 + 댓글 -->
                                        <div class="top-row">
                                            <div class="list-title">오늘 날씨가 진짜 너무 덥다ㅏㅏ오늘 날씨가 오늘 날씨가 진짜 너무 덥다ㅏㅏ진짜 너무
                                                덥다ㅏㅏ</div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick">구구까까</div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date">2025.07.08</div>
                                            <div class="list-view">👁️102</div>
                                            <div class="list-like">👍3</div>
                                        </div>

                                    </li>
                                    <li class="post-row">

                                        <!-- 제목 + 댓글 -->
                                        <div class="top-row">
                                            <div class="list-title">오늘 날씨가 진짜 너무 덥다ㅏㅏㅏ</div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick">구구까까</div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date">2025.07.08</div>
                                            <div class="list-view">👁️102</div>
                                            <div class="list-like">👍3</div>
                                        </div>

                                    </li>
                                    <li class="post-row">

                                        <!-- 제목 + 댓글 -->
                                        <div class="top-row">
                                            <div class="list-title">오늘 날씨가 진짜 너무 덥다ㅏㅏ</div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick">구구까까</div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date">2025.07.08</div>
                                            <div class="list-view">👁️102</div>
                                            <div class="list-like">👍3</div>
                                        </div>

                                    </li>
                                    <li class="post-row">

                                        <!-- 제목 + 댓글 -->
                                        <div class="top-row">
                                            <div class="list-title">오늘 날씨가 진짜 너무 덥다ㅏㅏ</div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick">구구까까</div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date">2025.07.08</div>
                                            <div class="list-view">👁️102</div>
                                            <div class="list-like">👍3</div>
                                        </div>

                                    </li>
                                    <li class="post-row">

                                        <!-- 제목 + 댓글 -->
                                        <div class="top-row">
                                            <div class="list-title">오늘 날씨가 진짜 너무 덥다ㅏㅏ</div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick">구구까까</div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date">2025.07.08</div>
                                            <div class="list-view">👁️102</div>
                                            <div class="list-like">👍3</div>
                                        </div>

                                    </li>
                                    <li class="post-row">

                                        <!-- 제목 + 댓글 -->
                                        <div class="top-row">
                                            <div class="list-title">오늘 날씨가 진짜 너무 덥다ㅏㅏ</div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick">구구까까</div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date">2025.07.08</div>
                                            <div class="list-view">👁️102</div>
                                            <div class="list-like">👍3</div>
                                        </div>

                                    </li>
                                </ul>
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
        </main>
       <jsp:include page="/common/footer.jsp" />
    </div>
</body>

</html>
