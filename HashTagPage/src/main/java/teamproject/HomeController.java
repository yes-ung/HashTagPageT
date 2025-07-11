/**
 * 
 */
package teamproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import teamproject.book.service.BookService;
import teamproject.book.service.BookVO;
import teamproject.common.Criteria;
import teamproject.episode.service.EpisodeService;
import teamproject.episode.service.EpisodeVO;
import teamproject.publisher.service.PublisherService;
import teamproject.publisher.service.PublisherVO;
import teamproject.series.service.SeriesService;
import teamproject.series.service.SeriesVO;

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
	
	@GetMapping("/home.do")
	public String home(@ModelAttribute Criteria criteria,Model model) {
		List<?> books=bookService.selectTrendList(criteria);
		model.addAttribute("books", books);
		return "webtoon/main";
    }
	@GetMapping("/hashtagpage.do")
	public String home2(@ModelAttribute Criteria criteria,Model model) {
		List<?> books=bookService.selectTrendList(criteria);
		model.addAttribute("books", books);
		return "webtoon/main";
    }
	@GetMapping("/hashtagpage/webtoon.do")
	public String webtoon1(@RequestParam(defaultValue = "") String genre,
			@ModelAttribute Criteria criteria		
	   ,Model model) {
	    model.addAttribute("genre",genre);
	    List<?> books=bookService.selectTrendList(criteria);
		model.addAttribute("books", books);
		return "webtoon/main";
    }
	@GetMapping("/hashtagpage/webtoon/list.do")
	public String webtoon2() {
		return "webtoon/list";
    }
	@GetMapping("/hashtagpage/webtoon/detail.do")
	public String webtoon3() {
		return "webtoon/detail";
    }
	@GetMapping("/hashtagpage/webnovel.do")
	public String webnovel1(@RequestParam(defaultValue = "") String genre,
			@ModelAttribute Criteria criteria
	   ,Model model) {
		 model.addAttribute("genre",genre);
		 List<?> series=seriesService.selectAllSeries();
		 List<?> series2=seriesService.selectGenre10Series(genre);
			model.addAttribute("series", series);
			model.addAttribute("series2",series2);
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
			   Model model) {
		return "webnovel/detail";
    }
	@GetMapping("/hashtagpage/community/freeWrite.do")
	public String community1() {
		 
		return "community/freeWrite";
    }
	@GetMapping("/hashtagpage/community/hottalk.do")
	public String community2() {
		 
		return "community/hottalk";
    }
	@GetMapping("/hashtagpage/community/recommend.do")
	public String community3() {
		 
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
	@GetMapping("/hashtagpage/mypage.do")
	public String mypage() {
		return "modules/mypagecase";
    }
	@GetMapping("/hashtagpage/mypageupdate.do")
	public String mypage1() {
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
	@GetMapping("/hashtagpage/mypageInquiry.do")
	public String mypage4() {
		return "modules/mypageInquiry";
    }
	@GetMapping("/hashtagpage/mypagePurchase.do")
	public String mypage5() {
		return "modules/mypagePurchase";
    }
	@GetMapping("/hashtagpage/mypageWritten.do")
	public String mypage6() {
		return "modules/mypageWritten";
    }
	@GetMapping("/hashtagpage/search.do")
	public String search(@RequestParam(defaultValue = "") String search
			,Model model) {
		model.addAttribute("search",search);
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
	public String authorDetails() {
		return "modules/author-details";
    }
	@GetMapping("/publisher.do")
	public String publisherDetails() {
		return "modules/publisher-details";
    }
	@GetMapping("/unimplemented.do")
	public String unimplemented() {
		return "modules/unimplemented";
    }
	








}
