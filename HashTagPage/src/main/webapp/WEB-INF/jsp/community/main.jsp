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
            <div class="community-freetalk-container">
                <div class="community-freetalk-sidebar-box">
                    <ul class="community-freetalk-sidebar">
                        <li><a href="#">자유게시판</a></li>
                        <li><a href="#">뜨거운논쟁</a></li>
                        <li><a href="#">추천 작품</a></li>
                    </ul>
                </div>
                <div class="community-freetalk-divider"></div> <!-- 선만 별도로 -->
                <div class="community-freetalk-content pl5">
                    <div class="community-freetalk-title">
                        <h1>자유게시판</h1>
                        <div class="community-freetalk-main">
                            <div class="community-freetalk-main-box">
                                <div class="community-freetalk-main-body">
                                    <div class="community-freetalk-table">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th class="title-col">[제목]</th>
                                                    <th class="nick-col">[닉네임]</th>
                                                    <th class="date-col">[날짜]</th>
                                                    <th class="view-col">[조회수]</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>

                                                    <td class="title-col"><a href="#">[자유] 오늘은 날씨가 너무 더운데 엄청 시원한 웹툰
                                                            추천있을까여? [5]</a></td>
                                                    <td class="nick-col">와그라노</td>
                                                    <td class="date-col">06-27</td>
                                                    <td class="view-col">5</td>
                                                </tr>
                                            </tbody>
                                            <tbody>
                                                <tr>
                                                    <td class="title-col"><a href="#">[자유] 으이구 진짜 잘한다 잘해</a></td>
                                                    <td class="nick-col">엽떡</td>
                                                    <td class="date-col">06-24</td>
                                                    <td class="view-col">5</td>
                                                </tr>
                                            </tbody>
                                            <tbody>
                                                <tr>
                                                    <td class="title-col"><a href="#">[자유] 이거 너무 재미없음</a></td>
                                                    <td class="nick-col">돈까스</td>
                                                    <td class="date-col">06-24</td>
                                                    <td class="view-col">5</td>
                                                </tr>
                                            </tbody>
                                            <tbody>
                                                <tr>
                                                    <td class="title-col"><a href="#">[자유] ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</a></td>
                                                    <td class="nick-col">불고기피자</td>
                                                    <td class="date-col">06-24</td>
                                                    <td class="view-col">5</td>
                                                </tr>
                                            </tbody>
                                            <tbody>
                                                <tr>
                                                    <td class="title-col"><a href="#">[자유] 오늘은 날씨가 너무 더운데 엄청 시원한 웹툰
                                                            추천있을까여?[5]</a></td>
                                                    <td class="nick-col">짜계치</td>
                                                    <td class="date-col">06-24</td>
                                                    <td class="view-col">5</td>
                                                </tr>
                                            </tbody>
                                            <tbody>
                                                <tr>
                                                    <td class="title-col"><a href="#">[자유] 오늘은 날씨가 너무 더운데 엄청 시원한 웹툰
                                                            추천있을까여?[5]</a></td>
                                                    <td class="nick-col">불닭</td>
                                                    <td class="date-col">06-24</td>
                                                    <td class="view-col">5</td>
                                                </tr>
                                            </tbody>
                                            <tbody>
                                                <tr>
                                                    <td class="title-col"><a href="#">[자유] 오늘은 날씨가 너무 더운데 엄청 시원한 웹툰
                                                            추천있을까여?[5]</a></td>
                                                    <td class="nick-col">와그라노</td>
                                                    <td class="date-col">06-24</td>
                                                    <td class="view-col">5</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="btn-area">
                                        <c:url var="writeUrl" value="/hashtagpage/community/freeWriteSubmit.do" />
                                            <button onclick="location.href='${writeUrl}'">글작성</button>
                                        </div>

                                        <div class="bottom-page-list">
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination">
                                                    <li class="page-item">
                                                        <a class="page-link" href="#" aria-label="Previous">
                                                            <span aria-hidden="true">&laquo;</span>
                                                        </a>
                                                    </li>
                                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                    <li class="page-item">
                                                        <a class="page-link" href="#" aria-label="Next">
                                                            <span aria-hidden="true">&raquo;</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </main>
        <jsp:include page="/common/footer.jsp" />
    </div>

</body>

</html>