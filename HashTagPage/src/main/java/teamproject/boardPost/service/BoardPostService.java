package teamproject.boardPost.service;

import java.util.List;

import teamproject.common.Criteria;

public interface BoardPostService {
	List<?> selectBoardPostList(Criteria criteria); // 전체조회 
	int selectBoardPostListTotCnt(Criteria criteria); // 총 개수 구하기
	BoardPostVO selectBoardPost(String boardPostId);               // 상세조회
	int insert(BoardPostVO boardPostVO);                // 추가 
	int update(BoardPostVO boardPostVO);                // 수정 
	int delete(String postId);					//삭제
}
