<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/00_style.css" />
    <link rel="stylesheet" href="/css/06myinquiry.css" />
    <style type="text/css">
    a, a:visited, a:hover, a:active {
  color: inherit ;           /* 부모 요소의 색상 상속 */
  text-decoration: none;    /* 밑줄 제거 */
  cursor: pointer;          /* 마우스 포인터 */
  }   
    </style>
    
</head>

<body>
    <div class="page">
        <jsp:include page="/common/header.jsp" />
        <main>
            <div class="myinquiry-container">
                <div class="myinquiry-sidebar-box">
                    <ul class="myinquiry-sidebar">
                        <li><a href="<c:url value='/hashtagpage/mypageupdate.do' />" >내 정보</a></li>
                        <li><a href="<c:url value='/hashtagpage/mypagecase.do' />" >보관함</a></li>
                        <li><a href="<c:url value='/hashtagpage/mypagePurchase.do' />" >구매내역</a></li>
                        <li><a href="<c:url value='/hashtagpage/mypageWritten.do' />" >내가 쓴 글</a></li>
                        <li><a href="<c:url value='/hashtagpage/mypageInquiry.do' />" >개인문의</a></li>
                    </ul>
                </div>
                <div class="myinquiry-divider"></div> <!-- 선만 별도로 -->
                <div class="myinquiry-content pl1">
                    <div class="myinquiry-title">
                        <h1>마이페이지</h1>
                        <div class="myinquiry-subtitle">
                            <h4>개인문의 하기</h4>
                            <p></p>
                            <div class="myinquiry-main">
                                <div class="myinquiry-main-box">
                                    <div class="myinquiry-main-body">
                                        <form action="text" class="myinquiry-form">
                                            <textarea placeholder="500자 이내 입력 바랍니다."></textarea>
                                            <div class="myinquiry-btn-area">
                                                <button type="submit">전송</button>
                                            </div>
                                        </form>
                                    
                                        <div class="myinquirysend-table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                <th class="title-col"><a href="#">[문의] 결제내역 문의 드립니다.</a></th>
                                                            
                                                </tr>   
                                                <tr>
                                                <td class="date-col">06-24</td>
                                                </tr>
                                                
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                       <div class="myinquirysend-table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                <th class="title-col"><a href="#">[문의] 쿠폰관련 문의 드립니다.</a></th>
                                                </tr>   
                                                <tr>
                                                <td class="date-col">06-24</td>
                                                </tr>
                                                 
                                            </tbody>
                                        </table>
                                    </div>
                                       <div class="myinquirysend-table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                <th class="title-col"><a href="#">[문의] 결제내역 문의 드립니다.쿠폰관련 문의 드립니다.</a></th>
                                                            
                                                </tr>   
                                                <tr>
                                                <td class="date-col">06-24</td>
                                                </tr>
                                                
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                        <div class="myinquirysend-table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                <th class="title-col"><a href="#">[문의] 결제내역 문의 드립니다.쿠폰관련 문의 드립니다.</a></th>
                                                            
                                                </tr>   
                                                <tr>
                                                <td class="date-col">06-24</td>
                                                </tr>
                                                
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                        <div class="myinquirysend-table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                <th class="title-col"><a href="#">[문의] 결제내역 문의 드립니다.쿠폰관련 문의 드립니다.</a></th>
                                                            
                                                </tr>   
                                                <tr>
                                                <td class="date-col">06-24</td>
                                                </tr>
                                               
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                        <div class="myinquirysend-table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                <th class="title-col"><a href="#">[문의] 결제내역 문의 드립니다.쿠폰관련 문의 드립니다.</a></th>
                                                            
                                                </tr>   
                                                <tr>
                                                <td class="date-col">06-24</td>
                                                </tr>
                                             
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                        <div class="myinquirysend-table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                <th class="title-col"><a href="#">[문의] 결제내역 문의 드립니다.쿠폰관련 문의 드립니다.</a></th>
                                                            
                                                </tr>   
                                                <tr>
                                                <td class="date-col">06-24</td>
                                                </tr>
                                               
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                        <div class="myinquirysend-table">
                                        <table>
                                            <tbody>
                                                <tr>
                                                <th class="title-col"><a href="#">[문의] 결제내역 문의 드립니다.쿠폰관련 문의 드립니다.</a></th>
                                                            
                                                </tr>   
                                                <tr>
                                                <td class="date-col">06-24</td>
                                                </tr>
                                               
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                    </div>

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
                    </div>
                </div>
        </main>
         <jsp:include page="/common/footer.jsp" />
    </div>
  
</body>

</html>