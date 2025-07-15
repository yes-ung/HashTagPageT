package teamproject.boardPost.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import teamproject.boardPost.service.BoardPostVO;
import teamproject.common.Criteria;

@Mapper
public interface BoardPostMapper {
	public List<?> selectBoardPostList(Criteria criteria); // 전체조회 
	public int selectBoardPostListTotCnt(Criteria criteria); // 총 개수 구하기
	public BoardPostVO selectBoardPost(String boardPostId);               // 상세조회
	public int insert(BoardPostVO boardPostVO);                // 추가 
	public int update(BoardPostVO boardPostVO);                // 수정 
	public int delete(String postId);					//삭제
}
