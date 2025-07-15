<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="totalPageCount" value="${paginationInfo.totalPageCount > 0 ? paginationInfo.totalPageCount : 1}" />
<c:set var="currentPageNo" value="${paginationInfo.currentPageNo > 0 ? paginationInfo.currentPageNo : 1}" />
<c:set var="visiblePages" value="${paginationInfo.pageSize > 0 ? paginationInfo.pageSize : 10}" />
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
        <form id="listForm" method="get">
        <!-- 컨트롤러로 보낼 페이지번호 -->
	    <input type="hidden" id="pageIndex" name="pageIndex" value="1">
	    </form>
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

                <!-- 본문 내용 -->
                <section class="freetalk-content">
                    <div class="freetalk-subject">
                        <div class="freetalk-subjectbox">
                            <div class="freetalk-subject-body">

                                <!-- 게시판 리스트 -->
                                <ul class="freetalk-list">

                                    <!-- 검색/글쓰기 버튼 -->
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

                                    <!-- 정렬 버튼 -->
                                    <div class="array-btn">
                                        <select class="array-select">
                                            <option value="title">최신순</option>
                                            <option value="content">조회순</option>
                                            <option value="nickname">추천순</option>
                                        </select>
                                    </div>
                                    
                                    
                           <c:if test="${empty boardPostList}">
    					    <li>게시글이 없습니다.</li>
    					    </c:if>
                            <c:forEach var="data" items="${boardPostList}">
    		                   
                                    <!-- 제목 + 댓글 -->
                                    <li class="post-row">
                                        <div class="top-row">
                                            <div class="list-title"><c:out value="${data.boardPostTitle}"/></div>
                                            <div class="list-comment">💬[5]</div>
                                        </div>
                                        <div class="list-nick"><c:out value="${data.userName}"/></div>
                                        <!-- 날짜 + 조회수 + 좋아요 -->
                                        <div class="bottom-row">
                                            <div class="list-date"><c:out value="${data.boardPostCreatedAt}"/></div>
                                            <div class="list-view">👁️<c:out value="${data.boardPostViews}"/></div>
                                            <div class="list-like">👍<c:out value="${data.boardPostListLike}"/></div>
                                        </div>
                                    </li>
                                    </c:forEach>
                                   
                                    
                                    
                                </ul>
                            </div>
                        </div>
                        <!-- 여기: 페이지번호 -->
                        
                        <div class="pagination">
                        <ul class="pagination" id="pagination"></ul>
                            <!-- <ul>
                                <li><a href="#">&laquo;</a></li>
                                이전
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">&raquo;</a></li>
                                다음
                            </ul> -->
                        </div>
                    </div>




                </section>
        </main>
        <jsp:include page="/common/footer.jsp" />
    </div>
    <!-- jquery -->
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <!-- 페이징 라이브러리 -->
		<script src="/js/jquery.twbsPagination.js" type="text/javascript"></script>
 <script type="text/javascript">
	/* 페이지번호 클릭시 전체조회 */
	function fn_egov_link_page(page) {
		/* 현재페이지번호 저장 */
		$("#pageIndex").val(page);
		$("#listForm").attr("action",'<c:out value="/hashtagpage/community/freeWrite.do" />')
					.submit();
	}
	/* 전체조회 */
	function fn_egov_selectList() {
		$("#listForm").attr("action",'<c:out value="/hashtagpage/community/freeWrite.do" />')
					.submit();
	}

</script>
      	<script type="text/javascript">
      	const totalPages = parseInt("${paginationInfo.totalPageCount}") || 1;
        const rawStartPage = parseInt("${paginationInfo.currentPageNo}") || 1;

        // ⚠ 현재 페이지가 전체 페이지보다 크면 마지막 페이지로 보정
        const startPage = rawStartPage > totalPages ? totalPages : rawStartPage;

        const visiblePages = parseInt("${paginationInfo.pageSize}") || 10;
		/* 페이징 처리 */
   		 $('#pagination').twbsPagination({
        totalPages: ${totalPageCount},
        startPage: ${currentPageNo},
        visiblePages: ${visiblePages},
        initiateStartPageClick: false,
        onPageClick: function (event, page) {
            /* 재조회 함수 실행 */
            fn_egov_link_page(page);
        }
    });
</script>   
</body>

</html>