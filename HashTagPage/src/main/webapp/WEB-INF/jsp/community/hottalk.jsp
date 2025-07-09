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
    <link rel="stylesheet" href="/css/02community-hottalk.css" />
</head>

<body>
    <div class="page">
        <jsp:include page="/common/header.jsp" />
        <main>
            <div class="community-hottalk-container">
                <div class="community-hottalk-sidebar-box">
                    <div class="community-hottalk-title">
                        <h1>뜨거운논쟁</h1>
                    </div>
                    <div class="community-hottalk-sidebar-img">
                        <img src="/img/pagelogo1-2.png" alt="로고">
                    </div>
                </div>
                <div class="community-hottalk-divider"></div> <!-- 선만 별도로 -->
                <div class="community-hottalk-content pl1">

                    <div class="community-hottalk-main">
                        <div class="community-hottalk-main-box">
                            <div class="community-hottalk-main-body">
                                <!-- 메인 질문 부분 -->
                                <!-- 추후 질문 관련 이미지로 사용했음 좋겠음 -->
                                <div class="debate-box">
                                    <div class="question-circle">
                                        <p>원피스는 세상에 있다?</p>
                                    </div>
                                    <div class="vote-options">
                                        <div class="option blue">
                                            <span class="percent">12%</span>
                                            <button>있다</button>
                                        </div>
                                        <div class="option red">
                                            <span class="percent">88%</span>
                                            <button>없다</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- 댓글 입력창 -->
                                <div class="comment-box3"><input type="text"> <button>입력</button></div>
                                <!-- 댓글창 -->
                                <div class="comments">
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
                                            <input type="text" placeholder="답글을 입력하세요" />
                                            <button>등록</button>
                                        </div>
                                    </div>
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
                                            <input type="text" placeholder="답글을 입력하세요" />
                                            <button>등록</button>
                                        </div>
                                    </div>
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
                                            <input type="text" placeholder="답글을 입력하세요" />
                                            <button>등록</button>
                                        </div>
                                    </div>
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
                                            <input type="text" placeholder="답글을 입력하세요" />
                                            <button>등록</button>
                                        </div>
                                    </div>
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
                                            <input type="text" placeholder="답글을 입력하세요" />
                                            <button>등록</button>
                                        </div>
                                    </div>
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
                                            <input type="text" placeholder="답글을 입력하세요" />
                                            <button>등록</button>
                                        </div>
                                    </div>
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
                                            <input type="text" placeholder="답글을 입력하세요" />
                                            <button>등록</button>
                                        </div>
                                    </div>
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
                                            <input type="text" placeholder="답글을 입력하세요" />
                                            <button>등록</button>
                                        </div>
                                    </div>
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
                                            <input type="text" placeholder="답글을 입력하세요" />
                                            <button>등록</button>
                                        </div>
                                    </div>
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
                                            <input type="text" placeholder="답글을 입력하세요" />
                                            <button>등록</button>
                                        </div>
                                    </div>
                                    <div class="comment-box2">
                                        <div class="comment-header2">
                                            <div class="nickname2">
                                                <p>눈야임마</p>
                                            </div>
                                            <div class="vote2-buttons">
                                                <button class="vote2 up">
                                                    👍 <span>3</span>
                                                </button>
                                                <button class="vote2 down">
                                                    👎 <span></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="comment-content2">
                                            하하하하핳ㅎㅎ하하ㅏㅎㅎ핳
                                            <div class="comment-reply-btn">
                                                <div class="comment-reply-btn1"><button>수정</button></div>
                                                <div class="comment-reply-btn2"><button>삭제</button></div>
                                            </div>
                                        </div>
                                        <div class="comment-footer2">
                                            <span class="time">09:32:20</span>
                                            <button class="reply-btn2">↳ 덧글</button>
                                            <button class="vote3 siren">🚨</button>
                                        </div>
                                        <!-- 덧글 입력창  -->
                                        <div class="comment-box3 reply-input" style="display: none;">
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
                    </div>

                    <!-- 덧글 창 js-->
                    <script>
                        document.addEventListener("DOMContentLoaded", () => {
                            const replyButtons = document.querySelectorAll(".reply-btn2");

                            replyButtons.forEach((btn) => {
                                btn.addEventListener("click", () => {
                                    const commentBox = btn.closest(".comment-box2");
                                    const replyInput = commentBox.querySelector(".reply-input");

                                    if (replyInput.style.display === "none" || !replyInput.style.display) {
                                        replyInput.style.display = "flex"; // 열기
                                    } else {
                                        replyInput.style.display = "none"; // 닫기
                                    }
                                });
                            });
                        });
                    </script>

                    <!-- 더보기 창 -->
                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            const allComments = document.querySelectorAll(".comment-box2");
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
                                    allComments[i].style.display = "flex";
                                    nextCount++;
                                }
                                shownCount += nextCount;

                                // 다 보여줬으면 버튼 숨김
                                if (shownCount >= allComments.length) {
                                    moreBtn.style.display = "none";
                                }
                            });
                        });
                    </script>
                </div>
            </div>
        </main>
        <jsp:include page="/common/footer.jsp" />
    </div>
   
</body>

</html>