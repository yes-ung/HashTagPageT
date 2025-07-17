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

        <main class="community-container">
            <aside class="hottalk-side mt2">
                <div class="hottalk-title">
                    <h1>뜨거운논쟁</h1>
                </div>
                <div class="hottalk-logo">
                    <img src="/img/tagchsize.png" alt="로고" />
                </div>
            </aside>

            <div class="hottalk-divider"></div>
            <!-- 선만 별도로 -->

            <section class="hottalk-content mt2">
                <div class="hottalk-subject">
                    <div class="hottalk-subjectbox">
                        <img src="/img/onepice.jpg" alt="원피스" />
                        <p>원피스는 실재한다?</p>
                    </div>
                    <div class="vote-options mt2 mb2">
                        <div class="option">
                            <span class="percent">12%</span>
                            <button class="blue">있다</button>
                        </div>
                        <div class="option">
                            <span class="percent">88%</span>
                            <button class="red">없다</button>
                        </div>
                    </div>
                </div>

                <div class="comment-area">
                    <!-- 댓글 입력창 -->
                    <div class="comment-box comment-input ml1 mr1">
                        <input type="text" placeholder="의견을 입력하세요" />
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
                            <!-- 대댓글 출력  -->
                            <div class="reply-list"></div>
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
                            <div class="comment-reply reply-input ml1 mr1" style="display: none">
                                <input type="text" placeholder="답글을 입력하세요" />
                                <button>등록</button>
                            </div>
                            <!-- 대댓글 출력  -->
                            <div class="reply-list"></div>
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
                            <div class="comment-reply reply-input ml1 mr1" style="display: none">
                                <input type="text" placeholder="답글을 입력하세요" />
                                <button>등록</button>
                            </div>
                            <!-- 대댓글 출력  -->
                            <div class="reply-list"></div>
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
                            <div class="comment-reply reply-input ml1 mr1" style="display: none">
                                <input type="text" placeholder="답글을 입력하세요" />
                                <button>등록</button>
                            </div>
                            <!-- 대댓글 출력  -->
                            <div class="reply-list"></div>
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
                            <div class="comment-reply reply-input ml1 mr1" style="display: none">
                                <input type="text" placeholder="답글을 입력하세요" />
                                <button>등록</button>
                            </div>
                            <!-- 대댓글 출력  -->
                            <div class="reply-list"></div>
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
                            <div class="comment-reply reply-input ml1 mr1" style="display: none">
                                <input type="text" placeholder="답글을 입력하세요" />
                                <button>등록</button>
                            </div>
                            <!-- 대댓글 출력  -->
                            <div class="reply-list"></div>
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
                            <div class="comment-reply reply-input ml1 mr1" style="display: none">
                                <input type="text" placeholder="답글을 입력하세요" />
                                <button>등록</button>
                            </div>
                            <!-- 대댓글 출력  -->
                            <div class="reply-list"></div>
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
                            <div class="comment-reply reply-input ml1 mr1" style="display: none">
                                <input type="text" placeholder="답글을 입력하세요" />
                                <button>등록</button>
                            </div>
                            <!-- 대댓글 출력  -->
                            <div class="reply-list"></div>
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
                            <div class="comment-reply reply-input ml1 mr1" style="display: none">
                                <input type="text" placeholder="답글을 입력하세요" />
                                <button>등록</button>
                            </div>
                            <!-- 대댓글 출력  -->
                            <div class="reply-list"></div>
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
                            <div class="comment-reply reply-input ml1 mr1" style="display: none">
                                <input type="text" placeholder="답글을 입력하세요" />
                                <button>등록</button>
                            </div>
                            <!-- 대댓글 출력  -->
                            <div class="reply-list"></div>
                        </div>


                        <!-- 더보기 버튼 -->
                        <div class="comment-more-btn-wrapper">
                            <button id="commentMoreBtn">더보기</button>
                        </div>
                    </div>



                </div>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const allComments = document.querySelectorAll(".comments-repeat");
            const moreBtn = document.getElementById("commentMoreBtn");

            let shownCount = 4;

            // 처음엔 4개만 보여주고 나머진 숨김
            allComments.forEach((comment, index) => {
                if (index >= shownCount) {
                    comment.style.display = "none";
                }
            });

            // 더보기 버튼 클릭 시 다음 4개 표시
            moreBtn.addEventListener("click", () => {
                let nextCount = 0;
                for (let i = shownCount; i < allComments.length && nextCount < 4; i++) {
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
    </section>
    </main>
    <jsp:include page="/common/footer.jsp" />
    </div>




    <script>
        document.addEventListener("DOMContentLoaded", () => {
            const comments = document.querySelectorAll(".comments-repeat");

            comments.forEach((commentBox) => {
                const replyBtn = commentBox.querySelector(".reply-btn");
                const replyInputBox = commentBox.querySelector(".comment-reply");
                const input = replyInputBox.querySelector("input");
                const submitBtn = replyInputBox.querySelector("button");
                const replyList = commentBox.querySelector(".reply-list");

                // 덧글 버튼 클릭 시 입력창 토글
                replyBtn.addEventListener("click", () => {
                    const isVisible = replyInputBox.style.display === "flex";
                    replyInputBox.style.display = isVisible ? "none" : "flex";
                });

                // 등록 버튼 클릭 시 대댓글 추가
                submitBtn.addEventListener("click", () => {
                    const value = input.value.trim();
                    if (value !== "") {
                        const replyItem = document.createElement("div");
                        replyItem.classList.add("reply-item");
                        replyItem.innerHTML = `<div style="padding: 0.2rem 0.3rem; background: var(--bg-subtle); border-radius: 6px;">닉네임: \${value}</div>`;
                        replyList.appendChild(replyItem);
                        input.value = "";
                    }
                });
            });
        });
    </script>

</body>

</html>