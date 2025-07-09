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
            <div class="community-freetalk-container">
                <div class="community-freetalk-sidebar-box">
                    <div class="community-freetalk-title">
                        <h1>자유게시판</h1>
                    </div>
                    <div class="community-freetalk-sidebar-img">
                        <img src="/img/pagelogo1-2.png" alt="로고">
                    </div>
                </div>
                <div class="community-freetalk-divider"></div> <!-- 선만 별도로 -->
                <div class="community-freetalk-content pl1">

                    <!-- 본문 내용 -->
                    <div class="community-freetalk-main">
                        <div class="community-freetalk-main-box">
                            <div class="community-freetalk-main-body">
                                <!-- 글쓰기 버튼 -->
                                <div class="written-btn"><button>글쓰기</button></div>
                                <!-- 게시판 리스트 -->
                                <ul class="community-freetalk-list">
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




                </div>
        </main>
       <jsp:include page="/common/footer.jsp" />
    </div>
</body>

</html>
