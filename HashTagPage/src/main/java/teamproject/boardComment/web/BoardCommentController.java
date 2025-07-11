package teamproject.boardComment.web;

import java.util.List;

import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j2;
import teamproject.boardComment.service.BoardCommentService;
import teamproject.boardComment.service.BoardCommentVO;
import teamproject.common.Criteria;

@Log4j2
@Controller
public class BoardCommentController {
	@Autowired
	private BoardCommentService boardCommentService;
	
	@GetMapping("/boardComment/boardComment.do")
	public String selectBoardCommentList(@ModelAttribute Criteria criteria,
			Model model) {
		log.info("테스트");
		PaginationInfo paginationInfo=new PaginationInfo();
		paginationInfo.setCurrentPageNo(criteria.getPageIndex());
		paginationInfo.setRecordCountPerPage(criteria.getPageUnit());
		criteria.setFirstIndex(paginationInfo.getFirstRecordIndex());
		List<?> boardCommentList=boardCommentService.selectBoardCommentList(criteria);
		model.addAttribute("boardCommentList", boardCommentList);
		int totCnt=boardCommentService.selectBoardCommentListTotCnt(criteria);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);	
		log.info("테스트1");
		return "boardComment/boardComment_all";
	}
	@GetMapping("/boardComment/addition.do")
	public String createBoardCommentView() {
		return "boardComment/add_boardComment";
	}
	
	@PostMapping("/boardComment/add.do")
	public String insert(@ModelAttribute BoardCommentVO boardCommentVO) {
		boardCommentService.insert(boardCommentVO);
		return "redirect:/boardComment/boardComment.do";
	}

	@GetMapping("/boardComment/edition.do")
	public String updateBoardCommentView(Model model,
			@RequestParam String boardCommentId) {
		BoardCommentVO boardCommentVO=boardCommentService.selectBoardComment(boardCommentId);
		model.addAttribute("boardCommentVO", boardCommentVO);
		return "boardComment/update_boardComment";
	}
	@PostMapping("/boardComment/delete.do")
	public String delete(BoardCommentVO vo) {
		int result =boardCommentService.delete(vo.getBoardCommentId());
		return "redirect:/boardComment/boardComment.do";
	}
	@PostMapping("/boardComment/edit.do")
	public String update(BoardCommentVO boardCommentVO) {
		boardCommentService.update(boardCommentVO);
		return "redirect:/boardComment/boardComment.do";
	}
}

