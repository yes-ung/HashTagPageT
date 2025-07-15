package teamproject.boardPost.web;

import java.util.List;

import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import teamproject.boardPost.service.BoardPostService;
import teamproject.boardPost.service.BoardPostVO;
import teamproject.common.Criteria;

@Controller
public class BoardPostController {
	@Autowired
	private BoardPostService boardPostService;
	
	@GetMapping("/boardPost/boardPost.do")
	public String selectBoardPostList(@ModelAttribute Criteria criteria,
			Model model) {
		PaginationInfo paginationInfo=new PaginationInfo();
		paginationInfo.setCurrentPageNo(criteria.getPageIndex());
		paginationInfo.setRecordCountPerPage(criteria.getPageUnit());
		criteria.setFirstIndex(paginationInfo.getFirstRecordIndex());
		List<?> boardPostList=boardPostService.selectBoardPostList(criteria);
		model.addAttribute("boardPostList", boardPostList);
		int totCnt=boardPostService.selectBoardPostListTotCnt(criteria);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);		
		return "boardPost/boardPost_all";
	}
	@GetMapping("/boardPost/addition.do")
	public String createBoardPostView() {
		return "boardPost/add_boardPost";
	}
	
	@PostMapping("/boardPost/add.do")
	public String insert(@ModelAttribute BoardPostVO boardPostVO) {
		boardPostService.insert(boardPostVO);
		return "redirect:/boardPost/boardPost.do";
	}

	@GetMapping("/boardPost/edition.do")
	public String updateBoardPostView(Model model,
			@RequestParam String postId) {
		BoardPostVO boardPostVO=boardPostService.selectBoardPost(postId);
		model.addAttribute("boardPostVO", boardPostVO);
		return "boardPost/update_boardPost";
	}
	@PostMapping("/boardPost/delete.do")
	public String delete(BoardPostVO vo) {
		int result =boardPostService.delete(vo.getPostId());
		return "redirect:/boardPost/boardPost.do";
	}
	@PostMapping("/boardPost/edit.do")
	public String update(BoardPostVO boardPostVO) {
		boardPostService.update(boardPostVO);
		return "redirect:/boardPost/boardPost.do";
	}
}

