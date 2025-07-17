/**
 * 
 */
package teamproject;

import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import teamproject.author.service.AuthorService;
import teamproject.author.service.AuthorVO;
import teamproject.boardComment.service.BoardCommentService;
import teamproject.boardPost.service.BoardPostService;
import teamproject.boardPost.service.BoardPostVO;
import teamproject.book.service.BookService;
import teamproject.common.Criteria;
import teamproject.episode.service.EpisodeService;
import teamproject.episode.service.EpisodeVO;
import teamproject.publisher.service.PublisherService;
import teamproject.publisher.service.PublisherVO;
import teamproject.series.service.SeriesService;
import teamproject.series.service.SeriesVO;
import teamproject.users.service.UsersVO;

/**
 * @author user
 * 메인화면: http://localhost:8080
 */
@Controller
public class HomeController {
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private SeriesService seriesService;
	
	@Autowired
	private EpisodeService episodeService;
	
	@Autowired
	private PublisherService publisherService;
	
	@Autowired
	private AuthorService authorService;
	
	@Autowired
	private BoardPostService boardPostService;
	
	@Autowired
	private BoardCommentService boardCommentService;
	
	@GetMapping("/home.do")
	public String home(@ModelAttribute Criteria criteria,Model model) {
		
		return "redirect:/hashtagpage/webtoon.do";
    }
	@GetMapping("/hashtagpage.do")
	public String home2(@ModelAttribute Criteria criteria,Model model) {
		
		return "redirect:/hashtagpage/webtoon.do";
    }
	@GetMapping("/hashtagpage/webtoon.do")
	public String webtoon1(@RequestParam(defaultValue = "") String genre,
			@ModelAttribute Criteria criteria		
	   ,Model model) {
	    model.addAttribute("genre",genre);
	    List<?> series1=seriesService.selectGenre10SeriesToon(genre);
		List<?> series2=seriesService.selectGenre10SeriesToon(genre);
		List<?> series3=seriesService.selectGenre10SeriesToonRandom(genre);
		List<?> series4=seriesService.selectGenre10SeriesToonNew(genre);
		model.addAttribute("series1", series1);
		model.addAttribute("series2",series2);
		model.addAttribute("series3", series3);
		model.addAttribute("series4",series4);
		return "webtoon/main";
    }
	@GetMapping("/hashtagpage/webtoon/list.do")
	public String webtoon2(@RequestParam(defaultValue = "") String seriesId,
			   Model model) {
		SeriesVO series=seriesService.selectSeries(seriesId);
		String publisherId =seriesService.selectPublisherIdBySeries(seriesId);
		PublisherVO publisher=publisherService.selectPublisher(publisherId);
		List<?> episode = episodeService.selectEpisodeBySeriesId(seriesId);
		model.addAttribute("series", series);
		model.addAttribute("publisher",publisher);
		model.addAttribute("episode",episode);
		return "webtoon/list";
    }
	@GetMapping("/hashtagpage/webtoon/detail.do")
	public String webtoon3() {
		return "webtoon/webtoonDetail";
    }
	@GetMapping("/hashtagpage/webnovel.do")
	public String webnovel1(@RequestParam(defaultValue = "") String genre,
			@ModelAttribute Criteria criteria
	   ,Model model) {
		 model.addAttribute("genre",genre);
		 List<?> series1=seriesService.selectGenre10SeriesNovel(genre);
		 List<?> series2=seriesService.selectGenre10SeriesNovel(genre);
		 List<?> series3=seriesService.selectGenre10SeriesNovelRandom(genre);
		 List<?> series4=seriesService.selectGenre10SeriesNovelNew(genre);
			model.addAttribute("series1", series1);
			model.addAttribute("series2",series2);
			model.addAttribute("series3", series3);
			model.addAttribute("series4",series4);
		return "webnovel/main";
    }
	@GetMapping("/hashtagpage/webnovel/list.do")
	public String webnovel2(@RequestParam(defaultValue = "") String seriesId,
			   Model model) {
		SeriesVO series=seriesService.selectSeries(seriesId);
		String publisherId =seriesService.selectPublisherIdBySeries(seriesId);
		PublisherVO publisher=publisherService.selectPublisher(publisherId);
		List<?> episode = episodeService.selectEpisodeBySeriesId(seriesId);
		model.addAttribute("series", series);
		model.addAttribute("publisher",publisher);
		model.addAttribute("episode",episode);
		
		return "webnovel/list";
    }
	@GetMapping("/hashtagpage/webnovel/detail.do")
	public String webnovel3(@RequestParam(defaultValue = "") String seriesId,
			@RequestParam(defaultValue = "") String episodeId,
			   Model model) {
		EpisodeVO episode=episodeService.selectEpisode(seriesId, episodeId);
		List<?> episodelist = episodeService.selectEpisodeBySeriesId(seriesId);
		model.addAttribute("episode", episode);
		model.addAttribute("episodelist",episodelist);
		
		return "webnovel/webnovelDetail";
    }
	@GetMapping("/hashtagpage/community/freeWrite.do")
	public String community1(@ModelAttribute Criteria criteria,
			@RequestParam(defaultValue = "") String searchType,
			Model model) {
		PaginationInfo paginationInfo=new PaginationInfo();
		paginationInfo.setCurrentPageNo(criteria.getPageIndex());
		criteria.setPageUnit(10);
		paginationInfo.setRecordCountPerPage(criteria.getPageUnit());
		criteria.setFirstIndex(paginationInfo.getFirstRecordIndex());
		int totCnt=boardPostService.selectBoardPostListTotCnt(criteria);
		paginationInfo.setTotalRecordCount(totCnt);		
		model.addAttribute("paginationInfo", paginationInfo);
			
		
		List<?> result=boardPostService.selectBoardPostList(criteria);
		
		List<?> boardPostList = result.stream()
			    .filter(s -> "자유게시판".equals(((BoardPostVO) s).getCategoryId()))
			    .collect(Collectors.toList());
		model.addAttribute("boardPostList", boardPostList);

			
		return "community/freeWrite";
	}
	@GetMapping("/hashtagpage/community/freeWriteDetail.do")
	public String community7(@RequestParam(defaultValue = "") String postId,
			   Model model) {
		boardPostService.updateViews(postId);
		BoardPostVO board = boardPostService.selectBoardPost(postId);
		List<?> comment = boardCommentService.selectBoardCommentListByPostId(postId);
		model.addAttribute("board", board);
		model.addAttribute("comment", comment);
		 
		return "community/freeWriteDetail";
    }
	@GetMapping("/hashtagpage/community/hottalk.do")
	public String community2() {
		 
		return "community/hottalk";
    }
	@GetMapping("/hashtagpage/community/recommend.do")
	public String community3(@ModelAttribute Criteria criteria,
			Model model) {
		PaginationInfo paginationInfo=new PaginationInfo();
		paginationInfo.setCurrentPageNo(criteria.getPageIndex());
		criteria.setPageUnit(10);
		paginationInfo.setRecordCountPerPage(criteria.getPageUnit());
		criteria.setFirstIndex(paginationInfo.getFirstRecordIndex());
		int totCnt=boardPostService.selectBoardPostListTotCnt(criteria);
		paginationInfo.setTotalRecordCount(totCnt);		
		model.addAttribute("paginationInfo", paginationInfo);
		
		List<?> result=boardPostService.selectBoardPostList(criteria);
		
		List<?> boardPostList = result.stream()
			    .filter(s -> "작품추천".equals(((BoardPostVO) s).getCategoryId()))
			    .collect(Collectors.toList());
		model.addAttribute("boardPostList", boardPostList);
		 
		return "community/recommend";
    }
	@GetMapping("/hashtagpage/community/list.do")
	public String community4(@RequestParam(defaultValue = "") String genre
			,Model model) {
		 model.addAttribute("genre",genre);
		return "community/list";
    }
	@GetMapping("/hashtagpage/community/detail.do")
	public String community5() {
		return "community/detail";
    }
	@GetMapping("/hashtagpage/cart.do")
	public String cart() {
		return "modules/cart";
    }
	@GetMapping("/hashtagpage/info.do")
	public String info() {
		return "modules/info";
    }
	@GetMapping("/hashtagpage/liked.do")
	public String liked() {
		return "modules/liked";
    }
	@GetMapping("/hashtagpage/login.do")
	public String login() {
		return "modules/login";
    }
	@GetMapping("/hashtagpage/findId.do")
	public String login1() {
		return "modules/findedId";
    }
	@GetMapping("/hashtagpage/findPassword.do")
	public String login2() {
		return "modules/findedPassword";
    }
	@GetMapping("/hashtagpage/resultId.do")
	public String login3() {
		return "modules/resultId";
    }
	@GetMapping("/hashtagpage/mypage.do")
	public String mypage(HttpSession session, Model model) {
		 // 세션에서 로그인 유저 정보 꺼냄
        UsersVO usersVO = (UsersVO) session.getAttribute("usersVO");

        if (usersVO == null) {
            return "redirect:/hashtagpage/login.do";
        }

        // users라는 이름으로 로그인 유저 한 명만 JSP에 전달
        model.addAttribute("users", usersVO);
        return "modules/mypageupdate";
    }
	@GetMapping("/hashtagpage/mypageupdate.do")
    public String myPageUpdate(HttpSession session, Model model) {
        // 세션에서 로그인 유저 정보 꺼냄
        UsersVO usersVO = (UsersVO) session.getAttribute("usersVO");

        if (usersVO == null) {
            return "redirect:/hashtagpage/login.do";
        }

        // users라는 이름으로 로그인 유저 한 명만 JSP에 전달
        model.addAttribute("users", usersVO);
        return "modules/mypageupdate";
    }
	@GetMapping("/hashtagpage/mypagecase.do")
	public String mypage2() {
		return "modules/mypagecase";
    }
	@GetMapping("/hashtagpage/mypageCaseZzim.do")
	public String mypage3() {
		return "modules/mypageCaseZzim";
    }
	@GetMapping("/hashtagpage/mypageCoupon.do")
	public String mypage4() {
		return "modules/mypageCaseCoupon";
    }
	@GetMapping("/hashtagpage/mypageInquiry.do")
	public String mypage5() {
		return "modules/mypageInquiry";
    }
	@GetMapping("/hashtagpage/mypagePurchase.do")
	public String mypage6() {
		return "modules/mypagePurchase";
    }
	@GetMapping("/hashtagpage/mypageWritten.do")
	public String mypage7() {
		return "modules/mypageWritten";
    }
	@GetMapping("/hashtagpage/search.do")
	public String search(@RequestParam(defaultValue = "") String search
			,Model model) {
		List<?> result = seriesService.searchSeriesByAll(search);
		List<?> webNovel = result.stream()
			    .filter(s -> "웹소설".equals(((SeriesVO) s).getCategoryId()))
			    .collect(Collectors.toList());

	 	List<?> webToon = result.stream()
			    .filter(s -> "웹툰".equals(((SeriesVO) s).getCategoryId()))
			    .collect(Collectors.toList());
		model.addAttribute("search",search);
		model.addAttribute("result",result);
		model.addAttribute("webNovel",webNovel);
		model.addAttribute("webToon",webToon);
		return "modules/search";
    }
	@GetMapping("/hashtagpage/signup.do")
	public String signup() {
		return "modules/signup";
    }
	@GetMapping("/hashtagpage/payment.do")
	public String payment() {
		return "modules/payment";
    }
	@GetMapping("/hashtagpage/community/freeWriteSubmit.do")
	public String communityW1() {
		return "community/freeWriteSubmit";
    }
	@GetMapping("/hashtagpage/community/freeWriteUpdate.do")
	public String communityW2() {
		return "community/freeWriteUpdate";
    }
	@GetMapping("/hashtagpage/community/recommendSubmit.do")
	public String communityW3() {
		return "community/recommendSubmit";
    }
	@GetMapping("/hashtagpage/community/recommendUpdate.do")
	public String communityW4() {
		return "community/recommendUpdate";
    }
	
	@GetMapping("/Test.do")
	public String test6() {
		return "test";
    }
	@GetMapping("/author.do")
	public String authorDetails(@RequestParam(defaultValue = "") String authorId
			,Model model) {
		
		AuthorVO author = authorService.selectAuthor(authorId);
		List<?> series=seriesService.searchSeriesByAuthorId(authorId);
		model.addAttribute("author",author);
		model.addAttribute("series",series);
		return "modules/author-details";
    }
	@GetMapping("/publisher.do")
	public String publisherDetails(@RequestParam(defaultValue = "") String publisherId
			,Model model) {
		
		PublisherVO Publisher = publisherService.selectPublisher(publisherId);
		List<?> series=seriesService.searchSeriesByPublisherId(publisherId);
		model.addAttribute("Publisher",Publisher);
		model.addAttribute("series",series);
		return "modules/publisher-details";
    }
	@GetMapping("/unimplemented.do")
	public String unimplemented() {
		return "modules/unimplemented";
    }
	








}
